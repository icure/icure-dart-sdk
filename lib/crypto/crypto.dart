// @dart=2.0
part of openapi.api;

abstract class CryptoConfig<D,K> {
  Crypto get crypto;
  Future<Tuple2<K, Uint8List>> Function(D) get marshaller;
  Future<D> Function(K, Uint8List) get unmarshaller;
}

abstract class Crypto {
  Future<Set<String>> decryptEncryptionKeys(
      String myId, Map<String, Set<DelegationDto>> keys);

  Future<String> encryptAESKeyForHcp(
      String myId, String delegateId, String objectId, String secret);

  Future<String> encryptValueForHcp(
      String myId, String delegateId, String objectId, String secret);
}

class PatientCryptoConfig implements CryptoConfig<DecryptedPatientDto, PatientDto> {
  PatientCryptoConfig(this.crypto, this.marshaller, this.unmarshaller);

  @override
  final Crypto crypto;
  @override
  final Future<Tuple2<PatientDto, Uint8List>> Function(DecryptedPatientDto) marshaller;
  @override
  final Future<DecryptedPatientDto> Function(PatientDto, Uint8List) unmarshaller;

}

class LocalCrypto implements Crypto {
  @override
  Future<Set<String>> decryptEncryptionKeys(
      String myId, Map<String, Set<DelegationDto>> keys) async {
    // TODO: implement decryptEncryptionKeys
    throw UnimplementedError();
  }

  @override
  Future<String> encryptAESKeyForHcp(
      String myId, String delegateId, String objectId, String secret) async {
    // TODO: implement encryptAESKeyForHcp
    throw UnimplementedError();
  }

  @override
  Future<String> encryptValueForHcp(
      String myId, String delegateId, String objectId, String secret) async {
    // TODO: implement encryptValueForHcp
    throw UnimplementedError();
  }
}
