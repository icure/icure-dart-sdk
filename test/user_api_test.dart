//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.16

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for UserApi
void main() {
  final instance = UserApi(ApiClient.basic('https://kraken.icure.dev', 'abdemotst2', '27b90f6e-6847-44bf-b90f-6e6847b4bf1c'));

  group('tests for UserApi', () {
    // Assign a healthcare party ID to current user
    //
    // UserDto gets returned.
    //
    //Future<UserDto> assignHealthcareParty(String healthcarePartyId) async
    test('test assignHealthcareParty', () async {
      // TODO
    });

    //Future<bool> checkPassword(String password) async
    test('test checkPassword', () async {
      // TODO
    });

    // Check token validity
    //
    //Future<bool> checkTokenValidity(String userId, String token) async
    test('test checkTokenValidity', () async {
      // TODO
    });

    // Create a user
    //
    // Create a user. HealthcareParty ID should be set. Email or Login have to be set. If login hasn't been set, Email will be used for Login instead.
    //
    //Future<UserDto> createUser(UserDto userDto) async
    test('test createUser', () async {
      // TODO
    });

    // Create a user
    //
    // Create a user. HealthcareParty ID should be set. Email has to be set and the Login has to be null. On server-side, Email will be used for Login.
    //
    //Future<UserDto> createUserInGroup(String groupId, UserDto userDto) async
    test('test createUserInGroup', () async {
      // TODO
    });

    // Delete a User based on his/her ID.
    //
    // Delete a User based on his/her ID. The return value is an array containing the ID of deleted user.
    //
    //Future<DocIdentifier> deleteUser(String userId) async
    test('test deleteUser', () async {
      // TODO
    });

    // Delete a User based on his/her ID.
    //
    // Delete a User based on his/her ID. The return value is an array containing the ID of deleted user.
    //
    //Future<Object> deleteUserInGroup(String groupId, String userId) async
    test('test deleteUserInGroup', () async {
      // TODO
    });

    //Future<String> encodePassword(String password) async
    test('test encodePassword', () async {
      // TODO
    });

    // Filter users for the current user (HcParty)
    //
    // Returns a list of users along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
    //
    //Future<PaginatedListUserDto> filterUsersBy(FilterChainUser filterChainUser, { String startDocumentId, int limit }) async
    test('test filterUsersBy', () async {
      // TODO
    });

    // Get the list of users by healthcare party id
    //
    //Future<List<String>> findByHcpartyId(String id) async
    test('test findByHcpartyId', () async {
      // TODO
    });

    // Send a forgotten email message to an user
    //
    //Future<bool> forgottenPassword(String email, EmailTemplateDto emailTemplateDto) async
    test('test forgottenPassword', () async {
      // TODO
    });

    // Get Currently logged-in user session.
    //
    // Get current user.
    //
    //Future<String> getCurrentSession() async
    test('test getCurrentSession', () async {
      // TODO
    });

    // Get presently logged-in user.
    //
    // Get current user.
    //
    //Future<UserDto> getCurrentUser() async
    test('test getCurrentUser', () async {
      UserDto? res = await instance.getCurrentUser();
      assert(res?.login == 'abdemotst2');
    });

    // Get presently logged-in user.
    //
    // Get current user.
    //
    //Future<List<UserGroupDto>> getMatchingUsers() async
    test('test getMatchingUsers', () async {
      // TODO
    });

    // Request a new temporary token for authentication
    //
    //Future<String> getToken(String userId, String key, { int tokenValidity }) async
    test('test getToken', () async {
      // TODO
    });

    // Get a user by his ID
    //
    // General information about the user
    //
    //Future<UserDto> getUser(String userId) async
    test('test getUser', () async {
      // TODO
    });

    // Get a user by his Email/Login
    //
    // General information about the user
    //
    //Future<UserDto> getUserByEmail(String email) async
    test('test getUserByEmail', () async {
      // TODO
    });

    // List users with(out) pagination
    //
    // Returns a list of users.
    //
    //Future<PaginatedListUserDto> listUsersBy({ String startKey, String startDocumentId, int limit }) async
    test('test listUsersBy', () async {
      // TODO
    });

    // List users with(out) pagination
    //
    // Returns a list of users.
    //
    //Future<PaginatedListUserDto> listUsersInGroup(String groupId, { String startKey, String startDocumentId, int limit }) async
    test('test listUsersInGroup', () async {
      // TODO
    });

    // Get ids of healthcare party matching the provided filter for the current user (HcParty)
    //
    //Future<List<String>> matchUsersBy(AbstractFilterDtoUser abstractFilterDtoUser) async
    test('test matchUsersBy', () async {
      // TODO
    });

    // Modify a User property
    //
    // Modify a User properties based on his/her ID. The return value is the modified user.
    //
    //Future<UserDto> modifyProperties(String userId, { List<PropertyStubDto> propertyStubDto }) async
    test('test modifyProperties', () async {
      // TODO
    });

    // Modify a user.
    //
    // No particular return value. It's just a message.
    //
    //Future<UserDto> modifyUser(UserDto userDto) async
    test('test modifyUser', () async {
      // TODO
    });

    // Modify a user.
    //
    // No particular return value. It's just a message.
    //
    //Future<UserDto> modifyUserInGroup(String groupId, UserDto userDto) async
    test('test modifyUserInGroup', () async {
      // TODO
    });

  });
}
