//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AuthApi {
  AuthApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// login
  ///
  /// Login using username and password
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [LoginCredentials] loginCredentials (required):
  Future<Response> loginWithHttpInfo(LoginCredentials loginCredentials,) async {
    // Verify required params are set.
    if (loginCredentials == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: loginCredentials');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/auth/login';

    // ignore: prefer_final_locals
    Object postBody = loginCredentials;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// login
  ///
  /// Login using username and password
  ///
  /// Parameters:
  ///
  /// * [LoginCredentials] loginCredentials (required):
  Future<AuthenticationResponse> login(LoginCredentials loginCredentials,) async {
    final response = await loginWithHttpInfo(loginCredentials,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthenticationResponse',) as AuthenticationResponse;
    
    }
    return Future<AuthenticationResponse>.value();
  }

  /// logout
  ///
  /// Logout
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> logoutWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/auth/logout';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// logout
  ///
  /// Logout
  Future<AuthenticationResponse> logout() async {
    final response = await logoutWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthenticationResponse',) as AuthenticationResponse;
    
    }
    return Future<AuthenticationResponse>.value();
  }

  /// logout
  ///
  /// Logout
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> logoutPostWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/auth/logout';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// logout
  ///
  /// Logout
  Future<AuthenticationResponse> logoutPost() async {
    final response = await logoutPostWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthenticationResponse',) as AuthenticationResponse;
    
    }
    return Future<AuthenticationResponse>.value();
  }

  /// token
  ///
  /// Get token for subsequent operation
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] method (required):
  ///
  /// * [String] path (required):
  Future<Response> tokenWithHttpInfo(String method, String path,) async {
    // Verify required params are set.
    if (method == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: method');
    }
    if (path == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: path');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/auth/token/{method}/{path}'
      .replaceAll('{method}', method)
      .replaceAll('{path}', path);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// token
  ///
  /// Get token for subsequent operation
  ///
  /// Parameters:
  ///
  /// * [String] method (required):
  ///
  /// * [String] path (required):
  Future<String> token(String method, String path,) async {
    final response = await tokenWithHttpInfo(method, path,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return Future<String>.value();
  }
}
