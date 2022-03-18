@Timeout(Duration(hours: 1))
import 'dart:io';

import 'package:crypton/crypton.dart';
import 'package:icure_dart_sdk/api.dart';
import 'package:icure_dart_sdk/crypto/crypto.dart';
import 'package:icure_dart_sdk/extended_api/data_owner_resolver.dart';
import 'package:icure_dart_sdk/util/binary_utils.dart';
import "package:test/test.dart";
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

import '../util/test_utils.dart';

Future<E> retry<E>(Future<E> Function () action, {int trials = 5, int delay = 100}) async {
  try {
    return await action();
  } catch(e) {
    if (trials>0) {
      sleep(Duration(milliseconds: delay));
      return await retry(action, trials: trials - 1, delay: delay);
    } else {
      throw e;
    }
  }
}

void main() {
  final apiClient = ApiClient.basic('https://kraken.icure.dev', 'abdemotst2', '27b90f6e-6847-44bf-b90f-6e6847b4bf1c');

  final userApi = UserApi(apiClient);
  final hcpApi = HealthcarePartyApi(apiClient);
  final patientApi = PatientApi(apiClient);
  final defaultDataOwnerResolver = DataOwnerResolver(apiClient);

  final Uuid uuid = Uuid();

  group('tests for PatientApi', () {
    test('test createPatient', () async {
      // Init
      final currentUser = await userApi.getCurrentUser();
      final currentHcp = await hcpApi.getCurrentHealthcareParty();

      if (currentUser == null || currentHcp == null) {
        throw Exception("Test init error : Current User or current HCP can't be null");
      }

      var lc = await TestUtils.localCrypto(defaultDataOwnerResolver, currentUser, currentHcp);

      var patient = DecryptedPatientDto(
          id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
          firstName: 'John',
          lastName: 'Doe',
          note: 'Premature optimization is the root of all evil');

      // When
      var createdPatient = await patientApi.createPatient(currentUser, patient, patientCryptoConfig(lc));

      // Then
      expect(createdPatient!.id, patient.id);
      expect(createdPatient.firstName, patient.firstName);
      expect(createdPatient.lastName, patient.lastName);
      expect(createdPatient.note, patient.note);
      expect(createdPatient.delegations.values.first.first.key != null, true);
    });

    test('load many Patients', () async {
      // Init
      var currentUser = await userApi.getCurrentUser();
      var currentHcp = await hcpApi.getCurrentHealthcareParty();

      if (currentUser == null || currentHcp == null) {
        throw Exception("Test init error : Current User or current HCP can't be null");
      }

      var lc = await TestUtils.localCrypto(defaultDataOwnerResolver, currentUser, currentHcp);

      var patients = await patientApi.filterPatientsBy(
          currentUser,
          FilterChain(PatientByHcPartyNameContainsFuzzyFilter(healthcarePartyId: currentHcp.id, searchString: 'max')),
          null,
          null,
          null,
          patientCryptoConfig(lc));

      // Then
      expect(patients!.rows.length > 0, true);
    });

    test('Create patient with crypto', () async {
      // Init
      var hkCreds = await TestUtils.credentials();
      var hkApiClient = ApiClient.basic('https://kraken.icure.dev', hkCreds.username, hkCreds.password);
      var hkUserApi = UserApi(hkApiClient);
      var hkHcpApi = HealthcarePartyApi(hkApiClient);
      var hkPatientApi = PatientApi(hkApiClient);
      var hkDataOwnerResolver = DataOwnerResolver(hkApiClient);

      var currentUser = await hkUserApi.getCurrentUser();
      var currentHcp = await hkHcpApi.getCurrentHealthcareParty();

      if (currentUser == null || currentHcp == null) {
        throw Exception("Test init error : Current User or current HCP can't be null");
      }

      var lc = await TestUtils.localCrypto(hkDataOwnerResolver, currentUser, currentHcp);

      final DecryptedPatientDto patient = DecryptedPatientDto(id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}), firstName: 'John', lastName: 'Doe');

      // When
      var createdPatient = await hkPatientApi.createPatient(currentUser, patient, patientCryptoConfig(lc));
      var idUser = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
      var passwordUser = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
      var createdUser = await hkUserApi.createUser(new UserDto(id: idUser, login: idUser.substring(0, 8), patientId: createdPatient!.id, passwordHash: passwordUser));
      print("Patient user login ${idUser.substring(0,8)} and password ${passwordUser}");

      var patApiClient = ApiClient.basic('https://kraken.icure.dev', createdUser!.login!, passwordUser);

      var patUserApi = UserApi(patApiClient);
      var patPatientApi = PatientApi(patApiClient);

      final patUser = await retry(() => patUserApi.getCurrentUser());
      final keyPair = generateRandomPrivateAndPublicKeyPair();

      print("Patient private key ${keyPair.item1} and public key ${keyPair.item2}");

      var patLc = LocalCrypto(DataOwnerResolver(patApiClient), { patUser!.patientId!: RSAKeypair(keyPair.item1.toPrivateKey())});

      final pat = await patPatientApi.getPatient(patUser, patUser.patientId!, patientCryptoConfig(patLc));

      pat!.publicKey = keyPair.item2;

      final modPat = await patPatientApi.modifyPatient(patUser, pat, patientCryptoConfig(patLc));
      patLc = LocalCrypto(DataOwnerResolver(patApiClient), { patUser.patientId!: RSAKeypair(keyPair.item1.toPrivateKey())});

      final pat2 = await patPatientApi.getPatient(patUser, patUser.patientId!, patientCryptoConfig(patLc));
      pat2!.note = "Secret";
      pat2.delegations = {};
      pat2.encryptionKeys = {};
      final modPat2 = (await patPatientApi.modifyPatient(patUser, pat2, patientCryptoConfig(patLc)))!;

      // Then
      expect(modPat2.id, pat2.id);
      expect(modPat2.firstName, pat2.firstName);
      expect(modPat2.lastName, pat2.lastName);
      expect(modPat2.note, pat2.note);
    });
  });
}
