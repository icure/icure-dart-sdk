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

// tests for UserDto
void main() {
  final instance = UserDto();

  group('test UserDto', () {
    // the Id of the user. We encourage using either a v4 UUID or a HL7 Id.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // the revision of the user in the database, used for conflict management / optimistic locking.
    // String rev
    test('to test the property `rev`', () async {
      // TODO
    });

    // hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
    // int deletionDate
    test('to test the property `deletionDate`', () async {
      // TODO
    });

    // int created
    test('to test the property `created`', () async {
      // TODO
    });

    // Last name of the user. This is the official last name that should be used for official administrative purposes.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Extra properties for the user. Those properties are typed (see class Property)
    // Set<PropertyStubDto> properties (default value: const {})
    test('to test the property `properties`', () async {
      // TODO
    });

    // If permission to modify patient data is granted or revoked
    // Set<PermissionDto> permissions (default value: const {})
    test('to test the property `permissions`', () async {
      // TODO
    });

    // Roles specified for the user
    // Set<String> roles (default value: const {})
    test('to test the property `roles`', () async {
      // TODO
    });

    // Authorization source for user. 'Database', 'ldap' or 'token'
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // State of user's activeness: 'Active', 'Disabled' or 'Registering'
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // Username for this user. We encourage using an email address
    // String login
    test('to test the property `login`', () async {
      // TODO
    });

    // Hashed version of the password (BCrypt is used for hashing)
    // String passwordHash
    test('to test the property `passwordHash`', () async {
      // TODO
    });

    // Secret token used to verify 2fa
    // String secret
    test('to test the property `secret`', () async {
      // TODO
    });

    // Whether the user has activated two factors authentication
    // bool use2fa
    test('to test the property `use2fa`', () async {
      // TODO
    });

    // id of the group (practice/hospital) the user is member of
    // String groupId
    test('to test the property `groupId`', () async {
      // TODO
    });

    // Id of the healthcare party if the user is a healthcare party.
    // String healthcarePartyId
    test('to test the property `healthcarePartyId`', () async {
      // TODO
    });

    // Id of the patient if the user is a patient
    // String patientId
    test('to test the property `patientId`', () async {
      // TODO
    });

    // Id of the device if the user is a device
    // String deviceId
    test('to test the property `deviceId`', () async {
      // TODO
    });

    // Delegations that are automatically generated client side when a new database object is created by this user
    // Map<String, Set<String>> autoDelegations (default value: const {})
    test('to test the property `autoDelegations`', () async {
      // TODO
    });

    // the timestamp (unix epoch in ms) of creation of the user, will be filled automatically if missing. Not enforced by the application server.
    // DateTime createdDate
    test('to test the property `createdDate`', () async {
      // TODO
    });

    // the timestamp (unix epoch in ms) of the latest validation of the terms of use of the application
    // DateTime termsOfUseDate
    test('to test the property `termsOfUseDate`', () async {
      // TODO
    });

    // email address of the user (used for token exchange or password recovery).
    // String email
    test('to test the property `email`', () async {
      // TODO
    });

    // mobile phone of the user (used for token exchange or password recovery).
    // String mobilePhone
    test('to test the property `mobilePhone`', () async {
      // TODO
    });

    // Map<String, String> applicationTokens (default value: const {})
    test('to test the property `applicationTokens`', () async {
      // TODO
    });

    // Encrypted and time-limited Authentication tokens used for inter-applications authentication
    // Map<String, AuthenticationTokenDto> authenticationTokens (default value: const {})
    test('to test the property `authenticationTokens`', () async {
      // TODO
    });


  });

}
