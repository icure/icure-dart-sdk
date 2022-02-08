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


/// tests for Besamv2Api
void main() {
  final instance = Besamv2Api();

  group('tests for Besamv2Api', () {
    // Finding AMPs by dmpp code
    //
    // Returns a list of amps matched with given input. If several types are provided, paginantion is not supported
    //
    //Future<List<AmpDto>> findAmpsByDmppCode(String dmppCode) async
    test('test findAmpsByDmppCode', () async {
      // TODO
    });

    // Finding AMPs by atc code with pagination.
    //
    // Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
    //
    //Future<PaginatedListAmpDto> findPaginatedAmpsByAtc(String atcCode, { String startKey, String startDocumentId, int limit }) async
    test('test findPaginatedAmpsByAtc', () async {
      // TODO
    });

    // Finding AMPs by group with pagination.
    //
    // Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
    //
    //Future<PaginatedListAmpDto> findPaginatedAmpsByGroupCode(String vmpgCode, { String startKey, String startDocumentId, int limit }) async
    test('test findPaginatedAmpsByGroupCode', () async {
      // TODO
    });

    // Finding AMPs by group with pagination.
    //
    // Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
    //
    //Future<PaginatedListAmpDto> findPaginatedAmpsByGroupId(String vmpgId, { String startKey, String startDocumentId, int limit }) async
    test('test findPaginatedAmpsByGroupId', () async {
      // TODO
    });

    // Finding AMPs by label with pagination.
    //
    // Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
    //
    //Future<PaginatedListAmpDto> findPaginatedAmpsByLabel({ String language, String label, String startKey, String startDocumentId, int limit }) async
    test('test findPaginatedAmpsByLabel', () async {
      // TODO
    });

    // Finding AMPs by vmp code with pagination.
    //
    // Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
    //
    //Future<PaginatedListAmpDto> findPaginatedAmpsByVmpCode(String vmpCode, { String startKey, String startDocumentId, int limit }) async
    test('test findPaginatedAmpsByVmpCode', () async {
      // TODO
    });

    // Finding AMPs by vmp id with pagination.
    //
    // Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
    //
    //Future<PaginatedListAmpDto> findPaginatedAmpsByVmpId(String vmpId, { String startKey, String startDocumentId, int limit }) async
    test('test findPaginatedAmpsByVmpId', () async {
      // TODO
    });

    // Finding NMPs by label with pagination.
    //
    // Returns a paginated list of NMPs by matching label. Matches occur per word
    //
    //Future<PaginatedListNmpDto> findPaginatedNmpsByLabel({ String language, String label, String startKey, String startDocumentId, int limit }) async
    test('test findPaginatedNmpsByLabel', () async {
      // TODO
    });

    // Finding VMP groups by language label with pagination.
    //
    // Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
    //
    //Future<PaginatedListVmpGroupDto> findPaginatedVmpGroupsByLabel({ String language, String label, String startKey, String startDocumentId, int limit }) async
    test('test findPaginatedVmpGroupsByLabel', () async {
      // TODO
    });

    // Finding VMP groups by cmpgCode with pagination.
    //
    // Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
    //
    //Future<PaginatedListVmpGroupDto> findPaginatedVmpGroupsByVmpGroupCode(String vmpgCode, { String startKey, String startDocumentId, int limit }) async
    test('test findPaginatedVmpGroupsByVmpGroupCode', () async {
      // TODO
    });

    // Finding VMPs by group with pagination.
    //
    // Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
    //
    //Future<PaginatedListVmpDto> findPaginatedVmpsByGroupCode(String vmpgCode, { String startKey, String startDocumentId, int limit }) async
    test('test findPaginatedVmpsByGroupCode', () async {
      // TODO
    });

    // Finding VMPs by group with pagination.
    //
    // Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
    //
    //Future<PaginatedListVmpDto> findPaginatedVmpsByGroupId(String vmpgId, { String startKey, String startDocumentId, int limit }) async
    test('test findPaginatedVmpsByGroupId', () async {
      // TODO
    });

    // Finding VMPs by label with pagination.
    //
    // Returns a paginated list of VMPs by matching label. Matches occur per word
    //
    //Future<PaginatedListVmpDto> findPaginatedVmpsByLabel({ String language, String label, String startKey, String startDocumentId, int limit }) async
    test('test findPaginatedVmpsByLabel', () async {
      // TODO
    });

    // Finding VMPs by group with pagination.
    //
    // Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
    //
    //Future<PaginatedListVmpDto> findPaginatedVmpsByVmpCode(String vmpCode, { String startKey, String startDocumentId, int limit }) async
    test('test findPaginatedVmpsByVmpCode', () async {
      // TODO
    });

    // Get Samv2 version.
    //
    // Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
    //
    //Future<SamVersionDto> getSamVersion() async
    test('test getSamVersion', () async {
      // TODO
    });

    // Finding AMPs by dmpp code
    //
    // Returns a list of amps matched with given input. If several types are provided, paginantion is not supported
    //
    //Future<List<AmpDto>> listAmpsByDmppCodes(ListOfIdsDto listOfIdsDto) async
    test('test listAmpsByDmppCodes', () async {
      // TODO
    });

    // Finding AMPs by group.
    //
    // Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
    //
    //Future<List<AmpDto>> listAmpsByGroupCodes(ListOfIdsDto listOfIdsDto) async
    test('test listAmpsByGroupCodes', () async {
      // TODO
    });

    // Finding AMPs by group.
    //
    // Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
    //
    //Future<List<AmpDto>> listAmpsByGroupIds(ListOfIdsDto listOfIdsDto) async
    test('test listAmpsByGroupIds', () async {
      // TODO
    });

    // Finding AMPs by vmp code.
    //
    // Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
    //
    //Future<List<AmpDto>> listAmpsByVmpCodes(ListOfIdsDto listOfIdsDto) async
    test('test listAmpsByVmpCodes', () async {
      // TODO
    });

    // Finding AMPs by vmp id.
    //
    // Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
    //
    //Future<List<AmpDto>> listAmpsByVmpIds(ListOfIdsDto listOfIdsDto) async
    test('test listAmpsByVmpIds', () async {
      // TODO
    });

    // Finding NMPs by cnk id.
    //
    // Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
    //
    //Future<List<NmpDto>> listNmpsByCnks(ListOfIdsDto listOfIdsDto) async
    test('test listNmpsByCnks', () async {
      // TODO
    });

    // List all pharmaceutical forms.
    //
    //Future<List<PharmaceuticalFormDto>> listPharmaceuticalForms() async
    test('test listPharmaceuticalForms', () async {
      // TODO
    });

    // List all substances.
    //
    //Future<List<SubstanceDto>> listSubstances() async
    test('test listSubstances', () async {
      // TODO
    });

    // Finding AMPs by group.
    //
    // Returns a list of group codes matched with given input. If several types are provided, paginantion is not supported
    //
    //Future<List<VmpGroupDto>> listVmpGroupsByVmpGroupCodes(ListOfIdsDto listOfIdsDto) async
    test('test listVmpGroupsByVmpGroupCodes', () async {
      // TODO
    });

    // Finding VMPs by group.
    //
    // Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
    //
    //Future<List<VmpDto>> listVmpsByGroupIds(ListOfIdsDto listOfIdsDto) async
    test('test listVmpsByGroupIds', () async {
      // TODO
    });

    // Finding VMPs by group.
    //
    // Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
    //
    //Future<List<VmpDto>> listVmpsByVmpCodes(ListOfIdsDto listOfIdsDto) async
    test('test listVmpsByVmpCodes', () async {
      // TODO
    });

  });
}
