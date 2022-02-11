//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class UserApi {
  UserApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Assign a healthcare party ID to current user
  ///
  /// UserDto gets returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] healthcarePartyId (required):
  Future<Response> assignHealthcarePartyWithHttpInfo(String healthcarePartyId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/user/current/hcparty/{healthcarePartyId}'
      .replaceAll('{healthcarePartyId}', healthcarePartyId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Assign a healthcare party ID to current user
  ///
  /// UserDto gets returned.
  ///
  /// Parameters:
  ///
  /// * [String] healthcarePartyId (required):
  Future<UserDto?> assignHealthcareParty(String healthcarePartyId,) async {
    final response = await assignHealthcarePartyWithHttpInfo(healthcarePartyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserDto',) as UserDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /rest/v2/user/checkPassword' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] password (required):
  Future<Response> checkPasswordWithHttpInfo(String password,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/user/checkPassword';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'password'] = parameterToString(password);

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [String] password (required):
  Future<bool?> checkPassword(String password,) async {
    final response = await checkPasswordWithHttpInfo(password,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'bool',) as bool;
    
    }
    return null;
  }

  /// Check token validity
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [String] token (required):
  Future<Response> checkTokenValidityWithHttpInfo(String userId, String token,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/user/token/{userId}'
      .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'token'] = parameterToString(token);

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Check token validity
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [String] token (required):
  Future<bool?> checkTokenValidity(String userId, String token,) async {
    final response = await checkTokenValidityWithHttpInfo(userId, token,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'bool',) as bool;
    
    }
    return null;
  }

  /// Create a user
  ///
  /// Create a user. HealthcareParty ID should be set. Email or Login have to be set. If login hasn't been set, Email will be used for Login instead.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserDto] userDto (required):
  Future<Response> createUserWithHttpInfo(UserDto userDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/user';

    // ignore: prefer_final_locals
    Object? postBody = userDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Create a user
  ///
  /// Create a user. HealthcareParty ID should be set. Email or Login have to be set. If login hasn't been set, Email will be used for Login instead.
  ///
  /// Parameters:
  ///
  /// * [UserDto] userDto (required):
  Future<UserDto?> createUser(UserDto userDto,) async {
    final response = await createUserWithHttpInfo(userDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserDto',) as UserDto;
    
    }
    return null;
  }

  /// Create a user
  ///
  /// Create a user. HealthcareParty ID should be set. Email has to be set and the Login has to be null. On server-side, Email will be used for Login.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [UserDto] userDto (required):
  Future<Response> createUserInGroupWithHttpInfo(String groupId, UserDto userDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/user/inGroup/{groupId}'
      .replaceAll('{groupId}', groupId);

    // ignore: prefer_final_locals
    Object? postBody = userDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Create a user
  ///
  /// Create a user. HealthcareParty ID should be set. Email has to be set and the Login has to be null. On server-side, Email will be used for Login.
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [UserDto] userDto (required):
  Future<UserDto?> createUserInGroup(String groupId, UserDto userDto,) async {
    final response = await createUserInGroupWithHttpInfo(groupId, userDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserDto',) as UserDto;
    
    }
    return null;
  }

  /// Delete a User based on his/her ID.
  ///
  /// Delete a User based on his/her ID. The return value is an array containing the ID of deleted user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> deleteUserWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/user/{userId}'
      .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Delete a User based on his/her ID.
  ///
  /// Delete a User based on his/her ID. The return value is an array containing the ID of deleted user.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<DocIdentifier?> deleteUser(String userId,) async {
    final response = await deleteUserWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocIdentifier',) as DocIdentifier;
    
    }
    return null;
  }

  /// Delete a User based on his/her ID.
  ///
  /// Delete a User based on his/her ID. The return value is an array containing the ID of deleted user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [String] userId (required):
  Future<Response> deleteUserInGroupWithHttpInfo(String groupId, String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/user/inGroup/{groupId}/{userId}'
      .replaceAll('{groupId}', groupId)
      .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Delete a User based on his/her ID.
  ///
  /// Delete a User based on his/her ID. The return value is an array containing the ID of deleted user.
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [String] userId (required):
  Future<Object?> deleteUserInGroup(String groupId, String userId,) async {
    final response = await deleteUserInGroupWithHttpInfo(groupId, userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /rest/v2/user/encodePassword' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] password (required):
  Future<Response> encodePasswordWithHttpInfo(String password,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/user/encodePassword';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'password'] = parameterToString(password);

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [String] password (required):
  Future<String?> encodePassword(String password,) async {
    final response = await encodePasswordWithHttpInfo(password,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Filter users for the current user (HcParty)
  ///
  /// Returns a list of users along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FilterChainUser] filterChainUser (required):
  ///
  /// * [String] startDocumentId:
  ///   A User document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> filterUsersByWithHttpInfo(FilterChainUser filterChainUser, { String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/user/filter';

    // ignore: prefer_final_locals
    Object? postBody = filterChainUser;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Filter users for the current user (HcParty)
  ///
  /// Returns a list of users along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Parameters:
  ///
  /// * [FilterChainUser] filterChainUser (required):
  ///
  /// * [String] startDocumentId:
  ///   A User document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListUserDto?> filterUsersBy(FilterChainUser filterChainUser, { String? startDocumentId, int? limit, }) async {
    final response = await filterUsersByWithHttpInfo(filterChainUser,  startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListUserDto',) as PaginatedListUserDto;
    
    }
    return null;
  }

  /// Get the list of users by healthcare party id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> findByHcpartyIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/user/byHealthcarePartyId/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get the list of users by healthcare party id
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<List<String>?> findByHcpartyId(String id,) async {
    final response = await findByHcpartyIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List)
        .cast<String>()
        .toList();

    }
    return null;
  }

  /// Send a forgotten email message to an user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  ///   the email of the user 
  ///
  /// * [EmailTemplateDto] emailTemplateDto (required):
  Future<Response> forgottenPasswordWithHttpInfo(String email, EmailTemplateDto emailTemplateDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/user/forgottenPassword/{email}'
      .replaceAll('{email}', email);

    // ignore: prefer_final_locals
    Object? postBody = emailTemplateDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Send a forgotten email message to an user
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  ///   the email of the user 
  ///
  /// * [EmailTemplateDto] emailTemplateDto (required):
  Future<bool?> forgottenPassword(String email, EmailTemplateDto emailTemplateDto,) async {
    final response = await forgottenPasswordWithHttpInfo(email, emailTemplateDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'bool',) as bool;
    
    }
    return null;
  }

  /// Get Currently logged-in user session.
  ///
  /// Get current user.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCurrentSessionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/user/session';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get Currently logged-in user session.
  ///
  /// Get current user.
  Future<String?> getCurrentSession() async {
    final response = await getCurrentSessionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Get presently logged-in user.
  ///
  /// Get current user.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCurrentUserWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/user/current';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get presently logged-in user.
  ///
  /// Get current user.
  Future<UserDto?> getCurrentUser() async {
    final response = await getCurrentUserWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserDto',) as UserDto;
    
    }
    return null;
  }

  /// Get presently logged-in user.
  ///
  /// Get current user.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMatchingUsersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/user/matches';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get presently logged-in user.
  ///
  /// Get current user.
  Future<List<UserGroupDto>?> getMatchingUsers() async {
    final response = await getMatchingUsersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserGroupDto>') as List)
        .cast<UserGroupDto>()
        .toList();

    }
    return null;
  }

  /// Request a new temporary token for authentication
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [String] key (required):
  ///   The token key. Only one instance of a token with a defined key can exist at the same time
  ///
  /// * [int] tokenValidity:
  ///   The token validity in seconds
  Future<Response> getTokenWithHttpInfo(String userId, String key, { int? tokenValidity, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/user/token/{userId}/{key}'
      .replaceAll('{userId}', userId)
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (tokenValidity != null) {
      queryParams.addAll(_queryParams('', 'tokenValidity', tokenValidity));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Request a new temporary token for authentication
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [String] key (required):
  ///   The token key. Only one instance of a token with a defined key can exist at the same time
  ///
  /// * [int] tokenValidity:
  ///   The token validity in seconds
  Future<String?> getToken(String userId, String key, { int? tokenValidity, }) async {
    final response = await getTokenWithHttpInfo(userId, key,  tokenValidity: tokenValidity, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Get a user by his ID
  ///
  /// General information about the user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> getUserWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/user/{userId}'
      .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get a user by his ID
  ///
  /// General information about the user
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<UserDto?> getUser(String userId,) async {
    final response = await getUserWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserDto',) as UserDto;
    
    }
    return null;
  }

  /// Get a user by his Email/Login
  ///
  /// General information about the user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  Future<Response> getUserByEmailWithHttpInfo(String email,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/user/byEmail/{email}'
      .replaceAll('{email}', email);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get a user by his Email/Login
  ///
  /// General information about the user
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  Future<UserDto?> getUserByEmail(String email,) async {
    final response = await getUserByEmailWithHttpInfo(email,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserDto',) as UserDto;
    
    }
    return null;
  }

  /// List users with(out) pagination
  ///
  /// Returns a list of users.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] startKey:
  ///   An user email
  ///
  /// * [String] startDocumentId:
  ///   An user document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> listUsersByWithHttpInfo({ String? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/user';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// List users with(out) pagination
  ///
  /// Returns a list of users.
  ///
  /// Parameters:
  ///
  /// * [String] startKey:
  ///   An user email
  ///
  /// * [String] startDocumentId:
  ///   An user document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListUserDto?> listUsersBy({ String? startKey, String? startDocumentId, int? limit, }) async {
    final response = await listUsersByWithHttpInfo( startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListUserDto',) as PaginatedListUserDto;
    
    }
    return null;
  }

  /// List users with(out) pagination
  ///
  /// Returns a list of users.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [String] startKey:
  ///   An user login
  ///
  /// * [String] startDocumentId:
  ///   An user document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> listUsersInGroupWithHttpInfo(String groupId, { String? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/user/inGroup/{groupId}'
      .replaceAll('{groupId}', groupId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// List users with(out) pagination
  ///
  /// Returns a list of users.
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [String] startKey:
  ///   An user login
  ///
  /// * [String] startDocumentId:
  ///   An user document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListUserDto?> listUsersInGroup(String groupId, { String? startKey, String? startDocumentId, int? limit, }) async {
    final response = await listUsersInGroupWithHttpInfo(groupId,  startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListUserDto',) as PaginatedListUserDto;
    
    }
    return null;
  }

  /// Get ids of healthcare party matching the provided filter for the current user (HcParty) 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AbstractFilterDto<UserDto>] abstractFilterDtoUser (required):
  Future<Response> matchUsersByWithHttpInfo(AbstractFilterDto<UserDto> abstractFilterDtoUser,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/user/match';

    // ignore: prefer_final_locals
    Object? postBody = abstractFilterDtoUser;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get ids of healthcare party matching the provided filter for the current user (HcParty) 
  ///
  /// Parameters:
  ///
  /// * [AbstractFilterDto<UserDto>] abstractFilterDtoUser (required):
  Future<List<String>?> matchUsersBy(AbstractFilterDto<UserDto> abstractFilterDtoUser,) async {
    final response = await matchUsersByWithHttpInfo(abstractFilterDtoUser,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List)
        .cast<String>()
        .toList();

    }
    return null;
  }

  /// Modify a User property
  ///
  /// Modify a User properties based on his/her ID. The return value is the modified user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [List<PropertyStubDto>] propertyStubDto:
  Future<Response> modifyPropertiesWithHttpInfo(String userId, { List<PropertyStubDto>? propertyStubDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/user/{userId}/properties'
      .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody = propertyStubDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Modify a User property
  ///
  /// Modify a User properties based on his/her ID. The return value is the modified user.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [List<PropertyStubDto>] propertyStubDto:
  Future<UserDto?> modifyProperties(String userId, { List<PropertyStubDto>? propertyStubDto, }) async {
    final response = await modifyPropertiesWithHttpInfo(userId,  propertyStubDto: propertyStubDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserDto',) as UserDto;
    
    }
    return null;
  }

  /// Modify a user.
  ///
  /// No particular return value. It's just a message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserDto] userDto (required):
  Future<Response> modifyUserWithHttpInfo(UserDto userDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/user';

    // ignore: prefer_final_locals
    Object? postBody = userDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Modify a user.
  ///
  /// No particular return value. It's just a message.
  ///
  /// Parameters:
  ///
  /// * [UserDto] userDto (required):
  Future<UserDto?> modifyUser(UserDto userDto,) async {
    final response = await modifyUserWithHttpInfo(userDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserDto',) as UserDto;
    
    }
    return null;
  }

  /// Modify a user.
  ///
  /// No particular return value. It's just a message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [UserDto] userDto (required):
  Future<Response> modifyUserInGroupWithHttpInfo(String groupId, UserDto userDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/user/inGroup/{groupId}'
      .replaceAll('{groupId}', groupId);

    // ignore: prefer_final_locals
    Object? postBody = userDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Modify a user.
  ///
  /// No particular return value. It's just a message.
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [UserDto] userDto (required):
  Future<UserDto?> modifyUserInGroup(String groupId, UserDto userDto,) async {
    final response = await modifyUserInGroupWithHttpInfo(groupId, userDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserDto',) as UserDto;
    
    }
    return null;
  }
}
