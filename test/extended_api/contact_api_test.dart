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
  final healthElementApi = HealthElementApi(apiClient);
  final contactApi = ContactApi(apiClient);

  final Uuid uuid = Uuid();

  Future<LocalCrypto> _localCrypto(UserDto user, HealthcarePartyDto hcp) async {
    final fileUri = Uri.file("test/resources/keys/782f1bcd-9f3f-408a-af1b-cd9f3f908a98-icc-priv.2048.key", windows: false);
    final hcpKeyFile = File.fromUri(fileUri);

    final hcpPrivateKey = (await hcpKeyFile.readAsString(encoding: utf8)).toPrivateKey();
    final keyPairs = {user.healthcarePartyId!: RSAKeypair(hcpPrivateKey)};

    return LocalCrypto(DataOwnerResolver(apiClient), keyPairs);
  }

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

      final lc = await _localCrypto(currentUser, currentHcp);
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

      final lc = await _localCrypto(currentUser, currentHcp);
      DecryptedPatientDto? createdPatient = await createPatient(currentUser, lc);
      final createdHealthElement = await healthElementApi.createHealthElementWithPatient(currentUser, createdPatient!,
          DecryptedHealthElementDto(
              id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
              relevant: true,
              status: 0,
              note: 'Premature optimization is the root of all evil'),
          healthElementCryptoConfig(lc));

      final serviceId = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
      final createdContact = await contactApi.createContactWithPatient(currentUser, createdPatient!, DecryptedContactDto(
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
