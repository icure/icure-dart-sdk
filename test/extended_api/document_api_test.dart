@Timeout(Duration(hours: 1))
import 'dart:convert';
import 'dart:io';

import 'package:crypton/crypton.dart';
import 'package:icure_dart_sdk/api.dart';
import 'package:icure_dart_sdk/crypto/crypto.dart';
import 'package:icure_dart_sdk/extended_api/data_owner_resolver.dart';
import "package:test/test.dart";
import 'package:icure_dart_sdk/util/binary_utils.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

void main() {
  final apiClient = ApiClient.basic('https://kraken.icure.dev', 'abdemotst2', '27b90f6e-6847-44bf-b90f-6e6847b4bf1c');

  final userApi = UserApi(apiClient);
  final hcpApi = HealthcarePartyApi(apiClient);
  final patientApi = PatientApi(apiClient);
  final documentApi = DocumentApi(apiClient);

  final Uuid uuid = Uuid();

  Future<LocalCrypto> _localCrypto(UserDto user, HealthcarePartyDto hcp) async {
    var fileUri = Uri.file("test/resources/keys/782f1bcd-9f3f-408a-af1b-cd9f3f908a98-icc-priv.2048.key", windows: false);
    var hcpKeyFile = File.fromUri(fileUri);

    var hcpPrivateKey = (await hcpKeyFile.readAsString(encoding: utf8)).toPrivateKey();
    var keyPairs = {user.healthcarePartyId!: RSAKeypair(hcpPrivateKey)};

    return LocalCrypto(DataOwnerResolver(apiClient), keyPairs);
  }

  group('tests for DocumentApi', () {
    test('test setDocumentAttachment', () async {
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

      final createdDocument = await documentApi.createDocument(currentUser, DecryptedDocumentDto(
        id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
        mainUti: "public.xml",
        name: "set_attachment_test.xml"
      ), documentCryptoConfig(lc));

      final attachmentFileUri = Uri.file("test/resources/attachments/set_attachment_test.xml", windows: false);
      final attachmentFile = File.fromUri(attachmentFileUri);

      // When



      // Then
      expect(createdDocument!.name!, "set_attachment_test.xml");
      expect(createdDocument.mainUti!, "public.xml");
    });
  });
}
