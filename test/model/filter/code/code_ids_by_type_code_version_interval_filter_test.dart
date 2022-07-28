import 'dart:io';
import 'dart:math';

import 'package:icure_dart_sdk/api.dart';
import 'package:test/test.dart';

import '../../../util/test_utils.dart';
import '../../../util/test_utils_backend.dart';

void main() {
  final TestBackend backend = RemoteTestBackend.getInstance(
      Platform.environment["ICURE_USR"]!,
      Platform.environment["ICURE_PWD"]!,
      Platform.environment["ICURE_COUCHDB_USERNAME"]!,
      Platform.environment["ICURE_COUCHDB_PASSWORD"]!,
      Platform.environment["TEST_ICURE_URL"]!,
      Platform.environment["ICURE_COUCHDB_URL"]!
  );
  final testBatchSize = 90;
  final codeGenerator = CodeBatchGenerator();
  final testBatch = { for (var code in codeGenerator.createBatchOfUniqueCodes(testBatchSize)) code.id : code };
  final testBatchIds = testBatch.keys.toList();
  final random = new Random();
  CodeApi? codeApi;

  setUpAll(() async {
    await backend.init();

    final client = ApiClient.basic(backend.iCureURL, backend.iCureUser, backend.iCurePwd);
    codeApi = CodeApi(client);

    await Future.forEach(testBatch.values, (CodeDto code) async { await codeApi!.createCode(code);});
    testBatchIds.sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()));
    print("Successfully set up test backend!");
  });

  tearDownAll(() async {
    await backend.shutdown(
        ids: testBatchIds,
        dbPrefix: Platform.environment["ICURE_COUCHDB_PREFIX"]!
    );
  });

  group("CodeIdsByTypeCodeVersionIntervalFilter test", () {
    test("If all parameters are null, all the code ids are returned", () async {
      final filteredIds = await codeApi!.filterCodesBy(
          filterChainCode: FilterChain(
            CodeIdsByTypeCodeVersionIntervalFilter()
          )
      );
      assert(filteredIds != null);
      assert(filteredIds!.rows.length == testBatchSize);
      filteredIds!.rows.forEach((code) {
        assert(testBatchIds.contains(code.id));
      });
    });

    test("If the start ComplexKey is specified only the results that come after it are returned", () async {
      final startIndex = random.nextInt(testBatchIds.length);
      final startCode = testBatch[testBatchIds[startIndex]];
      final filteredIds = await codeApi!.filterCodesBy(
          filterChainCode: FilterChain(
              CodeIdsByTypeCodeVersionIntervalFilter(
                startType: startCode!.type,
                startCode: startCode.code,
                startVersion: startCode.version
              )
          )
      );
      assert(filteredIds != null);
      assert(filteredIds!.rows.length == (testBatchSize-startIndex));
      filteredIds!.rows.forEach((code) {
        assert(testBatchIds.contains(code.id));
      });
    });

    test("If the end ComplexKey is specified only the results that come before it are returned", () async {
      final endIndex = random.nextInt(testBatchIds.length);
      final endCode = testBatch[testBatchIds[endIndex]];
      final filteredIds = await codeApi!.filterCodesBy(
          filterChainCode: FilterChain(
              CodeIdsByTypeCodeVersionIntervalFilter(
                  endType: endCode!.type,
                  endCode: endCode.code,
                  endVersion: endCode.version
              )
          )
      );
      assert(filteredIds != null);
      assert(filteredIds!.rows.length == (endIndex+1));
      filteredIds!.rows.forEach((code) {
        assert(testBatchIds.contains(code.id));
      });
    });

    test("If the start and end ComplexKey are specified only the results that come between them are returned", () async {
      final startIndex = random.nextInt(testBatchIds.length~/2);
      final startCode = testBatch[testBatchIds[startIndex]];
      final endIndex = random.nextInt(testBatchIds.length~/2) + testBatchIds.length~/2;
      final endCode = testBatch[testBatchIds[endIndex]];
      final filteredIds = await codeApi!.filterCodesBy(
          filterChainCode: FilterChain(
              CodeIdsByTypeCodeVersionIntervalFilter(
                  startType: startCode!.type,
                  startCode: startCode.code,
                  startVersion: startCode.version,
                  endType: endCode!.type,
                  endCode: endCode.code,
                  endVersion: endCode.version
              )
          )
      );
      assert(filteredIds != null);
      assert(filteredIds!.rows.length == (endIndex+1-startIndex));
      filteredIds!.rows.forEach((code) {
        assert(testBatchIds.contains(code.id));
      });
    });
  });
}