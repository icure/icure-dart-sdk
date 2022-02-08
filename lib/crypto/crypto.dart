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
      (dec) async => Tuple2(PatientDto.fromJson(dec.toJson()..remove('note'))!, Uint8List.fromList(json.encode({ 'note': dec.note }).codeUnits)),
      (cry, data) async => DecryptedPatientDto.fromJson(cry.toJson()..addAll(json.decode(String.fromCharCodes(data))))!
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

  Map<String, AsymmetricKeyPair<RSAPublicKey, RSAPrivateKey>> rsaKeyPairs = <String, AsymmetricKeyPair<RSAPublicKey, RSAPrivateKey>>{}

  ExpireCache<String, Future<HealthcarePartyDto>> hcParties = ExpireCache<String, Future<HealthcarePartyDto>>(expireDuration: Duration(seconds: 300), sizeLimit: 120);
  ExpireCache<String, Future<Map<String, Tuple2<String, Uint8List>>>> ownerHcpartyKeysCache = ExpireCache<String, Future<Map<String, Tuple2<String, Uint8List>>>>(expireDuration: Duration(seconds: 300), sizeLimit: 120);
  ExpireCache<String, Future<Map<String, Tuple2<String, Uint8List>>>> delegateHcpartyKeysCache = ExpireCache<String, Future<Map<String, Tuple2<String, Uint8List>>>>(expireDuration: Duration(seconds: 300), sizeLimit: 120);

  @override
  Future<Set<String>> decryptEncryptionKeys(String myId,
      Map<String, Set<DelegationDto>> keys) async {
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
    RSAPrivateKey privateKey = myPrivateKey ?? rsaKeyPairs[delegateId]?. ?? throw IllegalArgumentException("Missing key for hcp $delegateId")
  val keyMap: Map<String, Pair<String, ByteArray>> =
  delegateHcpartyKeysCache.defGet(delegateId) {
    hcpartyApi.getHcPartyKeysForDelegate(delegateId)?.decryptHcPartyKeys(delegateId, privateKey)
  } ?: throw IllegalArgumentException("Unknown hcp $delegateId")

  return keyMap[ownerId]?.second ?: throw IllegalArgumentException("Missing share for $ownerId")
}

}
