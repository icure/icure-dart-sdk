//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class KeywordApi {
  KeywordApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
    // Verify required params are set.
    if (keywordDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: keywordDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/keyword';

    // ignore: prefer_final_locals
    Object postBody = keywordDto;

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

  /// Create a keyword with the current user
  ///
  /// Returns an instance of created keyword.
  ///
  /// Parameters:
  ///
  /// * [KeywordDto] keywordDto (required):
  Future<KeywordDto> createKeyword(KeywordDto keywordDto,) async {
    final response = await createKeywordWithHttpInfo(keywordDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KeywordDto',) as KeywordDto;
    
    }
    return Future<KeywordDto>.value();
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
    // Verify required params are set.
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/keyword/delete/batch';

    // ignore: prefer_final_locals
    Object postBody = listOfIdsDto;

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

  /// Delete keywords.
  ///
  /// Response is a set containing the ID's of deleted keywords.
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>> deleteKeywords(ListOfIdsDto listOfIdsDto,) async {
    final response = await deleteKeywordsWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocIdentifier>') as List)
        .cast<DocIdentifier>()
        .toList(growable: false);

    }
    return Future<List<DocIdentifier>>.value();
  }

  /// Get a keyword
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] keywordId (required):
  Future<Response> getKeywordWithHttpInfo(String keywordId,) async {
    // Verify required params are set.
    if (keywordId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: keywordId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/keyword/{keywordId}'
      .replaceAll('{keywordId}', keywordId);

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

  /// Get a keyword
  ///
  /// Parameters:
  ///
  /// * [String] keywordId (required):
  Future<KeywordDto> getKeyword(String keywordId,) async {
    final response = await getKeywordWithHttpInfo(keywordId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KeywordDto',) as KeywordDto;
    
    }
    return Future<KeywordDto>.value();
  }

  /// Gets all keywords
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getKeywordsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/keyword';

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

  /// Gets all keywords
  Future<List<KeywordDto>> getKeywords() async {
    final response = await getKeywordsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<KeywordDto>') as List)
        .cast<KeywordDto>()
        .toList(growable: false);

    }
    return Future<List<KeywordDto>>.value();
  }

  /// Get keywords by user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> getKeywordsByUserWithHttpInfo(String userId,) async {
    // Verify required params are set.
    if (userId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/keyword/byUser/{userId}'
      .replaceAll('{userId}', userId);

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

  /// Get keywords by user
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<List<KeywordDto>> getKeywordsByUser(String userId,) async {
    final response = await getKeywordsByUserWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<KeywordDto>') as List)
        .cast<KeywordDto>()
        .toList(growable: false);

    }
    return Future<List<KeywordDto>>.value();
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
    // Verify required params are set.
    if (keywordDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: keywordDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/keyword';

    // ignore: prefer_final_locals
    Object postBody = keywordDto;

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

  /// Modify a keyword
  ///
  /// Returns the modified keyword.
  ///
  /// Parameters:
  ///
  /// * [KeywordDto] keywordDto (required):
  Future<KeywordDto> modifyKeyword(KeywordDto keywordDto,) async {
    final response = await modifyKeywordWithHttpInfo(keywordDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KeywordDto',) as KeywordDto;
    
    }
    return Future<KeywordDto>.value();
  }
}
