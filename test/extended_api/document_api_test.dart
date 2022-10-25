@Timeout(Duration(hours: 1))
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
  final iCureUrl = Platform.environment["ICURE_URL"] ?? "https://kraken.icure.dev";
  final hcpUsername = Platform.environment["HCP_1_USERNAME"]!;
  final hcpPassword = Platform.environment["HCP_1_PASSWORD"]!;
  final hcpPrivKey = Platform.environment["HCP_1_PRIV_KEY"]!;

  final apiClient = ApiClient.basic(iCureUrl, hcpUsername, hcpPassword);

  final userApi = UserApi(apiClient);
  final hcpApi = HealthcarePartyApi(apiClient);
  final patientApi = PatientApi(apiClient);
  final documentApi = DocumentApi(apiClient);
  final defaultDataOwnerResolver = DataOwnerResolver(apiClient);

  final Uuid uuid = Uuid();

  group('tests for DocumentApi', () {
    test('test setDocumentAttachment', () async {
      // Init
      final currentUser = await userApi.getCurrentUser();
      final currentHcp = await hcpApi.getCurrentHealthcareParty();

      if (currentUser == null || currentHcp == null) {
        throw Exception("Test init error : Current User or current HCP can't be null");
      }

      final lc = await LocalCrypto(defaultDataOwnerResolver, {currentUser.healthcarePartyId!: RSAKeypair(hcpPrivKey.toPrivateKey())});
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
