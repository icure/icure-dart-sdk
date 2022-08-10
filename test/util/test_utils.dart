
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:crypton/crypton.dart';
import 'package:icure_dart_sdk/api.dart';
import 'package:icure_dart_sdk/crypto/crypto.dart';
import 'package:icure_dart_sdk/extended_api/data_owner_resolver.dart';
import 'package:icure_dart_sdk/util/binary_utils.dart';
import 'package:tuple/tuple.dart';

class TestUtils {

  static Tuple2<String, String> generateRandomPrivateAndPublicKeyPair() {
    final kp = RSAKeypair.fromRandom();

    var strPriv = kp.privateKey.toPEM().replaceAllMapped(RegExp(r'-----.+?-----'), (match) => '').replaceAll('\n', '');
    var hexPriv = base64Decode(strPriv).toHexString();
    var strPub = kp.publicKey.toPEM().replaceAllMapped(RegExp(r'-----.+?-----'), (match) => '').replaceAll('\n', '');
    var hexPub = base64Decode(strPub).toHexString();

    return Tuple2(hexPriv, hexPub);
  }

  static Future<LocalCrypto> localCrypto(DataOwnerResolver dataOwnerResolver, UserDto user, HealthcarePartyDto hcp,
      {String? hcpKeyFileName = "782f1bcd-9f3f-408a-af1b-cd9f3f908a98-icc-priv.2048.key"}) async {
    var fileUri = Uri.file("test/resources/keys/${hcpKeyFileName}", windows: false);
    var hcpKeyFile = File.fromUri(fileUri);

    var hcpPrivateKey = (await hcpKeyFile.readAsString(encoding: utf8)).toPrivateKey();
    var keyPairs = {user.healthcarePartyId!: RSAKeypair(hcpPrivateKey)};

    return LocalCrypto(dataOwnerResolver, keyPairs);
  }

  static Future<UsernamePassword> credentials({String? credentialsFilePath = "test/resources/.credentials"}) async {
    var fileUri = Uri.file(credentialsFilePath!, windows: false);
    var credentialsFile = File.fromUri(fileUri);

    return UsernamePassword.fromJson(json.decode(await credentialsFile.readAsString(encoding: utf8)))!;
  }
}

class UsernamePassword {
  UsernamePassword({required this.username, required this.password});

  String username;
  String password;

  static UsernamePassword? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return UsernamePassword(
          username: mapValueOfType<String>(json, r'username')!,
          password: mapValueOfType<String>(json, r'password')!
      );
    }
    return null;
  }
}

class CodeBatchGenerator {

  final types = ["SNOMED", "LOINC", "TESTCODE", "DEEPSECRET"];
  final random = new Random();
  final chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890'; // pragma: allowlist secret

  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => chars.codeUnitAt(random.nextInt(chars.length))));

  List<CodeDto> createBatchOfUniqueCodes(int size) {
    return new List<CodeDto>.generate(size, (index) {
      final type = types[random.nextInt(types.length)];
      final code = getRandomString(20);
      final version = random.nextInt(10).toString();
      return new CodeDto(
        id: "${type}|${code}|${version}",
        type: type,
        code: code,
        version: version
      );
    });
  }

}
