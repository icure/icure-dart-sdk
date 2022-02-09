// @dart=2.12
part of openapi.api;

const IV_BYTE_LENGTH = 16;
final random = Random.secure();

abstract class CryptoConfig<D, K> {
  Crypto get crypto;

  Future<Tuple2<K, Uint8List>> Function(D) get marshaller;

  Future<D> Function(K, Uint8List?) get unmarshaller;
}

abstract class Crypto {
  Future<Set<String>> decryptEncryptionKeys(String myId, Map<String, Set<DelegationDto>> keys);

  Future<String> encryptAESKeyForHcp(String myId, String delegateId, String objectId, String secret);

  Future<String> encryptValueForHcp(String myId, String delegateId, String objectId, String secret);
}

PatientCryptoConfig patientCryptoConfig(Crypto crypto) {
  return PatientCryptoConfig(
      crypto,
          (dec) async =>
          Tuple2(PatientDto.fromJson(dec.toJson()
            ..remove('note'))!,
              Uint8List.fromList(json
                  .encode({'note': dec.note})
                  .codeUnits)),
          (cry, data) async =>
      DecryptedPatientDto.fromJson(cry.toJson()
        ..addAll(data != null ? json.decode(String.fromCharCodes(data)) : {}))!);
}

class PatientCryptoConfig implements CryptoConfig<DecryptedPatientDto, PatientDto> {
  const PatientCryptoConfig(this.crypto, this.marshaller, this.unmarshaller);

  @override
  final Crypto crypto;
  @override
  final Future<Tuple2<PatientDto, Uint8List>> Function(DecryptedPatientDto)
  marshaller;
  @override
  final Future<DecryptedPatientDto> Function(PatientDto, Uint8List?)
  unmarshaller;
}

class LocalCrypto implements Crypto {
  LocalCrypto(this.healthcarePartyApi, this.rsaKeyPairs);

  HealthcarePartyApi healthcarePartyApi;
  Map<String, AsymmetricKeyPair<RSAPublicKey, RSAPrivateKey>> rsaKeyPairs;

  Map<String, Future<HealthcarePartyDto?>> hcParties = {};
  Map<String, Future<Map<String, Tuple2<String, Uint8List>>?>> ownerHcpartyKeysCache = {};
  Map<String, Future<Map<String, Tuple2<String, Uint8List>>?>> delegateHcpartyKeysCache = {};

  @override
  Future<Set<String>> decryptEncryptionKeys(String myId, Map<String, Set<DelegationDto>> keys) async {
    List<String?> decryptedKeys = await Future.wait((keys[myId] ?? {}).map((d) {
      try {
        Future<String> res = getDelegateHcPartyKey(d.delegatedTo!, d.owner!, null)
            .then((k) => String.fromCharCodes(d.key!.keyFromHexString().decryptAES(k)).split(":")[1]);
        return res;
      } catch (e) {
        return Future.value(null);
      }
    }));

    var parentId = (await getHcParty(myId))?.parentId;
    if (parentId != null) {
      decryptEncryptionKeys(parentId, keys);
      return decryptedKeys.whereType<String>().toSet()..addAll(await decryptEncryptionKeys(parentId, keys));
    }
    return decryptedKeys.whereType<String>().toSet();
  }

  @override
  Future<String> encryptAESKeyForHcp(String myId, String delegateId, String objectId, String secretKey) async {
    return encryptValueForHcp(myId, delegateId, objectId, secretKey.formatAsKey());
  }

  @override
  Future<String> encryptValueForHcp(String myId, String delegateId, String objectId, String secret) async {
    var hcPartyKey = await getOrCreateHcPartyKey(myId, delegateId);
    return Uint8List.fromList("$objectId:$secret".codeUnits).encryptAES(hcPartyKey).toHexString();
  }

  Future<HealthcarePartyDto?> getHcParty(String healthcarePartyId) {
    var hcPartyFuture = hcParties[healthcarePartyId];
    if (hcPartyFuture == null) {
      try {
        hcPartyFuture = healthcarePartyApi.getHealthcareParty(healthcarePartyId);
      } catch (e) {
        hcPartyFuture = Future.value(null);
      }
      hcParties[healthcarePartyId] = hcPartyFuture;
    }
    return hcPartyFuture;
  }

  Future<HealthcarePartyDto?> updateHcParty(String healthcarePartyId, Future<HealthcarePartyDto?> Function(HealthcarePartyDto hcp) updater) async {
    var hcParty = await getHcParty(healthcarePartyId);
    if (hcParty == null) {
      return null;
    }
    return await (hcParties[healthcarePartyId] = updater(hcParty));
  }


  Future<Uint8List> getDelegateHcPartyKey(String delegateId, String ownerId, RSAPrivateKey? myPrivateKey) async {
    RSAPrivateKey? privateKey = myPrivateKey ?? rsaKeyPairs[delegateId]?.privateKey;
    if (privateKey == null) {
      throw FormatException("Missing key for hcp $delegateId");
    }
    Future<Map<String, Tuple2<String, Uint8List>>?>? keyMapFuture = delegateHcpartyKeysCache[delegateId];

    if (keyMapFuture == null) {
      keyMapFuture = healthcarePartyApi.getHcPartyKeysForDelegate(delegateId).then((hcpk) {
        return hcpk?.let((hcpnn) => decryptHcPartyKeys(hcpnn, delegateId, privateKey));
      });
      delegateHcpartyKeysCache[delegateId] = keyMapFuture;
    }

    final Map<String, Tuple2<String, Uint8List>>? keyMap = await keyMapFuture;

    if (keyMap == null) {
      throw FormatException("Unknown hcp $delegateId");
    }

    var response = keyMap[ownerId]?.item2;
    if (response == null) {
      throw FormatException("Missing share for $ownerId");
    }
    return response;
  }

  Future<Uint8List?> getHcPartyKeyByOwner(String delegateId, String ownerId, RSAPrivateKey? myPrivateKey) async {
    RSAPrivateKey? privateKey = myPrivateKey ?? rsaKeyPairs[ownerId]?.privateKey;
    if (privateKey == null) {
      throw FormatException("Missing key for hcp $delegateId");
    }
    Future<Map<String, Tuple2<String, Uint8List>>?>? keyMapFuture =
    ownerHcpartyKeysCache[ownerId];

    if (keyMapFuture == null) {
      keyMapFuture =
          getHcParty(ownerId).then((hcp) {
            return hcp?.hcPartyKeys.map((key, value) => MapEntry(key, value[0]))
                .let((hcpnn) => decryptHcPartyKeys(hcpnn, delegateId, privateKey));
          });
      ownerHcpartyKeysCache[ownerId] = keyMapFuture;
    }

    final Map<String, Tuple2<String, Uint8List>>? keyMap = await keyMapFuture;

    if (keyMap == null) {
      throw FormatException("Unknown hcp $ownerId");
    }

    return keyMap[delegateId]?.item2;
  }

  Future<Uint8List> getOrCreateHcPartyKey(String myId, String delegateId,
      {RSAPrivateKey? privateKey, RSAPublicKey? publicKey}) async {
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
      var delegatePublicKey = (await getHcParty(delegateId))?.publicKey?.toPublicKey();
      if (delegatePublicKey == null) {
        throw FormatException("Unknown hcp $delegateId or missing public key");
      }
      final encryptorForMe = OAEPEncoding(RSAEngine())
        ..init(true, PublicKeyParameter<RSAPublicKey>(myPublicKey));
      final encryptorForDelegate = OAEPEncoding(RSAEngine())
        ..init(true, PublicKeyParameter<RSAPublicKey>(delegatePublicKey));

      final aesKey = Uint8List.fromList(List<int>.generate(32, (i) => random.nextInt(256)));

      var keyForMe = encryptorForMe.process(aesKey).toHexString();
      var keyForDelegate = encryptorForDelegate.process(aesKey).toHexString();

      updateHcParty(myId, (hcp) async => healthcarePartyApi.modifyHealthcareParty(hcp.also((that) {
        that.hcPartyKeys = that.hcPartyKeys..addAll({delegateId:[keyForMe, keyForDelegate]});
      })));
      return aesKey;
    } else {
      return aesKey;
    }
  }


  Future<Map<String, Tuple2<String, Uint8List>>> decryptHcPartyKeys(Map<String, String> hcpKeys,
      String myId,
      RSAPrivateKey myPrivateKey) async {
    final decryptor = OAEPEncoding(RSAEngine())
      ..init(false, PrivateKeyParameter<RSAPrivateKey>(myPrivateKey));
    return hcpKeys.map((k, v) =>
        MapEntry(k, Tuple2(v, decryptor.process(k.keyFromHexString()))));
  }
}

extension rsa on OAEPEncoding {
  Uint8List process(Uint8List input) {
    final numBlocks = input.length ~/ this.inputBlockSize +
        ((input.length % this.inputBlockSize != 0) ? 1 : 0);

    final output = Uint8List(numBlocks * this.outputBlockSize);

    var inputOffset = 0;
    var outputOffset = 0;
    while (inputOffset < input.length) {
      final chunkSize = (inputOffset + this.inputBlockSize <= input.length)
          ? this.inputBlockSize
          : input.length - inputOffset;

      outputOffset += this
          .processBlock(input, inputOffset, chunkSize, output, outputOffset);

      inputOffset += chunkSize;
    }

    return (output.length == outputOffset)
        ? output
        : output.sublist(0, outputOffset);
  }
}

extension aes on Uint8List {
  Uint8List decryptAES(Uint8List key) {
    var iv = this.sublist(0, IV_BYTE_LENGTH);
    var cipherText = this.sublist(IV_BYTE_LENGTH);

    final cbc = CBCBlockCipher(AESEngine())
      ..init(false, ParametersWithIV(KeyParameter(key), iv)); // false=decrypt
    final paddedPlainText = Uint8List(cipherText.length); // allocate space

    var offset = 0;
    while (offset < cipherText.length) {
      offset += cbc.processBlock(cipherText, offset, paddedPlainText, offset);
    }
    assert(offset == cipherText.length);
    return paddedPlainText;
  }

  Uint8List encryptAES(Uint8List key) {
    final paddedPlaintext = this;
    var iv = Uint8List.fromList(List<int>.generate(IV_BYTE_LENGTH, (i) => random.nextInt(256)));

    final cbc = CBCBlockCipher(AESEngine())
      ..init(true, ParametersWithIV(KeyParameter(key), iv)); // true=encrypt
    final cipherText = Uint8List(paddedPlaintext.length); // allocate space

    var offset = 0;
    while (offset < paddedPlaintext.length) {
      offset += cbc.processBlock(paddedPlaintext, offset, cipherText, offset);
    }
    assert(offset == paddedPlaintext.length);

    return cipherText;
  }
}
