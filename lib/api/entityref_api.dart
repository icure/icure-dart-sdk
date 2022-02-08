//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EntityrefApi {
  EntityrefApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create an entity reference
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EntityReferenceDto] entityReferenceDto (required):
  Future<Response> createEntityReferenceWithHttpInfo(EntityReferenceDto entityReferenceDto,) async {
    // Verify required params are set.
    if (entityReferenceDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: entityReferenceDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/entityref';

    // ignore: prefer_final_locals
    Object postBody = entityReferenceDto;

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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Create an entity reference
  ///
  /// Parameters:
  ///
  /// * [EntityReferenceDto] entityReferenceDto (required):
  Future<EntityReferenceDto> createEntityReference(EntityReferenceDto entityReferenceDto,) async {
    final response = await createEntityReferenceWithHttpInfo(entityReferenceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EntityReferenceDto',) as EntityReferenceDto;
    
    }
    return Future<EntityReferenceDto>.value();
  }

  /// Find latest reference for a prefix 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] prefix (required):
  Future<Response> getLatestWithHttpInfo(String prefix,) async {
    // Verify required params are set.
    if (prefix == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: prefix');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/entityref/latest/{prefix}'
      .replaceAll('{prefix}', prefix);

    // ignore: prefer_final_locals
    Object postBody;

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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Find latest reference for a prefix 
  ///
  /// Parameters:
  ///
  /// * [String] prefix (required):
  Future<EntityReferenceDto> getLatest(String prefix,) async {
    final response = await getLatestWithHttpInfo(prefix,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EntityReferenceDto',) as EntityReferenceDto;
    
    }
    return Future<EntityReferenceDto>.value();
  }
}
