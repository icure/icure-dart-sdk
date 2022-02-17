@Timeout(Duration(hours: 1))
import 'dart:convert';
import 'dart:io';

import 'package:crypton/crypton.dart';
import 'package:icure_dart_sdk/api.dart';
import 'package:icure_dart_sdk/crypto/crypto.dart';
import 'package:icure_dart_sdk/extended_api/data_owner_api.dart';
import "package:test/test.dart";
import 'package:icure_dart_sdk/util/binary_utils.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

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
  });
}
