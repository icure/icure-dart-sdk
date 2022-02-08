//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FrontEndMigrationApi {
  FrontEndMigrationApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a front end migration
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FrontEndMigrationDto] frontEndMigrationDto (required):
  Future<Response> createFrontEndMigrationWithHttpInfo(FrontEndMigrationDto frontEndMigrationDto,) async {
    // Verify required params are set.
    if (frontEndMigrationDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: frontEndMigrationDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/frontendmigration';

    // ignore: prefer_final_locals
    Object postBody = frontEndMigrationDto;

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

  /// Creates a front end migration
  ///
  /// Parameters:
  ///
  /// * [FrontEndMigrationDto] frontEndMigrationDto (required):
  Future<FrontEndMigrationDto> createFrontEndMigration(FrontEndMigrationDto frontEndMigrationDto,) async {
    final response = await createFrontEndMigrationWithHttpInfo(frontEndMigrationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FrontEndMigrationDto',) as FrontEndMigrationDto;
    
    }
    return Future<FrontEndMigrationDto>.value();
  }

  /// Deletes a front end migration
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] frontEndMigrationId (required):
  Future<Response> deleteFrontEndMigrationWithHttpInfo(String frontEndMigrationId,) async {
    // Verify required params are set.
    if (frontEndMigrationId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: frontEndMigrationId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/frontendmigration/{frontEndMigrationId}'
      .replaceAll('{frontEndMigrationId}', frontEndMigrationId);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Deletes a front end migration
  ///
  /// Parameters:
  ///
  /// * [String] frontEndMigrationId (required):
  Future<DocIdentifier> deleteFrontEndMigration(String frontEndMigrationId,) async {
    final response = await deleteFrontEndMigrationWithHttpInfo(frontEndMigrationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocIdentifier',) as DocIdentifier;
    
    }
    return Future<DocIdentifier>.value();
  }

  /// Gets a front end migration
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] frontEndMigrationId (required):
  Future<Response> getFrontEndMigrationWithHttpInfo(String frontEndMigrationId,) async {
    // Verify required params are set.
    if (frontEndMigrationId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: frontEndMigrationId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/frontendmigration/{frontEndMigrationId}'
      .replaceAll('{frontEndMigrationId}', frontEndMigrationId);

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

  /// Gets a front end migration
  ///
  /// Parameters:
  ///
  /// * [String] frontEndMigrationId (required):
  Future<FrontEndMigrationDto> getFrontEndMigration(String frontEndMigrationId,) async {
    final response = await getFrontEndMigrationWithHttpInfo(frontEndMigrationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FrontEndMigrationDto',) as FrontEndMigrationDto;
    
    }
    return Future<FrontEndMigrationDto>.value();
  }

  /// Gets an front end migration
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] frontEndMigrationName (required):
  Future<Response> getFrontEndMigrationByNameWithHttpInfo(String frontEndMigrationName,) async {
    // Verify required params are set.
    if (frontEndMigrationName == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: frontEndMigrationName');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/frontendmigration/byName/{frontEndMigrationName}'
      .replaceAll('{frontEndMigrationName}', frontEndMigrationName);

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

  /// Gets an front end migration
  ///
  /// Parameters:
  ///
  /// * [String] frontEndMigrationName (required):
  Future<List<FrontEndMigrationDto>> getFrontEndMigrationByName(String frontEndMigrationName,) async {
    final response = await getFrontEndMigrationByNameWithHttpInfo(frontEndMigrationName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FrontEndMigrationDto>') as List)
        .cast<FrontEndMigrationDto>()
        .toList(growable: false);

    }
    return Future<List<FrontEndMigrationDto>>.value();
  }

  /// Gets a front end migration
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFrontEndMigrationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/frontendmigration';

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

  /// Gets a front end migration
  Future<List<FrontEndMigrationDto>> getFrontEndMigrations() async {
    final response = await getFrontEndMigrationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FrontEndMigrationDto>') as List)
        .cast<FrontEndMigrationDto>()
        .toList(growable: false);

    }
    return Future<List<FrontEndMigrationDto>>.value();
  }

  /// Modifies a front end migration
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FrontEndMigrationDto] frontEndMigrationDto (required):
  Future<Response> modifyFrontEndMigrationWithHttpInfo(FrontEndMigrationDto frontEndMigrationDto,) async {
    // Verify required params are set.
    if (frontEndMigrationDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: frontEndMigrationDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/frontendmigration';

    // ignore: prefer_final_locals
    Object postBody = frontEndMigrationDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Modifies a front end migration
  ///
  /// Parameters:
  ///
  /// * [FrontEndMigrationDto] frontEndMigrationDto (required):
  Future<FrontEndMigrationDto> modifyFrontEndMigration(FrontEndMigrationDto frontEndMigrationDto,) async {
    final response = await modifyFrontEndMigrationWithHttpInfo(frontEndMigrationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FrontEndMigrationDto',) as FrontEndMigrationDto;
    
    }
    return Future<FrontEndMigrationDto>.value();
  }
}
