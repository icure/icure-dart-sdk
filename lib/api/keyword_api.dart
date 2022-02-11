//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class KeywordApi {
  KeywordApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a keyword with the current user
  ///
  /// Returns an instance of created keyword.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [KeywordDto] keywordDto (required):
  Future<Response> createKeywordWithHttpInfo(KeywordDto keywordDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/keyword';

    // ignore: prefer_final_locals
    Object? postBody = keywordDto;

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

  /// Create a keyword with the current user
  ///
  /// Returns an instance of created keyword.
  ///
  /// Parameters:
  ///
  /// * [KeywordDto] keywordDto (required):
  Future<KeywordDto?> createKeyword(KeywordDto keywordDto,) async {
    final response = await createKeywordWithHttpInfo(keywordDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KeywordDto',) as KeywordDto;
    
    }
    return null;
  }

  /// Delete keywords.
  ///
  /// Response is a set containing the ID's of deleted keywords.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> deleteKeywordsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/keyword/delete/batch';

    // ignore: prefer_final_locals
    Object? postBody = listOfIdsDto;

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

  /// Delete keywords.
  ///
  /// Response is a set containing the ID's of deleted keywords.
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>?> deleteKeywords(ListOfIdsDto listOfIdsDto,) async {
    final response = await deleteKeywordsWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocIdentifier>') as List)
        .cast<DocIdentifier>()
        .toList();

    }
    return null;
  }

  /// Get a keyword
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] keywordId (required):
  Future<Response> getKeywordWithHttpInfo(String keywordId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/keyword/{keywordId}'
      .replaceAll('{keywordId}', keywordId);

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

  /// Get a keyword
  ///
  /// Parameters:
  ///
  /// * [String] keywordId (required):
  Future<KeywordDto?> getKeyword(String keywordId,) async {
    final response = await getKeywordWithHttpInfo(keywordId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KeywordDto',) as KeywordDto;
    
    }
    return null;
  }

  /// Gets all keywords
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getKeywordsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/keyword';

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

  /// Gets all keywords
  Future<List<KeywordDto>?> getKeywords() async {
    final response = await getKeywordsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<KeywordDto>') as List)
        .cast<KeywordDto>()
        .toList();

    }
    return null;
  }

  /// Get keywords by user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> getKeywordsByUserWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/keyword/byUser/{userId}'
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

  /// Get keywords by user
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<List<KeywordDto>?> getKeywordsByUser(String userId,) async {
    final response = await getKeywordsByUserWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<KeywordDto>') as List)
        .cast<KeywordDto>()
        .toList();

    }
    return null;
  }

  /// Modify a keyword
  ///
  /// Returns the modified keyword.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [KeywordDto] keywordDto (required):
  Future<Response> modifyKeywordWithHttpInfo(KeywordDto keywordDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/keyword';

    // ignore: prefer_final_locals
    Object? postBody = keywordDto;

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

  /// Modify a keyword
  ///
  /// Returns the modified keyword.
  ///
  /// Parameters:
  ///
  /// * [KeywordDto] keywordDto (required):
  Future<KeywordDto?> modifyKeyword(KeywordDto keywordDto,) async {
    final response = await modifyKeywordWithHttpInfo(keywordDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KeywordDto',) as KeywordDto;
    
    }
    return null;
  }
}
