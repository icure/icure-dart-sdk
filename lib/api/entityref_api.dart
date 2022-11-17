//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class EntityrefApi {
  EntityrefApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create an entity reference
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EntityReferenceDto] entityReferenceDto (required):
  Future<Response> createEntityReferenceWithHttpInfo(EntityReferenceDto entityReferenceDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/entityref';

    // ignore: prefer_final_locals
    Object? postBody = entityReferenceDto;

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

  /// Create an entity reference
  ///
  /// Parameters:
  ///
  /// * [EntityReferenceDto] entityReferenceDto (required):
  Future<EntityReferenceDto?> createEntityReference(EntityReferenceDto entityReferenceDto,) async {
    final response = await createEntityReferenceWithHttpInfo(entityReferenceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EntityReferenceDto',) as EntityReferenceDto;

    }
    return null;
  }

  /// Find latest reference for a prefix
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] prefix (required):
  Future<Response> getLatestWithHttpInfo(String prefix,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/entityref/latest/{prefix}'
        .replaceAll('{prefix}', prefix);

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

  /// Find latest reference for a prefix
  ///
  /// Parameters:
  ///
  /// * [String] prefix (required):
  Future<EntityReferenceDto?> getLatest(String prefix,) async {
    final response = await getLatestWithHttpInfo(prefix,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EntityReferenceDto',) as EntityReferenceDto;

    }
    return null;
  }
}
