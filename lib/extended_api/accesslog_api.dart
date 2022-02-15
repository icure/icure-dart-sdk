// @dart=2.12
import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:icure_dart_sdk/api.dart';
import 'package:icure_dart_sdk/crypto/crypto.dart';
import 'package:icure_dart_sdk/util/binary_utils.dart';
import 'package:icure_dart_sdk/util/collection_utils.dart';
import 'package:tuple/tuple.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

extension CryptoSupport on AccessLogApi {}

extension InitDto on DecryptedAccessLogDto {
  Future<DecryptedAccessLogDto> initDelegations(UserDto user, CryptoConfig<DecryptedAccessLogDto, AccessLogDto> config) async {
    final Uuid uuid = Uuid();

    Set<String> delegationKeys = Set.from(user.autoDelegations["all"] ?? <String>{})
      ..addAll(user.autoDelegations["medicalInformation"] ?? <String>{});
    final ek = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
    final sfk = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});

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

    encryptionKeys = await (delegationKeys..add(user.healthcarePartyId!)).fold(Future.value(encryptionKeys), (m, d) async =>
    (await m)
      ..addEntries([
        MapEntry(d, {
          DelegationDto(
              owner: user.healthcarePartyId, delegatedTo: d, key: await config.crypto.encryptAESKeyForHcp(user.healthcarePartyId!, d, id, ek))
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
          String key = await this.crypto.encryptAESKeyForHcp(myId, e, accessLogDto.id, secret);
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
    final Tuple2<AccessLogDto, Uint8List> sanitizedAccessLogAndMarshalledData = await this.marshaller(decryptedAccessLogDto);
    final sanitizedAccessLog = sanitizedAccessLogAndMarshalledData.item1;
    final marshalledData = sanitizedAccessLogAndMarshalledData.item2;

    sanitizedAccessLog.encryptedSelf = base64Encode(marshalledData.encryptAES(byteArrayKey));
    return sanitizedAccessLog;
  }

  Future<DecryptedAccessLogDto> decryptAccessLog(String myId, AccessLogDto accessLogDto) async {
    final secret = (await this.crypto.decryptEncryptionKeys(myId, accessLogDto.encryptionKeys)).firstOrNull()?.formatAsKey().fromHexString();
    if (secret == null) {
      throw FormatException("Cannot get encryption key fo ${accessLogDto.id} and hcp $myId");
    }
    final es = accessLogDto.encryptedSelf;
    return this.unmarshaller(accessLogDto, es != null ? base64.decoder.convert(es).decryptAES(secret) : null);
  }
}

extension AccessLogExtendedApi on AccessLogApi {

  Future<DecryptedAccessLogDto?> createAccessLog(UserDto user, DecryptedAccessLogDto accessLogDto,
      CryptoConfig<DecryptedAccessLogDto, AccessLogDto> config) async {

    final AccessLogDto encryptedAccessLog = await config.encryptAccessLog(user.healthcarePartyId!, (user.autoDelegations["all"] ?? <String>{})
      ..addAll(user.autoDelegations["medicalInformation"] ?? <String>{}), accessLogDto);
    final AccessLogDto? createdAccessLog = await this.rawCreateAccessLog(encryptedAccessLog);

    return createdAccessLog != null ? await config.decryptAccessLog(user.healthcarePartyId!, createdAccessLog) : null;
  }
}


