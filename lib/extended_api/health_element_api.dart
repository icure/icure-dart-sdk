// @dart=2.12
part of icure_dart_sdk.api;

extension HealthElementInitDto on DecryptedHealthElementDto {
  Future<DecryptedHealthElementDto> initDelegations(UserDto user, CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config) async {
    final Uuid uuid = Uuid();

    Set<String> delegationKeys = Set.from(user.autoDelegations["all"] ?? <String>{})
      ..addAll(user.autoDelegations["medicalInformation"] ?? <String>{});
    final String ek = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
    final String sfk = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});

    responsible = user.dataOwnerId()!;
    author = user.id;
    delegations = await (delegationKeys..add(user.dataOwnerId()!)).fold(
        Future.value({...delegations}),
            (m, d) async =>
        (await m)
          ..addEntries([
            MapEntry(d, {
              DelegationDto(
                  owner: user.dataOwnerId(), delegatedTo: d, key: (await config.crypto.encryptAESKeyForHcp(user.dataOwnerId()!, d, id, sfk)).item1)
            })
          ]));

    encryptionKeys = await (delegationKeys..add(user.dataOwnerId()!)).fold(
        Future.value({...encryptionKeys}),
            (m, d) async =>
        (await m)
          ..addEntries([
            MapEntry(d, {
              DelegationDto(
                  owner: user.dataOwnerId(), delegatedTo: d, key: (await config.crypto.encryptAESKeyForHcp(user.dataOwnerId()!, d, id, ek)).item1)
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
      secret = IterableUtils((await this.crypto.decryptEncryptionKeys(myId, healthElementDto.encryptionKeys))).firstOrNull()?.formatAsKey().fromHexString();
    } else {
      secret = Uint8List.fromList(List<int>.generate(32, (i) => random.nextInt(256)));
      final List<Tuple2<String, String>> secretForDelegates = await Future.wait((<String>{...delegations, myId})
          .map((String d) async => Tuple2(d, (await this.crypto.encryptAESKeyForHcp(myId, d, healthElementDto.id, secret!.toHexString())).item1)));
      encryptionKeys = {
        ...encryptionKeys,
        ...Map.fromEntries(
            secretForDelegates.map((t) => MapEntry(t.item1, <DelegationDto>{DelegationDto(owner: myId, delegatedTo: t.item1, key: t.item2)})))
      };
    }

    if (secret == null) {
      throw FormatException("Cannot get encryption key fo ${healthElementDto.id} and hcp $myId");
    }

    Tuple2<HealthElementDto, Uint8List?> tuple = await this.marshaller(healthElementDto);
    final HealthElementDto sanitizedHealthElement = tuple.item1;
    final Uint8List? marshalledData = tuple.item2;

    sanitizedHealthElement.encryptionKeys = encryptionKeys;
    sanitizedHealthElement.encryptedSelf = marshalledData != null ? base64.encoder.convert(marshalledData.encryptAES(secret)) : null;

    return sanitizedHealthElement;
  }

  Future<DecryptedHealthElementDto> decryptHealthElement(String myId, HealthElementDto healthElementDto) async {
    final String? es = healthElementDto.encryptedSelf;

    if (es != null) {
      final secret = IterableUtils((await this.crypto.decryptEncryptionKeys(myId, healthElementDto.encryptionKeys))).firstOrNull()?.formatAsKey().fromHexString();

      if (secret == null) {
        throw FormatException("Cannot get encryption key fo ${healthElementDto.id} and hcp $myId");
      }
      return this.unmarshaller(healthElementDto, base64.decoder.convert(es).decryptAES(secret));
    } else {
      return this.unmarshaller(healthElementDto, null);
    }
  }
}

extension HealthElementApiCrypto on HealthElementApi {
  Future<DecryptedHealthElementDto?> createHealthElement(
      UserDto user, DecryptedHealthElementDto healthElementDto, CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config) async {
    final HealthElementDto? newHealthElement = await this.rawCreateHealthElement(await config.encryptHealthElement(user.dataOwnerId()!,
        <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})}, healthElementDto));
    return newHealthElement != null ? await config.decryptHealthElement(user.dataOwnerId()!, newHealthElement) : null;
  }

  Future<DecryptedHealthElementDto?> createHealthElementWithPatient(UserDto user, DecryptedPatientDto patient,
      DecryptedHealthElementDto healthElementDto, CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config) async {
    final String? key = IterableUtils((await config.crypto.decryptEncryptionKeys(user.dataOwnerId()!, patient.delegations))).firstOrNull();

    if (key == null) {
      throw Exception("No delegation for user");
    }

    var delegations = <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})};
    final HealthElementDto encryptedHealthElement =
        await config.encryptHealthElement(user.dataOwnerId()!, delegations, await healthElementDto.initDelegations(user, config));
    final Set<String> secretFK = [key].toSet();
    final Set<String> newDelegations = [...delegations, user.dataOwnerId()!].toSet();
    final secretForDelegates = await Future.wait((newDelegations)
        .map((String d) async => Tuple2(d, await config.crypto.encryptValueForHcp(user.dataOwnerId()!, d, healthElementDto.id, patient.id))));

    encryptedHealthElement.secretForeignKeys = secretFK;
    encryptedHealthElement.cryptedForeignKeys = {
      ...healthElementDto.cryptedForeignKeys,
      ...Map.fromEntries(secretForDelegates
          .map((t) => MapEntry(t.item1, <DelegationDto>{DelegationDto(owner: user.dataOwnerId()!, delegatedTo: t.item1, key: t.item2.item1)})))
    };

    final HealthElementDto? createdHealthElement = await this.rawCreateHealthElement(encryptedHealthElement);
    return createdHealthElement != null ? await config.decryptHealthElement(user.dataOwnerId()!, createdHealthElement) : null;
  }

  Future<List<DecryptedHealthElementDto>?> createHealthElements(UserDto user, DecryptedPatientDto patient,
      List<DecryptedHealthElementDto> healthElements, CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config) async {
    final String? key = IterableUtils((await config.crypto.decryptEncryptionKeys(user.dataOwnerId()!, patient.delegations))).firstOrNull();
    if (key == null) {
      throw Exception("No delegation for user");
    }

    var delegations = <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})};
    final Set<String> newDelegations = [...delegations, user.dataOwnerId()!].toSet();
    final Set<String> secretFK = [key].toSet();

    var healthElementsToCreate = await Future.wait(healthElements.map((he) async {
      final secretForDelegates = await Future.wait(
          (newDelegations).map((String d) async => Tuple2(d, await config.crypto.encryptValueForHcp(user.dataOwnerId()!, d, he.id, patient.id))));
      final HealthElementDto encryptedHealthElement =
          await config.encryptHealthElement(user.dataOwnerId()!, delegations, await he.initDelegations(user, config));

      encryptedHealthElement.secretForeignKeys = secretFK;
      encryptedHealthElement.cryptedForeignKeys = {
        ...he.cryptedForeignKeys,
        ...Map.fromEntries(secretForDelegates
            .map((t) => MapEntry(t.item1, <DelegationDto>{DelegationDto(owner: user.dataOwnerId()!, delegatedTo: t.item1, key: t.item2.item1)})))
      };

      return encryptedHealthElement;
    }));

    final List<HealthElementDto>? newHealthElements = await this.rawCreateHealthElements(healthElementsToCreate);
    return newHealthElements == null
        ? null
        : await Future.wait(newHealthElements.map((newHealthElement) => config.decryptHealthElement(user.dataOwnerId()!, newHealthElement)));
  }

  Future<DecryptedHealthElementDto?> newHealthElementDelegations(
      UserDto user, String healthElementId, List<DelegationDto> delegations, CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config) async {
    final HealthElementDto? newHealthElement = await this.rawNewHealthElementDelegations(healthElementId, delegations);
    return newHealthElement != null ? await config.decryptHealthElement(user.dataOwnerId()!, newHealthElement) : null;
  }

  Future<List<DecryptedHealthElementDto>> listHealthElementsByHCPartyAndPatient(
      UserDto user, String hcPartyId, PatientDto patient, CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config) async {
    final Set<String> keys = await config.crypto.decryptEncryptionKeys(user.dataOwnerId()!, patient.delegations);
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
    return await Future.wait(healthElements.map((healthElement) => config.decryptHealthElement(user.dataOwnerId()!, healthElement)));
  }

  Future<DecryptedHealthElementDto?> getHeathElement(
      UserDto user, String healthElementId, CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config) async {
    var encryptedHealthElement = await this.rawGetHealthElement(healthElementId);
    return encryptedHealthElement != null ? config.decryptHealthElement(user.dataOwnerId()!, encryptedHealthElement) : null;
  }

  Future<List<DecryptedHealthElementDto>?> getHeathElements(
      UserDto user, List<String> healthElementIds, CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config) async {
    final List<HealthElementDto>? encryptedHealthElements = await this.rawGetHealthElements(ListOfIdsDto(ids: healthElementIds));
    return encryptedHealthElements != null
        ? await Future.wait(
            encryptedHealthElements.map((encryptedHealthElement) => config.decryptHealthElement(user.dataOwnerId()!, encryptedHealthElement)))
        : null;
  }

  Future<DecryptedHealthElementDto?> modifyHealthElement(
      UserDto user, DecryptedHealthElementDto healthElementDto, CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config) async {
    final HealthElementDto encryptedHealthElement = await config.encryptHealthElement(user.dataOwnerId()!,
        <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})}, healthElementDto);
    var modifiedHealthElement = await this.rawModifyHealthElement(encryptedHealthElement);
    return modifiedHealthElement != null ? await config.decryptHealthElement(user.dataOwnerId()!, modifiedHealthElement) : null;
  }

  Future<List<DecryptedHealthElementDto>> modifyHealthElements(
      UserDto user, List<DecryptedHealthElementDto> healthElements, CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config) async {
    final Set<String> delegations = <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})};
    final List<HealthElementDto> encryptedHealthElements =
        await Future.wait(healthElements.map((e) => config.encryptHealthElement(user.dataOwnerId()!, delegations, e)));
    final List<HealthElementDto>? modifiedHealthElements = await this.rawModifyHealthElements(encryptedHealthElements);
    return modifiedHealthElements != null
        ? await Future.wait(modifiedHealthElements.map((e) => config.decryptHealthElement(user.dataOwnerId()!, e)))
        : List<DecryptedHealthElementDto>.empty();
  }

  Future<DecryptedPaginatedListHealthElementDto> filterHealthElements(UserDto user, FilterChain<HealthElementDto> filterChainHealthElement,
      CryptoConfig<DecryptedHealthElementDto, HealthElementDto> config, String? startDocumentId, int? limit) async {
    final PaginatedListHealthElementDto? paginatedListHealthElement =
        await this.rawFilterHealthElementsBy(filterChainHealthElement, startDocumentId: startDocumentId, limit: limit);
    if (paginatedListHealthElement == null) {
      throw Exception("Couldn't get the paginatedList");
    }
    final List<DecryptedHealthElementDto> rows =
        await Future.wait(paginatedListHealthElement.rows.map((e) => config.decryptHealthElement(user.dataOwnerId()!, e)));
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
        ? await Future.wait(healthElements.map((healthElement) => config.decryptHealthElement(user.dataOwnerId()!, healthElement)))
        : List<DecryptedHealthElementDto>.empty();
  }
}
