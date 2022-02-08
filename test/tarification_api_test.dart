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


/// tests for TarificationApi
void main() {
  final instance = TarificationApi();

  group('tests for TarificationApi', () {
    // Create a Tarification
    //
    // Type, Tarification and Version are required.
    //
    //Future<TarificationDto> createTarification(TarificationDto tarificationDto) async
    test('test createTarification', () async {
      // TODO
    });

    // Finding tarifications by tarification, type and version with pagination.
    //
    // Returns a list of tarifications matched with given input.
    //
    //Future<PaginatedListTarificationDto> findTarificationsBy({ String region, String type, String tarification, String version, String startDocumentId, int limit }) async
    test('test findTarificationsBy', () async {
      // TODO
    });

    // Finding tarifications by tarification, type and version
    //
    // Returns a list of tarifications matched with given input.
    //
    //Future<List<TarificationDto>> findTarificationsBy1({ String region, String type, String tarification, String version }) async
    test('test findTarificationsBy1', () async {
      // TODO
    });

    // Finding tarifications by tarification, type and version with pagination.
    //
    // Returns a list of tarifications matched with given input.
    //
    //Future<PaginatedListTarificationDto> findTarificationsByLabel({ String region, String types, String language, String label, String startDocumentId, int limit }) async
    test('test findTarificationsByLabel', () async {
      // TODO
    });

    // Get a tarification
    //
    // Get a tarification based on ID or (tarification,type,version) as query strings. (tarification,type,version) is unique.
    //
    //Future<TarificationDto> getTarification(String tarificationId) async
    test('test getTarification', () async {
      // TODO
    });

    // Get a tarification
    //
    // Get a tarification based on ID or (tarification,type,version) as query strings. (tarification,type,version) is unique.
    //
    //Future<TarificationDto> getTarificationWithParts(String type, String tarification, String version) async
    test('test getTarificationWithParts', () async {
      // TODO
    });

    // Get a list of tarifications by ids
    //
    // Keys must be delimited by coma
    //
    //Future<List<TarificationDto>> getTarifications(ListOfIdsDto listOfIdsDto) async
    test('test getTarifications', () async {
      // TODO
    });

    // Modify a tarification
    //
    // Modification of (type, tarification, version) is not allowed.
    //
    //Future<TarificationDto> modifyTarification(TarificationDto tarificationDto) async
    test('test modifyTarification', () async {
      // TODO
    });

  });
}
