//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class FrontEndMigrationApi {
  FrontEndMigrationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a front end migration
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FrontEndMigrationDto] frontEndMigrationDto (required):
  Future<Response> createFrontEndMigrationWithHttpInfo(FrontEndMigrationDto frontEndMigrationDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/frontendmigration';

    // ignore: prefer_final_locals
    Object? postBody = frontEndMigrationDto;

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

  /// Creates a front end migration
  ///
  /// Parameters:
  ///
  /// * [FrontEndMigrationDto] frontEndMigrationDto (required):
  Future<FrontEndMigrationDto?> createFrontEndMigration(FrontEndMigrationDto frontEndMigrationDto,) async {
    final response = await createFrontEndMigrationWithHttpInfo(frontEndMigrationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FrontEndMigrationDto',) as FrontEndMigrationDto;

    }
    return null;
  }

  /// Deletes a front end migration
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] frontEndMigrationId (required):
  Future<Response> deleteFrontEndMigrationWithHttpInfo(String frontEndMigrationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/frontendmigration/{frontEndMigrationId}'
        .replaceAll('{frontEndMigrationId}', frontEndMigrationId);

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

  /// Deletes a front end migration
  ///
  /// Parameters:
  ///
  /// * [String] frontEndMigrationId (required):
  Future<DocIdentifier?> deleteFrontEndMigration(String frontEndMigrationId,) async {
    final response = await deleteFrontEndMigrationWithHttpInfo(frontEndMigrationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocIdentifier',) as DocIdentifier;

    }
    return null;
  }

  /// Gets a front end migration
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] frontEndMigrationId (required):
  Future<Response> getFrontEndMigrationWithHttpInfo(String frontEndMigrationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/frontendmigration/{frontEndMigrationId}'.replaceAll('{frontEndMigrationId}', frontEndMigrationId);

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

  /// Gets a front end migration
  ///
  /// Parameters:
  ///
  /// * [String] frontEndMigrationId (required):
  Future<FrontEndMigrationDto?> getFrontEndMigration(String frontEndMigrationId,) async {
    final response = await getFrontEndMigrationWithHttpInfo(frontEndMigrationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FrontEndMigrationDto',) as FrontEndMigrationDto;

    }
    return null;
  }

  /// Gets an front end migration
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] frontEndMigrationName (required):
  Future<Response> getFrontEndMigrationByNameWithHttpInfo(String frontEndMigrationName,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/frontendmigration/byName/{frontEndMigrationName}'.replaceAll('{frontEndMigrationName}', frontEndMigrationName);

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

  /// Gets an front end migration
  ///
  /// Parameters:
  ///
  /// * [String] frontEndMigrationName (required):
  Future<List<FrontEndMigrationDto>?> getFrontEndMigrationByName(String frontEndMigrationName,) async {
    final response = await getFrontEndMigrationByNameWithHttpInfo(frontEndMigrationName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FrontEndMigrationDto>') as List)
        .cast<FrontEndMigrationDto>()
        .toList();

    }
    return null;
  }

  /// Gets a front end migration
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFrontEndMigrationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/frontendmigration';

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

  /// Gets a front end migration
  Future<List<FrontEndMigrationDto>?> getFrontEndMigrations() async {
    final response = await getFrontEndMigrationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FrontEndMigrationDto>') as List)
        .cast<FrontEndMigrationDto>()
        .toList();

    }
    return null;
  }

  /// Modifies a front end migration
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FrontEndMigrationDto] frontEndMigrationDto (required):
  Future<Response> modifyFrontEndMigrationWithHttpInfo(FrontEndMigrationDto frontEndMigrationDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/frontendmigration';

    // ignore: prefer_final_locals
    Object? postBody = frontEndMigrationDto;

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

  /// Modifies a front end migration
  ///
  /// Parameters:
  ///
  /// * [FrontEndMigrationDto] frontEndMigrationDto (required):
  Future<FrontEndMigrationDto?> modifyFrontEndMigration(FrontEndMigrationDto frontEndMigrationDto,) async {
    final response = await modifyFrontEndMigrationWithHttpInfo(frontEndMigrationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FrontEndMigrationDto',) as FrontEndMigrationDto;

    }
    return null;
  }
}
