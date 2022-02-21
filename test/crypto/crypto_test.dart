@Timeout(Duration(hours: 1))
import 'dart:convert';
import 'dart:io';

import 'package:crypton/crypton.dart';
import 'package:icure_dart_sdk/api.dart';
import 'package:icure_dart_sdk/crypto/crypto.dart';
import 'package:icure_dart_sdk/extended_api/data_owner_api.dart';
import "package:test/test.dart";
import 'package:icure_dart_sdk/util/binary_utils.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

void main() {

  group('tests key generation', () {
    test('test rsa gen', () async {
      final kp = RSAKeypair.fromRandom();

      var strPriv = kp.privateKey.toPEM().replaceAllMapped(RegExp(r'-----.+?-----'), (match) => '').replaceAll('\n', '');
      var hexPriv = base64Decode(strPriv).toHexString();
      var strPub = kp.publicKey.toPEM().replaceAllMapped(RegExp(r'-----.+?-----'), (match) => '').replaceAll('\n', '');
      var hexPub = base64Decode(strPub).toHexString();

      var priv = hexPriv.toPrivateKey();
      var pub = hexPub.toPublicKey();

      // Then
      expect(hexPriv.substring(0, 2), '30');
      expect(hexPub.substring(0, 2), '30');
    });
  });
}
