@Timeout(Duration(hours: 1))

import 'dart:convert';
import 'dart:io';

import 'package:crypton/crypton.dart';
import 'package:openapi/api.dart';
import 'package:openapi/crypto/crypto.dart';
import 'package:pointycastle/api.dart';
import "package:test/test.dart";
import 'package:openapi/util/binary_utils.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

void main() {
  var apiClient = ApiClient.basic('https://kraken.icure.dev', 'abdemotst2', '27b90f6e-6847-44bf-b90f-6e6847b4bf1c');

  var userApi = UserApi(apiClient);
  var hcpApi = HealthcarePartyApi(apiClient);
  var patientApi = PatientApi(apiClient);

  final Uuid uuid = Uuid();

  Future<LocalCrypto> localCrypto(UserDto user, HealthcarePartyDto hcp) async {
    var fileUri = Uri.file("test/resources/keys/782f1bcd-9f3f-408a-af1b-cd9f3f908a98-icc-priv.2048.key", windows: false);
    var hcpKeyFile = File.fromUri(fileUri);

    var hcpPrivateKey = (await hcpKeyFile.readAsString(encoding: utf8)).toPrivateKey();
    var hcpPublicKey = hcp.publicKey!.toPublicKey();

    var keyPairs = {
      user.healthcarePartyId! : RSAKeypair(hcpPrivateKey)
    };

    return LocalCrypto(hcpApi, keyPairs);
  }

  group('tests for PatientApi', ()
  {
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
          lastName: 'Doe'
      );

      // When
      var createdPatient = await PatientApiCrypto(patientApi).createPatient(currentUser, patient, patientCryptoConfig(lc));

      // Then
      expect(createdPatient!.id, patient.id);
      expect(createdPatient.firstName, patient.firstName);
      expect(createdPatient.lastName, patient.lastName);
    });
  });
}
