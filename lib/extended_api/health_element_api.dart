import 'dart:convert';
import 'dart:typed_data';

import 'package:icure_dart_sdk/api.dart';
import 'package:icure_dart_sdk/crypto/crypto.dart';
import 'package:icure_dart_sdk/util/binary_utils.dart';
import 'package:icure_dart_sdk/util/collection_utils.dart';
import 'package:tuple/tuple.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

extension InitDto on DecryptedHealthElementDto {
  Future<DecryptedHealthElementDto> initDelegations(UserDto user, CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config) async {
    final Uuid uuid = Uuid();

    Set<String> delegationKeys = Set.from(user.autoDelegations["all"] ?? <String>{})
      ..addAll(user.autoDelegations["medicalInformation"] ?? <String>{});
    final String ek = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
    final String sfk = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});

    responsible = user.healthcarePartyId!;
    author = user.id;
    delegations = await (delegationKeys..add(user.healthcarePartyId!)).fold(
        Future.value(delegations),
        (m, d) async => (await m)
          ..addEntries([
            MapEntry(d, {
              DelegationDto(
                  owner: user.healthcarePartyId, delegatedTo: d, key: await config.crypto.encryptAESKeyForHcp(user.healthcarePartyId!, d, id, sfk))
            })
          ]));

    encryptionKeys = await (delegationKeys..add(user.healthcarePartyId!)).fold(
        Future.value(encryptionKeys),
        (m, d) async => (await m)
          ..addEntries([
            MapEntry(d, {
              DelegationDto(
                  owner: user.healthcarePartyId, delegatedTo: d, key: await config.crypto.encryptAESKeyForHcp(user.healthcarePartyId!, d, id, ek))
            })
          ]));
    return this;
  }
}

extension HealthElementCryptoConfig on CryptoConfig<DecryptedHealthElementDto, HealthElementDto> {
  Future<HealthElementDto> encryptHealthElement(String myId, Set<String> delegations, DecryptedHealthElementDto healthElementDto) async {
    Map<String, Set<DelegationDto>> encryptionKeys = healthElementDto.encryptionKeys;
    Uint8List? secret;
    if (encryptionKeys.entries.any((element) => element.value.isNotEmpty)) {
      secret = (await this.crypto.decryptEncryptionKeys(myId, healthElementDto.encryptionKeys)).firstOrNull()?.formatAsKey().fromHexString();
    } else {
      secret = Uint8List.fromList(List<int>.generate(32, (i) => random.nextInt(256)));
      final List<Tuple2<String, String>> secretForDelegates = await Future.wait((<String>{...delegations, myId})
          .map((String d) async => Tuple2(d, await this.crypto.encryptAESKeyForHcp(myId, d, healthElementDto.id, secret!.toHexString()))));
      encryptionKeys = {
        ...encryptionKeys,
        ...Map.fromEntries(
            secretForDelegates.map((t) => MapEntry(t.item1, <DelegationDto>{DelegationDto(owner: myId, delegatedTo: t.item1, key: t.item2)})))
      };
    }

    if (secret == null) {
      throw FormatException("Cannot get encryption key fo ${healthElementDto.id} and hcp $myId");
    }

    Tuple2<HealthElementDto, Uint8List> tuple = await this.marshaller(healthElementDto);
    final HealthElementDto sanitizedHealthElement = tuple.item1;
    final Uint8List marshalledData = tuple.item2;

    sanitizedHealthElement.encryptionKeys = encryptionKeys;
    sanitizedHealthElement.encryptedSelf = base64.encoder.convert(marshalledData.encryptAES(secret));

    return sanitizedHealthElement;
  }

  Future<DecryptedHealthElementDto> decryptHealthElement(String myId, HealthElementDto healthElementDto) async {
    final secret = (await this.crypto.decryptEncryptionKeys(myId, healthElementDto.encryptionKeys)).firstOrNull()?.formatAsKey().fromHexString();

    if (secret == null) {
      throw FormatException("Cannot get encryption key fo ${healthElementDto.id} and hcp $myId");
    }
    final String? encryptedSelf = healthElementDto.encryptedSelf;
    return this.unmarshaller(healthElementDto, encryptedSelf != null ? base64.decoder.convert(encryptedSelf).decryptAES(secret) : null);
  }
}

extension HealthElementApiCrypto on HealthElementApi {
  Future<DecryptedHealthElementDto?> createHealthElement(
      UserDto user, DecryptedHealthElementDto healthElementDto, CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config) async {
    final HealthElementDto? newHealthElement = await this.rawCreateHealthElement(await config.encryptHealthElement(user.healthcarePartyId!,
        <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})}, healthElementDto));
    return newHealthElement != null ? await config.decryptHealthElement(user.healthcarePartyId!, newHealthElement) : null;
  }

  Future<DecryptedHealthElementDto?> createHealthElementWithPatient(UserDto user, DecryptedPatientDto patient,
      DecryptedHealthElementDto healthElementDto, CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config) async {
    final String? key = (await config.crypto.decryptEncryptionKeys(user.healthcarePartyId!, patient.delegations)).firstOrNull();

    if (key == null) {
      throw Exception("No delegation for user");
    }

    var delegations = <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})};
    final HealthElementDto encryptedHealthElement =
        await config.encryptHealthElement(user.healthcarePartyId!, delegations, await healthElementDto.initDelegations(user, config));
    final Set<String> secretFK = [key].toSet();
    final Set<String> newDelegations = [...delegations, user.healthcarePartyId!].toSet();
    final secretForDelegates = await Future.wait((newDelegations)
        .map((String d) async => Tuple2(d, await config.crypto.encryptValueForHcp(user.healthcarePartyId!, d, healthElementDto.id, patient.id))));

    encryptedHealthElement.secretForeignKeys = secretFK;
    encryptedHealthElement.cryptedForeignKeys = {
      ...healthElementDto.cryptedForeignKeys,
      ...Map.fromEntries(secretForDelegates
          .map((t) => MapEntry(t.item1, <DelegationDto>{DelegationDto(owner: user.healthcarePartyId!, delegatedTo: t.item1, key: t.item2)})))
    };

    final HealthElementDto? createdHealthElement = await this.rawCreateHealthElement(encryptedHealthElement);
    return createdHealthElement != null ? await config.decryptHealthElement(user.healthcarePartyId!, createdHealthElement) : null;
  }

  Future<List<DecryptedHealthElementDto>?> createHealthElements(UserDto user, DecryptedPatientDto patient,
      List<DecryptedHealthElementDto> healthElements, CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config) async {
    final String? key = (await config.crypto.decryptEncryptionKeys(user.healthcarePartyId!, patient.delegations)).firstOrNull();
    if (key == null) {
      throw Exception("No delegation for user");
    }

    var delegations = <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})};
    final Set<String> newDelegations = [...delegations, user.healthcarePartyId!].toSet();
    final Set<String> secretFK = [key].toSet();

    var healthElementsToCreate = await Future.wait(healthElements.map((he) async {
      final secretForDelegates = await Future.wait(
          (newDelegations).map((String d) async => Tuple2(d, await config.crypto.encryptValueForHcp(user.healthcarePartyId!, d, he.id, patient.id))));
      final HealthElementDto encryptedHealthElement =
          await config.encryptHealthElement(user.healthcarePartyId!, delegations, await he.initDelegations(user, config));

      encryptedHealthElement.secretForeignKeys = secretFK;
      encryptedHealthElement.cryptedForeignKeys = {
        ...he.cryptedForeignKeys,
        ...Map.fromEntries(secretForDelegates
            .map((t) => MapEntry(t.item1, <DelegationDto>{DelegationDto(owner: user.healthcarePartyId!, delegatedTo: t.item1, key: t.item2)})))
      };

      return encryptedHealthElement;
    }));

    final List<HealthElementDto>? newHealthElements = await this.rawCreateHealthElements(healthElementsToCreate);
    return newHealthElements == null
        ? null
        : await Future.wait(newHealthElements.map((newHealthElement) => config.decryptHealthElement(user.healthcarePartyId!, newHealthElement)));
  }

  Future<DecryptedHealthElementDto?> newHealthElementDelegations(
      UserDto user, String healthElementId, List<DelegationDto> delegations, CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config) async {
    final HealthElementDto? newHealthElement = await this.rawNewHealthElementDelegations(healthElementId, delegations);
    return newHealthElement != null ? await config.decryptHealthElement(user.healthcarePartyId!, newHealthElement) : null;
  }

  Future<List<DecryptedHealthElementDto>> listHealthElementsByHCPartyAndPatient(
      UserDto user, String hcPartyId, PatientDto patient, CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config) async {
    final Set<String> keys = await config.crypto.decryptEncryptionKeys(user.healthcarePartyId!, patient.delegations);
    if (keys.isEmpty) {
      throw Exception("No delegation for this user");
    }
    return await listHealthElementsByHCPartyAndPatientForeignKeys(user, hcPartyId, keys.join(","), config);
  }

  Future<List<DecryptedHealthElementDto>> listHealthElementsByHCPartyAndPatientForeignKeys(
      UserDto user, String hcPartyId, String secretFKeys, CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config) async {
    final List<HealthElementDto>? healthElements = await this.rawListHealthElementsByHCPartyAndPatientForeignKeys(hcPartyId, secretFKeys);
    if (healthElements == null || healthElements.isEmpty) {
      throw Exception("No delegation for this user");
    }
    return await Future.wait(healthElements.map((healthElement) => config.decryptHealthElement(user.healthcarePartyId!, healthElement)));
  }

  Future<DecryptedHealthElementDto?> getHeathElement(
      UserDto user, String healthElementId, CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config) async {
    var encryptedHealthElement = await this.rawGetHealthElement(healthElementId);
    return encryptedHealthElement != null ? config.decryptHealthElement(user.healthcarePartyId!, encryptedHealthElement) : null;
  }

  Future<List<DecryptedHealthElementDto>?> getHeathElements(
      UserDto user, List<String> healthElementIds, CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config) async {
    final List<HealthElementDto>? encryptedHealthElements = await this.rawGetHealthElements(ListOfIdsDto(ids: healthElementIds));
    return encryptedHealthElements != null
        ? await Future.wait(
            encryptedHealthElements.map((encryptedHealthElement) => config.decryptHealthElement(user.healthcarePartyId!, encryptedHealthElement)))
        : null;
  }

  Future<DecryptedHealthElementDto?> modifyHealthElement(
      UserDto user, DecryptedHealthElementDto healthElementDto, CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config) async {
    final HealthElementDto encryptedHealthElement = await config.encryptHealthElement(user.healthcarePartyId!,
        <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})}, healthElementDto);
    var modifiedHealthElement = await this.rawModifyHealthElement(encryptedHealthElement);
    return modifiedHealthElement != null ? await config.decryptHealthElement(user.healthcarePartyId!, modifiedHealthElement) : null;
  }

  Future<List<DecryptedHealthElementDto>> modifyHealthElements(
      UserDto user, List<DecryptedHealthElementDto> healthElements, CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config) async {
    final Set<String> delegations = <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})};
    final List<HealthElementDto> encryptedHealthElements =
        await Future.wait(healthElements.map((e) => config.encryptHealthElement(user.healthcarePartyId!, delegations, e)));
    final List<HealthElementDto>? modifiedHealthElements = await this.rawModifyHealthElements(encryptedHealthElements);
    return modifiedHealthElements != null
        ? await Future.wait(modifiedHealthElements.map((e) => config.decryptHealthElement(user.healthcarePartyId!, e)))
        : List<DecryptedHealthElementDto>.empty();
  }

  Future<DecryptedPaginatedListHealthElementDto> filterHealthElements(UserDto user, FilterChainHealthElement filterChainHealthElement,
      CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config, String? startDocumentId, int? limit) async {
    final PaginatedListHealthElementDto? paginatedListHealthElement =
        await this.rawFilterHealthElementsBy(filterChainHealthElement, startDocumentId: startDocumentId, limit: limit);
    if (paginatedListHealthElement == null) {
      throw Exception("Couldn't get the paginatedList");
    }
    final List<DecryptedHealthElementDto> rows =
        await Future.wait(paginatedListHealthElement.rows.map((e) => config.decryptHealthElement(user.healthcarePartyId!, e)));
    return DecryptedPaginatedListHealthElementDto(
        pageSize: paginatedListHealthElement.pageSize,
        totalSize: paginatedListHealthElement.totalSize,
        rows: rows,
        nextKeyPair: paginatedListHealthElement.nextKeyPair);
  }

  Future<List<DecryptedHealthElementDto>> setHealthElementsDelegations(
      UserDto user, List<IcureStubDto> icureStubDtos, CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config) async {
    final List<HealthElementDto>? healthElements = await this.rawSetHealthElementsDelegations(icureStubDtos);
    return healthElements != null
        ? await Future.wait(healthElements.map((healthElement) => config.decryptHealthElement(user.healthcarePartyId!, healthElement)))
        : List<DecryptedHealthElementDto>.empty();
  }
}
