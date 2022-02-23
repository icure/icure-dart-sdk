@Timeout(Duration(hours: 1))
import 'dart:convert';
import 'dart:io';

import 'package:crypton/crypton.dart';
import 'package:icure_dart_sdk/api.dart';
import 'package:icure_dart_sdk/crypto/crypto.dart';
import 'package:icure_dart_sdk/extended_api/data_owner_api.dart';
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
  var apiClient = ApiClient.basic('https://kraken.icure.dev', 'abdemotst2', '27b90f6e-6847-44bf-b90f-6e6847b4bf1c');

  var userApi = UserApi(apiClient);
  var hcpApi = HealthcarePartyApi(apiClient);
  var patientApi = PatientApi(apiClient);
  var deviceApi = DeviceApi(apiClient);

  final Uuid uuid = Uuid();

  Future<LocalCrypto> localCrypto(UserDto user, HealthcarePartyDto hcp) async {
    var fileUri = Uri.file("test/resources/keys/782f1bcd-9f3f-408a-af1b-cd9f3f908a98-icc-priv.2048.key", windows: false);
    var hcpKeyFile = File.fromUri(fileUri);

    var hcpPrivateKey = (await hcpKeyFile.readAsString(encoding: utf8)).toPrivateKey();
    var keyPairs = {user.healthcarePartyId!: RSAKeypair(hcpPrivateKey)};

    return LocalCrypto(DataOwnerResolver(hcpApi, patientApi, deviceApi), keyPairs);
  }

  group('tests for PatientApi', () {
    test('test createPatient', () async {
      // Init
      var currentUser = await userApi.getCurrentUser();
      var currentHcp = await hcpApi.getCurrentHealthcareParty();

      if (currentUser == null || currentHcp == null) {
        throw Exception("Test init error : Current User or current HCP can't be null");
      }

      var lc = await localCrypto(currentUser, currentHcp);

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

      var lc = await localCrypto(currentUser, currentHcp);

      var patients = await patientApi.filterPatientsBy(
          currentUser,
          FilterChain(PatientByHcPartyNameContainsFuzzyFilter(healthcarePartyId: currentHcp.id!, searchString: 'max')),
          null,
          null,
          null,
          patientCryptoConfig(lc));

      // Then
      expect(patients!.rows.length > 0, true);
    });

    test('Create patient with crypto', () async {
      // Init
      var currentUser = await userApi.getCurrentUser();
      var currentHcp = await hcpApi.getCurrentHealthcareParty();

      if (currentUser == null || currentHcp == null) {
        throw Exception("Test init error : Current User or current HCP can't be null");
      }

      var lc = await localCrypto(currentUser, currentHcp);


      final DecryptedPatientDto patient = DecryptedPatientDto(id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}), firstName: 'John', lastName: 'Doe');

      // When
      var createdPatient = await patientApi.createPatient(currentUser, patient, patientCryptoConfig(lc));
      var idUser = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
      var passwordUser = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
      var createdUser = await userApi.createUser(new UserDto(id: idUser, login: idUser.substring(0, 8), patientId: createdPatient!.id, passwordHash: passwordUser));

      var patApiClient = ApiClient.basic('https://kraken.icure.dev', createdUser!.login!, passwordUser);

      var patUserApi = UserApi(patApiClient);
      var patHcpApi = HealthcarePartyApi(patApiClient);
      var patPatientApi = PatientApi(patApiClient);

      final patUser = await retry(() => patUserApi.getCurrentUser());
      final keyPair = generateRandomPrivateAndPublicKeyPair();

      var patLc = LocalCrypto(DataOwnerResolver(hcpApi, patientApi, deviceApi), { patUser!.patientId!: RSAKeypair(keyPair.item1.toPrivateKey())});

      final pat = await patPatientApi.getPatient(patUser, patUser.patientId!, patientCryptoConfig(patLc));

      pat!.publicKey = keyPair.item2;

      final modPat = await patPatientApi.modifyPatient(patUser, pat, patientCryptoConfig(patLc));
      patLc = LocalCrypto(DataOwnerResolver(hcpApi, patientApi, deviceApi), { patUser.patientId!: RSAKeypair(keyPair.item1.toPrivateKey())});

      final pat2 = await patPatientApi.getPatient(patUser, patUser.patientId!, patientCryptoConfig(patLc)!);
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
