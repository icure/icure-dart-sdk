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
  final healthElementApi = HealthElementApi(apiClient);
  final contactApi = ContactApi(apiClient);
  final defaultDataOwnerResolver = DataOwnerResolver(apiClient);

  final Uuid uuid = Uuid();

  Future<DecryptedPatientDto?> createPatient(UserDto currentUser, LocalCrypto lc) async {
    final createdPatient = await patientApi.createPatient(currentUser,
        DecryptedPatientDto(
            id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
            firstName: 'John',
            lastName: 'Doe',
            note: 'Premature optimization is the root of all evil'),
        patientCryptoConfig(lc));
    return createdPatient;
  }

  DecryptedServiceDto _weightServiceDto({String? serviceId}) {
    return DecryptedServiceDto(
        id: serviceId ?? uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
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

      final lc = await LocalCrypto(defaultDataOwnerResolver, {currentUser.healthcarePartyId!: RSAKeypair(hcpPrivKey.toPrivateKey())});
      DecryptedPatientDto? createdPatient = await createPatient(currentUser, lc);

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

    test('Filter Services By HealthElementId - Success', () async {
      // Given
      // Init
      final currentUser = await userApi.getCurrentUser();
      final currentHcp = await hcpApi.getCurrentHealthcareParty();

      if (currentUser == null || currentHcp == null) {
        throw Exception("Test init error : Current User or current HCP can't be null");
      }

      final lc = await LocalCrypto(defaultDataOwnerResolver, {currentUser.healthcarePartyId!: RSAKeypair(hcpPrivKey.toPrivateKey())});
      DecryptedPatientDto? createdPatient = await createPatient(currentUser, lc);
      final createdHealthElement = await healthElementApi.createHealthElementWithPatient(currentUser, createdPatient!,
          DecryptedHealthElementDto(
              id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
              relevant: true,
              status: 0,
              note: 'Premature optimization is the root of all evil'),
          healthElementCryptoConfig(lc));

      final serviceId = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
      await contactApi.createContactWithPatient(currentUser, createdPatient!, DecryptedContactDto(
          id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
          services: {_weightServiceDto(serviceId: serviceId)},
          openingDate: 20171214,
          closingDate: 20171214153600,
          subContacts: {
            new SubContactDto(
                id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
                healthElementId: createdHealthElement!.id,
                services: [new ServiceLinkDto(serviceId: serviceId)]
            )
          }
      ), contactCryptoConfig(currentUser, lc));

      // When
      final foundServices = await contactApi.filterServicesBy(currentUser, FilterChain<ServiceDto>(
          ServiceByHcPartyHealthElementIdsFilter(
              healthcarePartyId: currentUser.healthcarePartyId!,
              healthElementIds: [createdHealthElement.id]
          )
      ), null, null, null, lc);

      // Then
      assert(foundServices!.rows.length == 1);
      assert(foundServices!.rows.first.id == serviceId);
    });
  });
}
