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
  final iCureUrl = Platform.environment["ICURE_URL"] ?? "https://kraken.icure.dev";
  final hcpUsername = Platform.environment["HCP_1_USERNAME"]!;
  final hcpPassword = Platform.environment["HCP_1_PASSWORD"]!;
  final hcpPrivKey = Platform.environment["HCP_1_PRIV_KEY"]!;

  final apiClient = ApiClient.basic(iCureUrl, hcpUsername, hcpPassword);

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

      final lc = await LocalCrypto(defaultDataOwnerResolver, {currentUser.healthcarePartyId!: RSAKeypair(hcpPrivKey.toPrivateKey())});

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

      var lc = await LocalCrypto(defaultDataOwnerResolver, {currentUser.healthcarePartyId!: RSAKeypair(hcpPrivKey.toPrivateKey())});

      final createdPatient = await patientApi.createPatient(currentUser, DecryptedPatientDto(
          id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
          firstName: 'John',
          lastName: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
          note: 'Premature optimization is the root of all evil'), patientCryptoConfig(lc));

      // When
      var patients = await patientApi.filterPatientsBy(
          currentUser,
          FilterChain(PatientByHcPartyNameContainsFuzzyFilter(healthcarePartyId: currentHcp.id, searchString: createdPatient!.lastName)),
          null,
          null,
          null,
          patientCryptoConfig(lc));

      // Then
      expect(patients!.rows.first.id, createdPatient.id);
    });

    test('Create patient with crypto iCure', () async {
      // Init
      var currentUser = await userApi.getCurrentUser();
      var currentHcp = await hcpApi.getCurrentHealthcareParty();

      if (currentUser == null || currentHcp == null) {
        throw Exception("Test init error : Current User or current HCP can't be null");
      }

      var lc = await LocalCrypto(defaultDataOwnerResolver, {currentUser.healthcarePartyId!: RSAKeypair(hcpPrivKey.toPrivateKey())});

      final DecryptedPatientDto patient = DecryptedPatientDto(id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}), firstName: 'John', lastName: 'Doe');

      // When
      var createdPatient = await patientApi.createPatient(currentUser, patient, patientCryptoConfig(lc));
      var idUser = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
      var passwordUser = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
      var createdUser = await userApi.createUser(
          new UserDto(id: idUser, login: idUser.substring(0, 8), patientId: createdPatient!.id, passwordHash: passwordUser));

      var patApiClient = ApiClient.basic('https://kraken.icure.dev', createdUser!.login!, passwordUser);

      var patUserApi = UserApi(patApiClient);
      var patHcpApi = HealthcarePartyApi(patApiClient);
      var patPatientApi = PatientApi(patApiClient);

      final patUser = await retry(() => patUserApi.getCurrentUser());
      final keyPair = generateRandomPrivateAndPublicKeyPair();

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
