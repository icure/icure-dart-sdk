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


/// tests for AccessLogApi
void main() {
  final instance = AccessLogApi();

  group('tests for AccessLogApi', () {
    // Creates an access log
    //
    //Future<AccessLogDto> createAccessLog(AccessLogDto accessLogDto) async
    test('test createAccessLog', () async {
      // TODO
    });

    // Deletes an access log
    //
    //Future<List<DocIdentifier>> deleteAccessLogs(ListOfIdsDto listOfIdsDto) async
    test('test deleteAccessLogs', () async {
      // TODO
    });

    // Get Paginated List of Access logs
    //
    //Future<PaginatedListAccessLogDto> findAccessLogsBy({ int fromEpoch, int toEpoch, int startKey, String startDocumentId, int limit, bool descending }) async
    test('test findAccessLogsBy', () async {
      // TODO
    });

    // Get Paginated List of Access logs by user after date
    //
    //Future<PaginatedListAccessLogDto> findAccessLogsByUserAfterDate(String userId, { String accessType, int startDate, String startKey, String startDocumentId, int limit, bool descending }) async
    test('test findAccessLogsByUserAfterDate', () async {
      // TODO
    });

    // Gets an access log
    //
    //Future<AccessLogDto> getAccessLog(String accessLogId) async
    test('test getAccessLog', () async {
      // TODO
    });

    // List access logs found By Healthcare Party and secret foreign keyelementIds.
    //
    //Future<List<AccessLogDto>> listAccessLogsByHCPartyAndPatientForeignKeys(String hcPartyId, String secretFKeys) async
    test('test listAccessLogsByHCPartyAndPatientForeignKeys', () async {
      // TODO
    });

    // Modifies an access log
    //
    //Future<AccessLogDto> modifyAccessLog(AccessLogDto accessLogDto) async
    test('test modifyAccessLog', () async {
      // TODO
    });

  });
}
