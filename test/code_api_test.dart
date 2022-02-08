//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for CodeApi
void main() {
  final instance = CodeApi();

  group('tests for CodeApi', () {
    // Create a Code
    //
    // Type, Code and Version are required.
    //
    //Future<CodeDto> createCode(CodeDto codeDto) async
    test('test createCode', () async {
      // TODO
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
    //Future<PaginatedListCodeDto> findCodesByLabel({ String region, String types, String language, String label, String startKey, String startDocumentId, int limit }) async
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
      // TODO
    });

  });
}
