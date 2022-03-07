// @dart=2.12
import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:crypton/crypton.dart';
import 'package:icure_dart_sdk/api.dart';
import 'package:icure_dart_sdk/extended_api/data_owner_api.dart';
import 'package:icure_dart_sdk/util/binary_utils.dart';
import 'package:icure_dart_sdk/util/collection_utils.dart';
import 'package:icure_dart_sdk/util/functional_utils.dart';
import 'package:pointycastle/export.dart' as pointy;
import 'package:steel_crypt/steel_crypt.dart';
import 'package:tuple/tuple.dart';

Tuple2<String, String> generateRandomPrivateAndPublicKeyPair() {
  final kp = RSAKeypair.fromRandom();

  var strPriv = kp.privateKey.toPEM().replaceAllMapped(RegExp(r'-----.+?-----'), (match) => '').replaceAll('\n', '');
  var hexPriv = base64Decode(strPriv).toHexString();
  var strPub = kp.publicKey.toPEM().replaceAllMapped(RegExp(r'-----.+?-----'), (match) => '').replaceAll('\n', '');
  var hexPub = base64Decode(strPub).toHexString();

  return Tuple2(hexPriv, hexPub);
}

const IV_BYTE_LENGTH = 16;
final random = Random.secure();

abstract class CryptoConfig<D, K> {
  Crypto get crypto;

  Future<Tuple2<K, Uint8List?>> Function(D) get marshaller;

  Future<D> Function(K, Uint8List?) get unmarshaller;
}

abstract class Crypto {
  Future<Set<String>> decryptEncryptionKeys(String myId, Map<String, Set<DelegationDto>> keys);

  Future<Tuple2<String, DataOwnerDto?>> encryptAESKeyForHcp(String myId, String delegateId, String objectId, String secret);

  Future<Tuple2<String, DataOwnerDto?>> encryptValueForHcp(String myId, String delegateId, String objectId, String secret);
}

BaseCryptoConfig<DecryptedPatientDto, PatientDto> patientCryptoConfig(Crypto crypto) {
  return BaseCryptoConfig(
      crypto,
          (dec) async => Tuple2(PatientDto.fromJson(toJsonDeep(dec)..remove('note'))!, dec.note != null ? Uint8List.fromList(json.encode({'note': dec.note}).codeUnits) : null),
          (cry, data) async => DecryptedPatientDto.fromJson(toJsonDeep(cry)..addAll(data != null ? json.decode(String.fromCharCodes(data)) : {}))!
  );
}

BaseCryptoConfig<DecryptedContactDto, ContactDto> contactCryptoConfig(UserDto user, Crypto crypto) {
  return BaseCryptoConfig(crypto, (dec) async {
    var key = (await crypto.decryptEncryptionKeys(user.dataOwnerId()!, dec.encryptionKeys)).firstOrNull()?.formatAsKey().fromHexString();
    if (key == null) {
      throw FormatException("Cannot get encryption key for ${dec.id} and hcp ${user.dataOwnerId()}");
    }

    return Tuple2(
        ContactDto.fromJson({
          ...toJsonDeep(dec),
          'services': (await crypto.encryptServices(
              user.dataOwnerId()!,
              <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})},
              key,
              dec.services.toList()))
              .map((it) => toJsonDeep(it))
              .toList()
        })!,
        Uint8List.fromList(json.encode({}).codeUnits));
  }, (cry, data) async {
    var key = (await crypto.decryptEncryptionKeys(user.dataOwnerId()!, cry.encryptionKeys)).firstOrNull()?.formatAsKey().fromHexString();
    if (key == null) {
      throw FormatException("Cannot get encryption key for ${cry.id} and hcp ${user.dataOwnerId()}");
    }

    return DecryptedContactDto.fromJson({
      ...toJsonDeep(cry),
      'services': (await crypto.decryptServices(
          user.dataOwnerId()!,
          key,
          cry.services.toList())
      )
          .map((it) => toJsonDeep(it))
          .toList(),
      ...(data != null ? json.decode(String.fromCharCodes(data)) : {})
    })!;
  });
}

BaseCryptoConfig<DecryptedHealthElementDto, HealthElementDto> healthElementCryptoConfig(Crypto crypto) {
  return BaseCryptoConfig(crypto, (decryptedHealthElementDto) async {
    return Tuple2(HealthElementDto.fromJson(toJsonDeep(decryptedHealthElementDto))!, Uint8List.fromList(json.encode({}).codeUnits));
  }, (encryptedHealthElementDto, data) async {
    return DecryptedHealthElementDto.fromJson(toJsonDeep(encryptedHealthElementDto)..addAll(data != null ? json.decode(String.fromCharCodes(data)) : {}))!;
  });
}

BaseCryptoConfig<DecryptedDocumentDto, DocumentDto> documentCryptoConfig(Crypto crypto) {
  return BaseCryptoConfig(crypto, (decryptedDocumentDto) async {
    return Tuple2(DocumentDto.fromJson(toJsonDeep(decryptedDocumentDto))!, Uint8List.fromList(json.encode({}).codeUnits));
  }, (encryptedDocumentDto, data) async {
    return DecryptedDocumentDto.fromJson(toJsonDeep(encryptedDocumentDto)..addAll(data != null ? json.decode(String.fromCharCodes(data)) : {}))!;
  });
}

extension CryptoContact on Crypto {
  Future<List<ServiceDto>> encryptServices(String myId, Set<String> delegations, Uint8List? contactKey, List<DecryptedServiceDto> services) async {
    return await Future.wait(services.map((s) async {
      var key = contactKey ?? (await this.decryptEncryptionKeys(myId, s.encryptionKeys)).firstOrNull()?.formatAsKey().fromHexString();
      if (key == null) {
        throw FormatException("Cannot get encryption key for ${s.id} and hcp ${myId}");
      }

      if (s.content.entries.every((e) =>
      e.value.compoundValue.isNotEmpty &&
          e.value.stringValue == null &&
          e.value.documentId == null &&
          e.value.measureValue == null &&
          e.value.medicationValue == null &&
          e.value.booleanValue == null &&
          e.value.numberValue == null &&
          e.value.instantValue == null &&
          e.value.fuzzyDateValue == null &&
          e.value.binaryValue == null &&
          e.value.range.isEmpty)) {
        return ServiceDto.fromJson({
          ...toJsonDeep(s),
          'content': Map.fromEntries(await Future.wait(s.content.entries.map((e) async =>
              MapEntry(e.key, ContentDto(compoundValue: (await this.encryptServices(myId, delegations, contactKey, e.value.compoundValue)))))))
        })!;
      } else {
        return ServiceDto.fromJson(
            {...toJsonDeep(s), 'content': {}, 'encryptedSelf': base64.encoder.convert(Uint8List.fromList(json.encode({'content': s.content}).codeUnits).encryptAES(key))})!;
      }
    }));
  }

  Future<List<DecryptedServiceDto>> decryptServices(String myId, Uint8List? contactKey, List<ServiceDto> services) async {
    return Future.wait(services.map((s) async {
      var key = contactKey ?? (await this.decryptEncryptionKeys(myId, s.encryptionKeys)).firstOrNull()?.formatAsKey().fromHexString();
      if (key == null) {
        throw FormatException("Cannot get encryption key for ${s.id} and hcp ${myId}");
      }

      if (s.encryptedSelf != null) {
        final decryptedData = base64.decoder.convert(s.encryptedSelf!).decryptAES(key);
        return DecryptedServiceDto.fromJson(toJsonDeep(s)..addAll(toJsonDeep(json.decode(String.fromCharCodes(decryptedData)))))!;
      } else {
        return DecryptedServiceDto.fromJson({
          ...toJsonDeep(s),
          'content': Map.fromEntries((await Future.wait(s.content.entries.map((e) async =>
              MapEntry(e.key, {'compoundValue': (await decryptServices(myId, contactKey, e.value.compoundValue)).map((it) => toJsonDeep(it)).toList()})))))
        })!;
      }
    }));
  }
}

class BaseCryptoConfig<D, K> implements CryptoConfig<D, K> {
  const BaseCryptoConfig(this.crypto, this.marshaller, this.unmarshaller);

  @override
  final Crypto crypto;
  @override
  final Future<Tuple2<K, Uint8List?>> Function(D) marshaller;
  @override
  final Future<D> Function(K, Uint8List?) unmarshaller;
}

class LocalCrypto implements Crypto {
  LocalCrypto(this.dataOwnerResolver, this.rsaKeyPairs);

  DataOwnerResolver dataOwnerResolver;
  Map<String, RSAKeypair> rsaKeyPairs;

  Map<String, Future<Uint8List?>> delegateHcpartyKeysCache = {};

  @override
  Future<Set<String>> decryptEncryptionKeys(String myId, Map<String, Set<DelegationDto>> keys) async {
    List<String?> decryptedKeys = await Future.wait((keys[myId] ?? {}).map((d) async {
      try {
        final delegateHcPartyKey = await getDelegateHcPartyKey(d.delegatedTo!, d.owner!, null);
        if (delegateHcPartyKey == null) {
          throw FormatException("Cannot find a hc party key");
        }
        return String.fromCharCodes(d.key!.keyFromHexString().decryptAES(delegateHcPartyKey)).split(":")[1];
      } catch (e) {
        return Future.value(null);
      }
    }));

    var parentId = (await dataOwnerResolver.getDataOwner(myId))?.parentId;
    if (parentId != null) {
      decryptEncryptionKeys(parentId, keys);
      return decryptedKeys.whereType<String>().toSet()..addAll(await decryptEncryptionKeys(parentId, keys));
    }
    return decryptedKeys.whereType<String>().toSet();
  }

  @override
  Future<Tuple2<String, DataOwnerDto?>> encryptAESKeyForHcp(String myId, String delegateId, String objectId, String secretKey) async {
    return encryptValueForHcp(myId, delegateId, objectId, secretKey.formatAsKey());
  }

  @override
  Future<Tuple2<String, DataOwnerDto?>> encryptValueForHcp(String myId, String delegateId, String objectId, String secret) async {
    final hcPartyKeyAndDataOwner = await getOrCreateHcPartyKey(myId, delegateId);
    final hcPartyKey = hcPartyKeyAndDataOwner.item1;

    return new Tuple2(Uint8List.fromList("$objectId:$secret".codeUnits).encryptAES(hcPartyKey).toHexString(), hcPartyKeyAndDataOwner.item2);
  }

  Future<Uint8List?> getDelegateHcPartyKey(String delegateId, String ownerId, RSAPrivateKey? myPrivateKey) async {
    Future<Uint8List?>? keyFuture = delegateHcpartyKeysCache[delegateId];
    if (keyFuture == null) {
      RSAPrivateKey? privateKey = myPrivateKey ?? rsaKeyPairs[delegateId]?.privateKey;
      if (privateKey == null) {
        throw FormatException("Missing key for hcp $delegateId");
      }

      keyFuture = dataOwnerResolver.getDataOwnerKeysForDelegate(delegateId).then((hcpk) async {
        final keyMap = await hcpk.let((hcpnn) => decryptHcPartyKeys(hcpnn, delegateId, privateKey));
        var response = keyMap[ownerId]?.item2;
        if (response == null) {
          throw FormatException("Missing share for $ownerId");
        }
        return response;
      });
      delegateHcpartyKeysCache[delegateId] = keyFuture;
    }
    return keyFuture;
  }

  Future<Uint8List?> getHcPartyKeyByOwner(String delegateId, String ownerId, RSAPrivateKey? myPrivateKey) async {
    RSAPrivateKey? privateKey = myPrivateKey ?? rsaKeyPairs[ownerId]?.privateKey;
    if (privateKey == null) {
      throw FormatException("Missing key for hcp $delegateId");
    }

    Future<Map<String, Tuple2<String, Uint8List>>?>? keyMapFuture = dataOwnerResolver.getDataOwner(ownerId).then((hcp) {
      var hcpnn = Map<String, String>.fromEntries(findKeysToDecrypt(hcp));
      return decryptHcPartyKeys(hcpnn, delegateId, privateKey);
    });

    final Map<String, Tuple2<String, Uint8List>>? keyMap = await keyMapFuture;

    if (keyMap == null) {
      throw FormatException("Unknown hcp $ownerId");
    }

    return keyMap[delegateId]?.item2;
  }

  Iterable<MapEntry<String, String>> findKeysToDecrypt(DataOwnerDto? dataOwner) {
    return dataOwner?.hcPartyKeys.entries.map<MapEntry<String, String>>((entry) => MapEntry<String, String>(entry.key, entry.value[0])) ??
        Iterable<MapEntry<String, String>>.empty();
  }

  Future<Tuple2<Uint8List, DataOwnerDto?>> getOrCreateHcPartyKey(String myId, String delegateId, {RSAPrivateKey? privateKey, RSAPublicKey? publicKey}) async {
    var myPublicKey = publicKey ?? rsaKeyPairs[myId]?.publicKey;
    var myPrivateKey = privateKey ?? rsaKeyPairs[myId]?.privateKey;

    if (myPublicKey == null) {
      throw FormatException("Missing public key for hcp $myId");
    }

    if (myPrivateKey == null) {
      throw FormatException("Missing private key for hcp $myId");
    }

    var aesKey = await getHcPartyKeyByOwner(delegateId, myId, myPrivateKey);

    if (aesKey == null) {
      var delegateDataOwner = await dataOwnerResolver.getDataOwner(delegateId);
      var delegatePublicKey = delegateDataOwner?.publicKey?.toPublicKey();
      if (delegatePublicKey == null) {
        throw FormatException("Unknown hcp $delegateId or missing public key");
      }

      final encryptorForMe = pointy.OAEPEncoding(pointy.RSAEngine())
        ..init(true, pointy.PublicKeyParameter<pointy.RSAPublicKey>(myPublicKey.asPointyCastle));
      final encryptorForDelegate = pointy.OAEPEncoding(pointy.RSAEngine())
        ..init(true, pointy.PublicKeyParameter<pointy.RSAPublicKey>(delegatePublicKey.asPointyCastle));

      final aesKey = Uint8List.fromList(List<int>.generate(32, (i) => random.nextInt(256)));

      var keyForMe = encryptorForMe.process(aesKey).toHexString();
      var keyForDelegate = encryptorForDelegate.process(aesKey).toHexString();

      return new Tuple2(aesKey, await dataOwnerResolver.updateDataOwnerWithNewDelegateKeyPair(myId, {
        delegateId: [keyForMe, keyForDelegate]
      }));
    } else {
      return new Tuple2(aesKey, null);
    }
  }

  Future<Map<String, Tuple2<String, Uint8List>>> decryptHcPartyKeys(Map<String, String> hcpKeys, String myId, RSAPrivateKey myPrivateKey) async {
    print('Decrypt ${hcpKeys.length} keys for ${myId}');
    final decryptor = pointy.OAEPEncoding(pointy.RSAEngine())
      ..init(false, pointy.PrivateKeyParameter<pointy.RSAPrivateKey>(myPrivateKey.asPointyCastle));
    print('decryptor initialised');
    var map = hcpKeys.map((k, v) => MapEntry(k, Tuple2(v, decryptor.process(v.fromHexString()))));
    print('decryption done');
    return map;
  }
}

extension aes on Uint8List {
  Uint8List decryptAES(Uint8List key) {
    var aesCrypt = AesCryptRaw(key: key, padding: PaddingAES.pkcs7);
    return aesCrypt.cbc.decrypt(enc: this.sublist(IV_BYTE_LENGTH), iv: this.sublist(0, IV_BYTE_LENGTH));
  }

  Uint8List encryptAES(Uint8List key) {
    var aesCrypt = AesCryptRaw(key: key, padding: PaddingAES.pkcs7);
    var iv = Uint8List.fromList(List<int>.generate(IV_BYTE_LENGTH, (i) => random.nextInt(256)));
    return (BytesBuilder()
      ..add(iv)
      ..add(aesCrypt.cbc.encrypt(inp: this, iv: iv)))
        .toBytes();
  }
}

extension rsa on pointy.OAEPEncoding {
  Uint8List process(Uint8List input) {
    final numBlocks = input.length ~/ this.inputBlockSize + ((input.length % this.inputBlockSize != 0) ? 1 : 0);

    final output = Uint8List(numBlocks * this.outputBlockSize);

    var inputOffset = 0;
    var outputOffset = 0;
    while (inputOffset < input.length) {
      final chunkSize = (inputOffset + this.inputBlockSize <= input.length) ? this.inputBlockSize : input.length - inputOffset;

      outputOffset += this.processBlock(input, inputOffset, chunkSize, output, outputOffset);

      inputOffset += chunkSize;
    }

    return (output.length == outputOffset) ? output : output.sublist(0, outputOffset);
  }
}
