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

// tests for GroupDto
void main() {
  final instance = GroupDto();

  group('test GroupDto', () {
    // The id of the group. We encourage using either a v4 UUID or a HL7 Id.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The revision of the group in the database, used for conflict management / optimistic locking.
    // String rev
    test('to test the property `rev`', () async {
      // TODO
    });

    // hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
    // int deletionDate
    test('to test the property `deletionDate`', () async {
      // TODO
    });

    // Username for the group
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Password for the group access
    // String password
    test('to test the property `password`', () async {
      // TODO
    });

    // List of servers accessible to the group
    // List<String> servers (default value: const [])
    test('to test the property `servers`', () async {
      // TODO
    });

    // Whether the group has a super admin permission, originally set to no access.
    // bool superAdmin
    test('to test the property `superAdmin`', () async {
      // TODO
    });

    // Extra properties for the user. Those properties are typed (see class Property)
    // Set<PropertyStubDto> properties (default value: const {})
    test('to test the property `properties`', () async {
      // TODO
    });

    // String superGroup
    test('to test the property `superGroup`', () async {
      // TODO
    });


  });

}
