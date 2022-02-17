// @dart=2.12
import 'dart:convert';
import 'dart:typed_data';
import 'package:convert/convert.dart';
import 'package:crypton/crypton.dart';

extension BinEncoding on Uint8List {
  String toHexString() {
    return hex.encoder.convert(this);
  }

  RSAPrivateKey toPrivateKey() {
    return RSAPrivateKey.fromString(this.toHexString());
  }

  RSAPublicKey toPublicKey() {
    return RSAPublicKey.fromString(this.toHexString());
  }

}

extension StrEncoding on String {
  String formatAsKey() {
    return this.replaceAllMapped(
        RegExp('([0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12})'),
        (match) =>
            match.group(1)!.toLowerCase() +
            match.group(2)!.toLowerCase() +
            match.group(3)!.toLowerCase() +
            match.group(4)!.toLowerCase() +
            match.group(5)!.toLowerCase());
  }

  Uint8List fromHexString() {
    try {
      return Uint8List.fromList(hex.decoder.convert(this));
    } catch(e) {
      throw e;
    }
  }

  Uint8List keyFromHexString() {
    final cleaned = this.replaceAll("-", "");
    if (cleaned.length % 2 != 0) {
      throw FormatException('Must have an even length');
    }
    return cleaned.fromHexString();
  }

  RSAPrivateKey toPrivateKey() {
    return RSAPrivateKey.fromString(base64.encoder.convert(this.fromHexString()));
  }

  RSAPublicKey toPublicKey() {
    return RSAPublicKey.fromString(base64.encoder.convert(this.fromHexString()));
  }
}
