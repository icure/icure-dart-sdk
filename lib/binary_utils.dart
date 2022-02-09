// @dart=2.12
part of openapi.api;

extension BinEncoding on Uint8List {
  String toHexString() {
    return hex.encoder.convert(this);
  }

  RSAPrivateKey toPrivateKey() {
    return this.toHexString().toPrivateKey();
  }

  RSAPublicKey toPublicKey() {
    var asn1Parser = new ASN1Parser(this);
    var topLevelSeq = asn1Parser.nextObject() as ASN1Sequence;
    var publicKeySeq;
    if (topLevelSeq.elements![1].runtimeType == ASN1BitString) {
      var publicKeyBitString = topLevelSeq.elements![1] as ASN1BitString;

      var publicKeyAsn =
      ASN1Parser(publicKeyBitString.stringValues as Uint8List?);
      publicKeySeq = publicKeyAsn.nextObject() as ASN1Sequence;
    } else {
      publicKeySeq = topLevelSeq;
    }
    var modulus = publicKeySeq.elements![0] as ASN1Integer;
    var exponent = publicKeySeq.elements![1] as ASN1Integer;

    var rsaPublicKey = RSAPublicKey(modulus.integer!, exponent.integer!);

    return rsaPublicKey;
  }

}

extension StrEncoding on String {
  String formatAsKey() {
    return this.replaceAllMapped(
        RegExp('([0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}-)'),
        (match) =>
            match.group(1)!.toLowerCase() +
            match.group(2)!.toLowerCase() +
            match.group(3)!.toLowerCase() +
            match.group(4)!.toLowerCase() +
            match.group(5)!.toLowerCase());
  }

  Uint8List fromHexString() {
    return Uint8List.fromList(hex.decoder.convert(this));
  }

  Uint8List keyFromHexString() {
    final cleaned = this.replaceAll("-", "");
    if (cleaned.length % 2 != 0) {
      throw FormatException('Must have an even length');
    }
    return cleaned.fromHexString();
  }

  RSAPrivateKey toPrivateKey() {
    var buf = this.fromHexString();
    var hex = this;
    if (!hex.startsWith('3082') ||
        !hex.substring(8).startsWith('0201000282010100')) {
      hex = hex.substring(52);
      buf = hex.fromHexString();
    }
    var asn1Parser = ASN1Parser(buf);
    var topLevelSeq = asn1Parser.nextObject() as ASN1Sequence;
    //ASN1Object version = topLevelSeq.elements[0];
    //ASN1Object algorithm = topLevelSeq.elements[1];
    var privateKey = topLevelSeq.elements![2];

    asn1Parser = ASN1Parser(privateKey.valueBytes);
    var pkSeq = asn1Parser.nextObject() as ASN1Sequence;

    var modulus = pkSeq.elements![1] as ASN1Integer;
    //ASN1Integer publicExponent = pkSeq.elements[2] as ASN1Integer;
    var privateExponent = pkSeq.elements![3] as ASN1Integer;
    var p = pkSeq.elements![4] as ASN1Integer;
    var q = pkSeq.elements![5] as ASN1Integer;
    //ASN1Integer exp1 = pkSeq.elements[6] as ASN1Integer;
    //ASN1Integer exp2 = pkSeq.elements[7] as ASN1Integer;
    //ASN1Integer co = pkSeq.elements[8] as ASN1Integer;

    final rsaPrivateKey = RSAPrivateKey(
        modulus.integer!, privateExponent.integer!, p.integer, q.integer);

    return rsaPrivateKey;
  }

  RSAPublicKey toPublicKey() {
    return this.fromHexString().toPublicKey();
  }
}
