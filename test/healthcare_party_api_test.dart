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


/// tests for HealthcarePartyApi
void main() {
  final instance = HealthcarePartyApi();

  group('tests for HealthcarePartyApi', () {
    // Create a healthcare party
    //
    // One of Name or Last name+First name, Nihii, and Public key are required.
    //
    //Future<HealthcarePartyDto> createHealthcareParty(HealthcarePartyDto healthcarePartyDto) async
    test('test createHealthcareParty', () async {
      // TODO
    });

    // Create a healthcare party
    //
    // One of Name or Last name+First name, Nihii, and Public key are required.
    //
    //Future<HealthcarePartyDto> createHealthcarePartyInGroup(String groupId, HealthcarePartyDto healthcarePartyDto) async
    test('test createHealthcarePartyInGroup', () async {
      // TODO
    });

    // Delete healthcare parties
    //
    // Deleting healthcareParties. Response is an array containing the id of deleted healthcare parties.
    //
    //Future<List<DocIdentifier>> deleteHealthcareParties(ListOfIdsDto listOfIdsDto) async
    test('test deleteHealthcareParties', () async {
      // TODO
    });

    // Delete a healthcare party
    //
    // Deleting a healthcareParty. Response is an array containing the id of deleted healthcare party.
    //
    //Future<List<DocIdentifier>> deleteHealthcarePartiesInGroup(String groupId, ListOfIdsDto listOfIdsDto) async
    test('test deleteHealthcarePartiesInGroup', () async {
      // TODO
    });

    // Filter healthcare parties for the current user (HcParty)
    //
    // Returns a list of healthcare party along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
    //
    //Future<PaginatedListHealthcarePartyDto> filterHealthPartiesBy(FilterChainHealthcareParty filterChainHealthcareParty, { String startDocumentId, int limit }) async
    test('test filterHealthPartiesBy', () async {
      // TODO
    });

    // List healthcare parties with(out) pagination
    //
    // Returns a list of healthcare parties.
    //
    //Future<PaginatedListHealthcarePartyDto> findHealthcarePartiesBy({ String startKey, String startDocumentId, int limit, bool desc }) async
    test('test findHealthcarePartiesBy', () async {
      // TODO
    });

    // Find healthcare parties by name with(out) pagination
    //
    // Returns a list of healthcare parties.
    //
    //Future<PaginatedListHealthcarePartyDto> findHealthcarePartiesByName({ String name, String startKey, String startDocumentId, int limit, bool desc }) async
    test('test findHealthcarePartiesByName', () async {
      // TODO
    });

    // Find healthcare parties by name with(out) pagination
    //
    // Returns a list of healthcare parties.
    //
    //Future<PaginatedListHealthcarePartyDto> findHealthcarePartiesBySpecialityAndPostCode(String type, String spec, String firstCode, String lastCode, { int limit }) async
    test('test findHealthcarePartiesBySpecialityAndPostCode', () async {
      // TODO
    });

    // Find healthcare parties by nihii or ssin with(out) pagination
    //
    // Returns a list of healthcare parties.
    //
    //Future<PaginatedListHealthcarePartyDto> findHealthcarePartiesBySsinOrNihii(String searchValue, { String startKey, String startDocumentId, int limit, bool desc }) async
    test('test findHealthcarePartiesBySsinOrNihii', () async {
      // TODO
    });

    // Get the current healthcare party if logged in.
    //
    // General information about the current healthcare Party
    //
    //Future<HealthcarePartyDto> getCurrentHealthcareParty() async
    test('test getCurrentHealthcareParty', () async {
      // TODO
    });

    // Get the HcParty encrypted AES keys indexed by owner
    //
    // (key, value) of the map is as follows: (ID of the owner of the encrypted AES key, encrypted AES key)
    //
    //Future<Map<String, String>> getHcPartyKeysForDelegate(String healthcarePartyId) async
    test('test getHcPartyKeysForDelegate', () async {
      // TODO
    });

    // Get healthcareParties by their IDs
    //
    // General information about the healthcare Party
    //
    //Future<List<HealthcarePartyDto>> getHealthcareParties(ListOfIdsDto listOfIdsDto) async
    test('test getHealthcareParties', () async {
      // TODO
    });

    // Get a healthcareParty by his ID
    //
    // General information about the healthcare Party
    //
    //Future<HealthcarePartyDto> getHealthcareParty(String healthcarePartyId) async
    test('test getHealthcareParty', () async {
      // TODO
    });

    // Get public key of a healthcare party
    //
    // Returns the public key of a healthcare party in Hex
    //
    //Future<PublicKeyDto> getPublicKey(String healthcarePartyId) async
    test('test getPublicKey', () async {
      // TODO
    });

    // Find healthcare parties by name with(out) pagination
    //
    // Returns a list of healthcare parties.
    //
    //Future<List<HealthcarePartyDto>> listHealthcarePartiesByName(String name) async
    test('test listHealthcarePartiesByName', () async {
      // TODO
    });

    // Find children of an healthcare parties
    //
    // Return a list of children hcp.
    //
    //Future<List<HealthcarePartyDto>> listHealthcarePartiesByParentId(String parentId) async
    test('test listHealthcarePartiesByParentId', () async {
      // TODO
    });

    // Get ids of healthcare party matching the provided filter for the current user (HcParty) 
    //
    //Future<List<String>> matchHealthcarePartiesBy(AbstractFilterDtoHealthcareParty abstractFilterDtoHealthcareParty) async
    test('test matchHealthcarePartiesBy', () async {
      // TODO
    });

    // Modify a Healthcare Party.
    //
    // No particular return value. It's just a message.
    //
    //Future<HealthcarePartyDto> modifyHealthcareParty(HealthcarePartyDto healthcarePartyDto) async
    test('test modifyHealthcareParty', () async {
      // TODO
    });

    // Modify a Healthcare Party.
    //
    // No particular return value. It's just a message.
    //
    //Future<HealthcarePartyDto> modifyHealthcarePartyInGroup(String groupId, HealthcarePartyDto healthcarePartyDto) async
    test('test modifyHealthcarePartyInGroup', () async {
      // TODO
    });

  });
}
