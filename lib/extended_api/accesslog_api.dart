// @dart=2.12
part of icure_dart_sdk.api;

extension AccessLogCryptoSupport on AccessLogApi {}

extension AccessLogInitDto on DecryptedAccessLogDto {
  Future<DecryptedAccessLogDto> initDelegations(UserDto user, CryptoConfig<DecryptedAccessLogDto, AccessLogDto> config) async {
    final Uuid uuid = Uuid();

    Set<String> delegationKeys = Set.from(user.autoDelegations["all"] ?? <String>{})
      ..addAll(user.autoDelegations["medicalInformation"] ?? <String>{});
    final ek = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
    final sfk = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});

    responsible = user.dataOwnerId()!;
    author = user.id;
    delegations = await (delegationKeys..add(user.dataOwnerId()!)).fold(
        Future.value({...delegations}),
            (m, d) async =>
        (await m)
          ..addEntries([
            MapEntry(d, {
              DelegationDto(
                  owner: user.dataOwnerId(), delegatedTo: d, key:
                    (await config.crypto.encryptAESKeyForHcp(user.dataOwnerId()!, d, id, sfk)).item1
              )
            })
          ]));

    encryptionKeys = await (delegationKeys..add(user.dataOwnerId()!)).fold(
        Future.value({...encryptionKeys}),
        (m, d) async => (await m)
          ..addEntries([
            MapEntry(d, {
              DelegationDto(
                  owner: user.dataOwnerId(), delegatedTo: d, key:
                    (await config.crypto.encryptAESKeyForHcp(user.dataOwnerId()!, d, id, ek)).item1
              )
            })
          ]));
    return this;
  }
}

extension AccessLogCryptoConfig on CryptoConfig<DecryptedAccessLogDto, AccessLogDto> {
  Future<AccessLogDto> encryptAccessLog(String myId, Set<String> delegations, DecryptedAccessLogDto accessLogDto) async {
    final Uuid uuid = Uuid();

    Future<DecryptedAccessLogDto> getDecryptedAccessLogWithKeys(DecryptedAccessLogDto accessLog) async {
      if (accessLog.encryptionKeys.entries.any((element) => element.value.isNotEmpty)) {
        return accessLog;
      } else {
        final String secret = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
        final Set<String> newDelegations = [...delegations, myId].toSet();
        final List<Future<MapEntry<String, String>>> futureDelegationKeys = newDelegations.map((e) async {
          String key = (await this.crypto.encryptAESKeyForHcp(myId, e, accessLogDto.id, secret)).item1;
          return MapEntry(e, key);
        }).toList();
        final Map<String, String> delegationsKeys = await Map<String, String>.fromEntries(await Future.wait(futureDelegationKeys));
        final Map<String, Set<DelegationDto>> encryptionKeys = Map<String, Set<DelegationDto>>.fromEntries(
            delegationsKeys.entries.map((e) => MapEntry(e.key, [DelegationDto(owner: myId, delegatedTo: e.key, key: e.value, tags: [])].toSet())));
        accessLog.encryptionKeys = encryptionKeys;
        return accessLog;
      }
    }

    ;

    final DecryptedAccessLogDto decryptedAccessLogDto = await getDecryptedAccessLogWithKeys(accessLogDto);
    final Set<String> keys = await this.crypto.decryptEncryptionKeys(myId, decryptedAccessLogDto.encryptionKeys);
    final String stringKey = await Stream<String>.fromIterable(keys).first;
    final Uint8List byteArrayKey = Uint8List.fromList(stringKey.codeUnits);

    final Tuple2<AccessLogDto, Uint8List?> sanitizedAccessLogAndMarshalledData = await this.marshaller(decryptedAccessLogDto);
    AccessLogDto sanitizedAccessLog = sanitizedAccessLogAndMarshalledData.item1;
    final Uint8List? marshalledData = sanitizedAccessLogAndMarshalledData.item2;

    sanitizedAccessLog.encryptedSelf = marshalledData != null ? base64Encode(marshalledData.encryptAES(byteArrayKey)) : null;
    return sanitizedAccessLog;
  }

  Future<DecryptedAccessLogDto> decryptAccessLog(String myId, AccessLogDto accessLogDto) async {
    final secret = IterableUtils((await this.crypto.decryptEncryptionKeys(myId, accessLogDto.encryptionKeys))).firstOrNull()?.formatAsKey().fromHexString();
    if (secret == null) {
      throw FormatException("Cannot get encryption key fo ${accessLogDto.id} and hcp $myId");
    }
    final es = accessLogDto.encryptedSelf;
    return this.unmarshaller(accessLogDto, es != null ? base64.decoder.convert(es).decryptAES(secret) : null);
  }
}

extension AccessLogApiCrypto on AccessLogApi {

  Future<DecryptedAccessLogDto?> createAccessLog(UserDto user, DecryptedAccessLogDto accessLogDto,
      CryptoConfig<DecryptedAccessLogDto, AccessLogDto> config) async {

    final AccessLogDto encryptedAccessLog = await config.encryptAccessLog(user.dataOwnerId()!, (user.autoDelegations["all"] ?? <String>{})
      ..addAll(user.autoDelegations["medicalInformation"] ?? <String>{}), (await accessLogDto.initDelegations(user, config)));
    final AccessLogDto? createdAccessLog = await this.rawCreateAccessLog(encryptedAccessLog);

    return createdAccessLog != null ? await config.decryptAccessLog(user.dataOwnerId()!, createdAccessLog) : null;
  }
}


