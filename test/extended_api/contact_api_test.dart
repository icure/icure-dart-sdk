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
  var contactApi = ContactApi(apiClient);

  final Uuid uuid = Uuid();

  Future<LocalCrypto> _localCrypto(UserDto user, HealthcarePartyDto hcp) async {
    var fileUri = Uri.file("test/resources/keys/782f1bcd-9f3f-408a-af1b-cd9f3f908a98-icc-priv.2048.key", windows: false);
    var hcpKeyFile = File.fromUri(fileUri);

    var hcpPrivateKey = (await hcpKeyFile.readAsString(encoding: utf8)).toPrivateKey();
    var keyPairs = {user.healthcarePartyId!: RSAKeypair(hcpPrivateKey)};

    return LocalCrypto(DataOwnerResolver(hcpApi, patientApi, deviceApi), keyPairs);
  }

  DecryptedServiceDto _weightServiceDto() {
    return DecryptedServiceDto(
        id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
        valueDate: 20220203111034,
        content: {"en": DecryptedContentDto(numberValue: 37.5)},
        tags: {CodeStubDto(id: "LOINC|29463-7|2", code: "29463-7", type: "LOINC", version: "2")}
    );
  }

  group('tests for ContactApi', () {
    test('test createContact', () async {
      // Init
      final currentUser = await userApi.getCurrentUser();
      final currentHcp = await hcpApi.getCurrentHealthcareParty();

      if (currentUser == null || currentHcp == null) {
        throw Exception("Test init error : Current User or current HCP can't be null");
      }

      final lc = await _localCrypto(currentUser, currentHcp);
      final createdPatient = await patientApi.createPatient(currentUser,
          DecryptedPatientDto(
              id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
              firstName: 'John',
              lastName: 'Doe',
              note: 'Premature optimization is the root of all evil'),
          patientCryptoConfig(lc));

      final contactToCreate = DecryptedContactDto(
        id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
        services: {_weightServiceDto()},
        openingDate: 20171214,
        closingDate: 20171214153600,
      );

      // When
      final createdContact = await contactApi.createContactWithPatient(currentUser, createdPatient!, contactToCreate, contactCryptoConfig(currentUser, lc));

      // Then
      expect(createdContact!.id, contactToCreate.id);
      expect(createdContact.services.first.content["en"]!.numberValue!, 37.5);
      expect(createdContact.services.first.encryptedSelf != null, true);
      expect(createdContact.delegations.length > 0, true);
    });
  });
}
