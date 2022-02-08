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


/// tests for HealthElementApi
void main() {
  final instance = HealthElementApi();

  group('tests for HealthElementApi', () {
    // Create a health element with the current user
    //
    // Returns an instance of created health element.
    //
    //Future<HealthElementDto> createHealthElement(HealthElementDto healthElementDto) async
    test('test createHealthElement', () async {
      // TODO
    });

    // Create a batch of healthcare elements
    //
    // Returns the created healthcare elements.
    //
    //Future<List<HealthElementDto>> createHealthElements(List<HealthElementDto> healthElementDto) async
    test('test createHealthElements', () async {
      // TODO
    });

    // Delete health elements.
    //
    // Response is a set containing the ID's of deleted health elements.
    //
    //Future<List<DocIdentifier>> deleteHealthElements(ListOfIdsDto listOfIdsDto) async
    test('test deleteHealthElements', () async {
      // TODO
    });

    // Filter health elements for the current user (HcParty)
    //
    // Returns a list of health elements along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
    //
    //Future<PaginatedListHealthElementDto> filterHealthElementsBy(FilterChainHealthElement filterChainHealthElement, { String startDocumentId, int limit }) async
    test('test filterHealthElementsBy', () async {
      // TODO
    });

    // Get a health element
    //
    //Future<HealthElementDto> getHealthElement(String healthElementId) async
    test('test getHealthElement', () async {
      // TODO
    });

    // Get healthElements by batch
    //
    // Get a list of healthElement by ids/keys.
    //
    //Future<List<HealthElementDto>> getHealthElements(ListOfIdsDto listOfIdsDto) async
    test('test getHealthElements', () async {
      // TODO
    });

    // List health elements found By Healthcare Party and secret foreign keyelementIds.
    //
    // Keys hast to delimited by coma
    //
    //Future<List<HealthElementDto>> listHealthElementsByHCPartyAndPatientForeignKeys(String hcPartyId, String secretFKeys) async
    test('test listHealthElementsByHCPartyAndPatientForeignKeys', () async {
      // TODO
    });

    // List helement stubs found By Healthcare Party and secret foreign keys.
    //
    // Keys must be delimited by coma
    //
    //Future<List<IcureStubDto>> listHealthElementsDelegationsStubsByHCPartyAndPatientForeignKeys(String hcPartyId, String secretFKeys) async
    test('test listHealthElementsDelegationsStubsByHCPartyAndPatientForeignKeys', () async {
      // TODO
    });

    // Get ids of health element matching the provided filter for the current user (HcParty) 
    //
    //Future<List<String>> matchHealthElementsBy(AbstractFilterDtoHealthElement abstractFilterDtoHealthElement) async
    test('test matchHealthElementsBy', () async {
      // TODO
    });

    // Modify a health element
    //
    // Returns the modified health element.
    //
    //Future<HealthElementDto> modifyHealthElement(HealthElementDto healthElementDto) async
    test('test modifyHealthElement', () async {
      // TODO
    });

    // Modify a batch of health elements
    //
    // Returns the modified health elements.
    //
    //Future<List<HealthElementDto>> modifyHealthElements(List<HealthElementDto> healthElementDto) async
    test('test modifyHealthElements', () async {
      // TODO
    });

    // Delegates a health element to a healthcare party
    //
    // It delegates a health element to a healthcare party (By current healthcare party). Returns the element with new delegations.
    //
    //Future<HealthElementDto> newHealthElementDelegations(String healthElementId, List<DelegationDto> delegationDto) async
    test('test newHealthElementDelegations', () async {
      // TODO
    });

    // Update delegations in healthElements.
    //
    // Keys must be delimited by coma
    //
    //Future<List<HealthElementDto>> setHealthElementsDelegations(List<IcureStubDto> icureStubDto) async
    test('test setHealthElementsDelegations', () async {
      // TODO
    });

  });
}
