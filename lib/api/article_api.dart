//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ArticleApi {
  ArticleApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a article
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ArticleDto] articleDto (required):
  Future<Response> createArticleWithHttpInfo(ArticleDto articleDto,) async {
    // Verify required params are set.
    if (articleDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: articleDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/article';

    // ignore: prefer_final_locals
    Object postBody = articleDto;

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

  /// Creates a article
  ///
  /// Parameters:
  ///
  /// * [ArticleDto] articleDto (required):
  Future<ArticleDto> createArticle(ArticleDto articleDto,) async {
    final response = await createArticleWithHttpInfo(articleDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ArticleDto',) as ArticleDto;
    
    }
    return Future<ArticleDto>.value();
  }

  /// Deletes articles
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> deleteArticlesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // Verify required params are set.
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/article/delete/batch';

    // ignore: prefer_final_locals
    Object postBody = listOfIdsDto;

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

  /// Deletes articles
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>> deleteArticles(ListOfIdsDto listOfIdsDto,) async {
    final response = await deleteArticlesWithHttpInfo(listOfIdsDto,);
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

  /// Gets an article
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] articleId (required):
  Future<Response> getArticleWithHttpInfo(String articleId,) async {
    // Verify required params are set.
    if (articleId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: articleId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/article/{articleId}'
      .replaceAll('{articleId}', articleId);

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

  /// Gets an article
  ///
  /// Parameters:
  ///
  /// * [String] articleId (required):
  Future<ArticleDto> getArticle(String articleId,) async {
    final response = await getArticleWithHttpInfo(articleId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ArticleDto',) as ArticleDto;
    
    }
    return Future<ArticleDto>.value();
  }

  /// Gets all articles
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getArticlesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/article';

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

  /// Gets all articles
  Future<List<ArticleDto>> getArticles() async {
    final response = await getArticlesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ArticleDto>') as List)
        .cast<ArticleDto>()
        .toList(growable: false);

    }
    return Future<List<ArticleDto>>.value();
  }

  /// Modifies an article
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ArticleDto] articleDto (required):
  Future<Response> modifyArticleWithHttpInfo(ArticleDto articleDto,) async {
    // Verify required params are set.
    if (articleDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: articleDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/article';

    // ignore: prefer_final_locals
    Object postBody = articleDto;

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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Modifies an article
  ///
  /// Parameters:
  ///
  /// * [ArticleDto] articleDto (required):
  Future<ArticleDto> modifyArticle(ArticleDto articleDto,) async {
    final response = await modifyArticleWithHttpInfo(articleDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ArticleDto',) as ArticleDto;
    
    }
    return Future<ArticleDto>.value();
  }
}
