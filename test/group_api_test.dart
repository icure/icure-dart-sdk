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


/// tests for GroupApi
void main() {
  final instance = GroupApi();

  group('tests for GroupApi', () {
    // Create a group
    //
    // Create a new group and associated dbs.  The created group will be manageable by the users that belong to the same group as the one that called createGroup. Several tasks can be executed during the group creation like DB replications towards the created DBs, users creation and healthcare parties creation
    //
    //Future<GroupDto> createGroup(String id, String name, String password, DatabaseInitialisationDto databaseInitialisationDto, { String server, int q, int n }) async
    test('test createGroup', () async {
      // TODO
    });

    // Get a group by id
    //
    // Get a group by id
    //
    //Future<GroupDto> getGroup(String id) async
    test('test getGroup', () async {
      // TODO
    });

    // Get index info
    //
    //Future<ReplicationInfoDto> getReplicationInfo1(String id) async
    test('test getReplicationInfo1', () async {
      // TODO
    });

    // Init design docs
    //
    // Init design docs for provided group
    //
    //Future<Object> initDesignDocs(String id, { String clazz, bool warmup }) async
    test('test initDesignDocs', () async {
      // TODO
    });

    // List groups
    //
    // List existing groups
    //
    //Future<List<GroupDto>> listGroups() async
    test('test listGroups', () async {
      // TODO
    });

    // Update group name
    //
    // Update existing group name
    //
    //Future<GroupDto> modifyGroupName(String id, String name) async
    test('test modifyGroupName', () async {
      // TODO
    });

    // Update group properties
    //
    // Update existing group properties
    //
    //Future<GroupDto> modifyGroupProperties(String id, ListOfPropertiesDto listOfPropertiesDto) async
    test('test modifyGroupProperties', () async {
      // TODO
    });

    // Create a group
    //
    // Create a new group and associated dbs.  The created group will be manageable by the users that belong to the same group as the one that called createGroup. Several tasks can be executed during the group creation like DB replications towards the created DBs, users creation and healthcare parties creation
    //
    //Future<RegistrationSuccessDto> registerNewGroupAdministrator(RegistrationInformationDto registrationInformationDto) async
    test('test registerNewGroupAdministrator', () async {
      // TODO
    });

    // Reset storage for group
    //
    // Reset storage
    //
    //Future<Object> resetStorage(String id, ListOfIdsDto listOfIdsDto, { int q, int n }) async
    test('test resetStorage', () async {
      // TODO
    });

    // Set group password
    //
    // Update password for provided group
    //
    //Future<GroupDto> setGroupPassword(String id, String password) async
    test('test setGroupPassword', () async {
      // TODO
    });

    // Solve conflicts for group
    //
    // Solve conflicts for group
    //
    //Future<List<IdWithRevDto>> solveConflicts(String id, { int limit, bool warmup }) async
    test('test solveConflicts', () async {
      // TODO
    });

  });
}
