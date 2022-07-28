//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'dart:io' as io;

import 'package:collection/collection.dart';
import 'package:icure_dart_sdk/api.dart';
import 'package:test/test.dart';

import '../util/test_utils.dart';
import '../util/test_utils_backend.dart';


/// tests for CodeApi
void main() {
  final TestBackend backend = RemoteTestBackend.getInstance(
      io.Platform.environment["ICURE_USR"]!,
      io.Platform.environment["ICURE_PWD"]!,
      io.Platform.environment["ICURE_COUCHDB_USERNAME"]!,
      io.Platform.environment["ICURE_COUCHDB_PASSWORD"]!,
      io.Platform.environment["TEST_ICURE_URL"]!,
      io.Platform.environment["ICURE_COUCHDB_URL"]!
  );
  final codeGenerator = CodeBatchGenerator();
  List<String> generatedIds = [];
  CodeApi? codeApi;

  setUpAll(() async {
    await backend.init();

    final client = ApiClient.basic(
        backend.iCureURL, backend.iCureUser, backend.iCurePwd);
    codeApi = CodeApi(client);
  });

  tearDownAll(() async {
    await backend.shutdown(
        ids: generatedIds,
        dbPrefix: io.Platform.environment["ICURE_COUCHDB_PREFIX"]!
    );
  });

  group('tests for CodeApi', () {
    // Create a Code
    //
    // Type, Code and Version are required.
    //
    //Future<CodeDto> createCode(CodeDto codeDto) async
    test('test createCode', () async {
      final code = codeGenerator.createBatchOfUniqueCodes(1)[0];
      final createdCode = await codeApi!.createCode(code);
      assert(createdCode != null);
      assert(createdCode!.id == code.id);
      generatedIds = generatedIds + [createdCode!.id];
    });

    // Create a batch of codes
    //
    // Create a batch of code entities. Fields Type, Code and Version are required for each code.
    //
    //Future<List<CodeDto>> createCodes(List<CodeDto> codeDto) async
    test('test createCodes', () async {
      final codeBatch = codeGenerator.createBatchOfUniqueCodes(20);
      final createdBatch = await codeApi!.createCodes(codeBatch);
      assert(createdBatch != null);
      assert(createdBatch!.length == codeBatch.length);
      IterableZip<CodeDto>([createdBatch!, codeBatch]).forEach((pair) {
        assert(pair[0].id == pair[1].id);
      });
      generatedIds = generatedIds + codeBatch.map((e) => e.id).toList();
    });

    // Filter codes 
    //
    // Returns a list of codes along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
    //
    //Future<PaginatedListCodeDto> filterCodesBy({ String startKey, String startDocumentId, int limit, int skip, String sort, bool desc, FilterChainCode filterChainCode }) async
    test('test filterCodesBy', () async {
      // TODO
    });

    // Finding codes by code, type and version with pagination.
    //
    // Returns a list of codes matched with given input. If several types are provided, pagination is not supported
    //
    //Future<PaginatedListCodeDto> findCodesByLabel({ String region, String types, String language, String label, String version, String startKey, String startDocumentId, int limit }) async
    test('test findCodesByLabel', () async {
      // TODO
    });

    // Finding codes by code, type and version with pagination.
    //
    // Returns a list of codes matched with given input.
    //
    //Future<PaginatedListCodeDto> findCodesByLink(String linkType, { String linkedId, String startKey, String startDocumentId, int limit }) async
    test('test findCodesByLink', () async {
      // TODO
    });

    // Finding codes by code, type and version with pagination.
    //
    // Returns a list of codes matched with given input.
    //
    //Future<PaginatedListCodeDto> findCodesByType({ String region, String type, String code, String version, String startKey, String startDocumentId, int limit }) async
    test('test findCodesByType', () async {
      // TODO
    });

    // Get a code
    //
    // Get a code based on ID or (code,type,version) as query strings. (code,type,version) is unique.
    //
    //Future<CodeDto> getCode(String codeId) async
    test('test getCode', () async {
      // TODO
    });

    // Get a code
    //
    // Get a code based on ID or (code,type,version) as query strings. (code,type,version) is unique.
    //
    //Future<CodeDto> getCodeWithParts(String type, String code, String version) async
    test('test getCodeWithParts', () async {
      // TODO
    });

    // Get a list of codes by ids
    //
    // Keys must be delimited by coma
    //
    //Future<List<CodeDto>> getCodes(ListOfIdsDto listOfIdsDto) async
    test('test getCodes', () async {
      // TODO
    });

    // Import codes
    //
    // Import codes from the resources XML file depending on the passed pathVariable
    //
    //Future<Object> importCodes(String codeType) async
    test('test importCodes', () async {
      // TODO
    });

    // Finding code types.
    //
    // Returns a list of code types matched with given input.
    //
    //Future<List<String>> listCodeTypesBy({ String region, String type }) async
    test('test listCodeTypesBy', () async {
      // TODO
    });

    // Finding codes by code, type and version
    //
    // Returns a list of codes matched with given input.
    //
    //Future<List<CodeDto>> listCodesByRegionTypeCodeVersion({ String region, String type, String code, String version }) async
    test('test listCodesByRegionTypeCodeVersion', () async {
      // TODO
    });

    // Finding tag types.
    //
    // Returns a list of tag types matched with given input.
    //
    //Future<List<String>> listTagTypesBy({ String region, String type }) async
    test('test listTagTypesBy', () async {
      // TODO
    });

    // Get ids of code matching the provided filter for the current user (HcParty) 
    //
    //Future<List<String>> matchCodesBy(AbstractFilterDtoCode abstractFilterDtoCode) async
    test('test matchCodesBy', () async {
      // TODO
    });

    // Modify a code
    //
    // Modification of (type, code, version) is not allowed.
    //
    //Future<CodeDto> modifyCode(CodeDto codeDto) async
    test('test modifyCode', () async {
      final code = codeGenerator.createBatchOfUniqueCodes(1)[0];
      final createdCode = await codeApi!.createCode(code);
      assert(createdCode != null);
      assert(createdCode!.id == code.id);
      createdCode!.data = "MODIFICATION";
      final modifiedCode = await codeApi!.modifyCode(createdCode);
      assert(modifiedCode != null);
      assert(modifiedCode!.id == createdCode.id);
      assert(modifiedCode!.rev != createdCode.rev);
      generatedIds = generatedIds + [createdCode.id];
    });

    // Modify a batch of codes
    //
    // Modification of (type, code, version) is not allowed.
    //
    //Future<List<CodeDto>> modifyCodes(List<CodeDto> codeDto) async
    test('test modifyCodes', () async {
      final codeBatch = codeGenerator.createBatchOfUniqueCodes(20);
      final createdBatch = await codeApi!.createCodes(codeBatch);
      assert(createdBatch != null);
      assert(createdBatch!.length == codeBatch.length);
      IterableZip<CodeDto>([createdBatch!, codeBatch]).forEach((pair) {
        assert(pair[0].id == pair[1].id);
      });
      final batchToModify = createdBatch.map((e) {
        e.data = "MODIFICATION";
        return e;
      }).toList();
      final modifiedBatch = await codeApi!.modifyCodes(batchToModify);
      assert(modifiedBatch != null);
      assert(modifiedBatch!.length == createdBatch.length);
      IterableZip<CodeDto>([createdBatch, modifiedBatch!]).forEach((pair) {
        assert(pair[0].id == pair[1].id);
        assert(pair[0].rev != pair[1].rev);
      });
      generatedIds = generatedIds + codeBatch.map((e) => e.id).toList();
    });

  });
}
