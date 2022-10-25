import 'dart:math';
import 'package:icure_dart_sdk/api.dart';

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
