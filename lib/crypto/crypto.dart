// @dart=2.12
part of openapi.api;

abstract class CryptoConfig<D, K> {
  Crypto get crypto;

  Future<Tuple2<K, Uint8List>> Function(D) get marshaller;

  Future<D> Function(K, Uint8List) get unmarshaller;
}

abstract class Crypto {
  Future<Set<String>> decryptEncryptionKeys(String myId,
      Map<String, Set<DelegationDto>> keys);

  Future<String> encryptAESKeyForHcp(String myId, String delegateId,
      String objectId, String secret);

  Future<String> encryptValueForHcp(String myId, String delegateId,
      String objectId, String secret);
}

PatientCryptoConfig patientCryptoConfig(Crypto crypto) {
  return PatientCryptoConfig(
      crypto,
          (dec) async =>
          Tuple2(PatientDto.fromJson(dec.toJson()
            ..remove('note'))!, Uint8List.fromList(json
              .encode({ 'note': dec.note})
              .codeUnits)),
          (cry, data) async =>
      DecryptedPatientDto.fromJson(cry.toJson()
        ..addAll(json.decode(String.fromCharCodes(data))))!
  );
}

class PatientCryptoConfig
    implements CryptoConfig<DecryptedPatientDto, PatientDto> {
  const PatientCryptoConfig(this.crypto,
      this.marshaller,
      this.unmarshaller);

  @override
  final Crypto crypto;
  @override
  final Future<
      Tuple2<PatientDto, Uint8List>> Function(DecryptedPatientDto) marshaller;
  @override
  final Future<
      DecryptedPatientDto> Function(PatientDto, Uint8List) unmarshaller;

}

class LocalCrypto implements Crypto {
  LocalCrypto(this.healthcarePartyApi, this.rsaKeyPairs)

  HealthcarePartyApi healthcarePartyApi;
  Map<String, AsymmetricKeyPair<RSAPublicKey, RSAPrivateKey>> rsaKeyPairs;

  Map<String, Future<HealthcarePartyDto>> hcParties = <String,Future<HealthcarePartyDto?>>{};
  Map<String,
      Future<Map<String,
          Tuple2<String, Uint8List>>?>> ownerHcpartyKeysCache = <
      String,
      Future<Map<String, Tuple2<String, Uint8List>>>>{};
  Map<String,
      Future<Map<String,
          Tuple2<String, Uint8List>>?>> delegateHcpartyKeysCache = <
      String,
      Future<Map<String, Tuple2<String, Uint8List>>>>{};

  @override
  Future<Set<String>> decryptEncryptionKeys(String myId, Map<String, Set<DelegationDto>> keys) async {
    return keys[myId].map((d) {
      try {
        return getDelegateHcPartyKey(d.delegatedTo!, d.owner!)?.let((k) =>
        decryptAES(d.key!.keyFromHexString(), k).toString(Charsets.UTF_8)
            .split(":")[1]);
      } catch (e) {
        return null;
      }
    }).toSet()
  }

  @override
  Future<String> encryptAESKeyForHcp(String myId, String delegateId,
      String objectId, String secret) async {
    // TODO: implement encryptAESKeyForHcp
    throw UnimplementedError();
  }

  @override
  Future<String> encryptValueForHcp(String myId, String delegateId,
      String objectId, String secret) async {
    // TODO: implement encryptValueForHcp
    throw UnimplementedError();
  }

  Future<Uint8List> getDelegateHcPartyKey(String delegateId, String ownerId, RSAPrivateKey? myPrivateKey) async {
    RSAPrivateKey? privateKey = myPrivateKey ??
        rsaKeyPairs[delegateId]?.privateKey;
    if (privateKey == null) {
      throw FormatException("Missing key for hcp $delegateId");
    }
    final Map<String, Tuple2<String, Uint8List>>? keyMap = await (delegateHcpartyKeysCache[delegateId] ?? healthcarePartyApi.getHcPartyKeysForDelegate(delegateId)
            .then((hcpk) {
              return hcpk?.let((hcpnn) => decryptHcPartyKeys(hcpnn, delegateId, privateKey));
            }).also((v) { delegateHcpartyKeysCache[delegateId] = v }));

    if (keyMap == null) {
     throw FormatException("Unknown hcp $delegateId")
    }

    return keyMap![ownerId]?.second ? : throw IllegalArgumentException("Missing share for $ownerId")
  }

  Future<Map<String, Tuple2<String, Uint8List>>> decryptHcPartyKeys(Map<String, String> hcpKeys, String myId, RSAPrivateKey myPrivateKey) async {
    final decryptor = OAEPEncoding(RSAEngine())..init(false, PrivateKeyParameter<RSAPrivateKey>(myPrivateKey));
    return hcpKeys.map((k,v) => MapEntry(k, Tuple2(v,decryptor.process(k.keyFromHexString()))));
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

      outputOffset += this.processBlock(
          input, inputOffset, chunkSize, output, outputOffset);

      inputOffset += chunkSize;
    }

    return (output.length == outputOffset)
        ? output
        : output.sublist(0, outputOffset);
  }
}
