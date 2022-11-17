//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class EntityTemplateApi {
  EntityTemplateApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a EntityTemplate
  ///
  /// Type, EntityTemplate and Version are required.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EntityTemplateDto] entityTemplateDto (required):
  Future<Response> createEntityTemplateWithHttpInfo(EntityTemplateDto entityTemplateDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/entitytemplate';

    // ignore: prefer_final_locals
    Object? postBody = entityTemplateDto;

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

  /// Create a EntityTemplate
  ///
  /// Type, EntityTemplate and Version are required.
  ///
  /// Parameters:
  ///
  /// * [EntityTemplateDto] entityTemplateDto (required):
  Future<EntityTemplateDto?> createEntityTemplate(EntityTemplateDto entityTemplateDto,) async {
    final response = await createEntityTemplateWithHttpInfo(entityTemplateDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EntityTemplateDto',) as EntityTemplateDto;

    }
    return null;
  }

  /// Create a batch of entityTemplates
  ///
  /// Returns the modified entityTemplates.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<EntityTemplateDto>] entityTemplateDto (required):
  Future<Response> createEntityTemplatesWithHttpInfo(List<EntityTemplateDto> entityTemplateDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/entitytemplate/batch';

    // ignore: prefer_final_locals
    Object? postBody = entityTemplateDto;

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

  /// Create a batch of entityTemplates
  ///
  /// Returns the modified entityTemplates.
  ///
  /// Parameters:
  ///
  /// * [List<EntityTemplateDto>] entityTemplateDto (required):
  Future<List<EntityTemplateDto>?> createEntityTemplates(List<EntityTemplateDto> entityTemplateDto,) async {
    final response = await createEntityTemplatesWithHttpInfo(entityTemplateDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EntityTemplateDto>') as List)
        .cast<EntityTemplateDto>()
        .toList();

    }
    return null;
  }

  /// Delete entity templates
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> deleteEntityTemplateWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/entitytemplate/delete/batch';

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

  /// Delete entity templates
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>?> deleteEntityTemplate(ListOfIdsDto listOfIdsDto,) async {
    final response = await deleteEntityTemplateWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
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

  /// Finding entityTemplates by entityTemplate, type and version with pagination.
  ///
  /// Returns a list of entityTemplates matched with given input.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///
  /// * [String] keyword (required):
  ///
  /// * [bool] includeEntities:
  Future<Response> findAllEntityTemplatesByKeywordWithHttpInfo(String type, String keyword, { bool? includeEntities, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/entitytemplate/findAll/{type}/keyword/{keyword}'
        .replaceAll('{type}', type)
        .replaceAll('{keyword}', keyword);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (includeEntities != null) {
      queryParams.addAll(_queryParams('', 'includeEntities', includeEntities));
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

  /// Finding entityTemplates by entityTemplate, type and version with pagination.
  ///
  /// Returns a list of entityTemplates matched with given input.
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///
  /// * [String] keyword (required):
  ///
  /// * [bool] includeEntities:
  Future<List<EntityTemplateDto>?> findAllEntityTemplatesByKeyword(String type, String keyword, { bool? includeEntities, }) async {
    final response = await findAllEntityTemplatesByKeywordWithHttpInfo(type, keyword,  includeEntities: includeEntities, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EntityTemplateDto>') as List)
        .cast<EntityTemplateDto>()
        .toList();

    }
    return null;
  }

  /// Get a entityTemplate
  ///
  /// Get a entityTemplate based on ID or (entityTemplate,type,version) as query strings. (entityTemplate,type,version) is unique.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] entityTemplateId (required):
  ///   EntityTemplate id
  Future<Response> getEntityTemplateWithHttpInfo(String entityTemplateId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/entitytemplate/{entityTemplateId}'.replaceAll('{entityTemplateId}', entityTemplateId);

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

  /// Get a entityTemplate
  ///
  /// Get a entityTemplate based on ID or (entityTemplate,type,version) as query strings. (entityTemplate,type,version) is unique.
  ///
  /// Parameters:
  ///
  /// * [String] entityTemplateId (required):
  ///   EntityTemplate id
  Future<EntityTemplateDto?> getEntityTemplate(String entityTemplateId,) async {
    final response = await getEntityTemplateWithHttpInfo(entityTemplateId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EntityTemplateDto',) as EntityTemplateDto;

    }
    return null;
  }

  /// Get a list of entityTemplates by ids
  ///
  /// Keys must be delimited by coma
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> getEntityTemplatesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/entitytemplate/byIds';

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

  /// Get a list of entityTemplates by ids
  ///
  /// Keys must be delimited by coma
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<EntityTemplateDto>?> getEntityTemplates(ListOfIdsDto listOfIdsDto,) async {
    final response = await getEntityTemplatesWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EntityTemplateDto>') as List)
        .cast<EntityTemplateDto>()
        .toList();

    }
    return null;
  }

  /// Finding entityTemplates by entityTemplate, type and version with pagination.
  ///
  /// Returns a list of entityTemplates matched with given input.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///
  /// * [String] searchString:
  ///
  /// * [bool] includeEntities:
  Future<Response> listAllEntityTemplatesByWithHttpInfo(String type, { String? searchString, bool? includeEntities, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/entitytemplate/findAll/{type}'.replaceAll('{type}', type);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (searchString != null) {
      queryParams.addAll(_queryParams('', 'searchString', searchString));
    }
    if (includeEntities != null) {
      queryParams.addAll(_queryParams('', 'includeEntities', includeEntities));
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

  /// Finding entityTemplates by entityTemplate, type and version with pagination.
  ///
  /// Returns a list of entityTemplates matched with given input.
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///
  /// * [String] searchString:
  ///
  /// * [bool] includeEntities:
  Future<List<EntityTemplateDto>?> listAllEntityTemplatesBy(String type, { String? searchString, bool? includeEntities, }) async {
    final response = await listAllEntityTemplatesByWithHttpInfo(type,  searchString: searchString, includeEntities: includeEntities, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EntityTemplateDto>') as List)
        .cast<EntityTemplateDto>()
        .toList();

    }
    return null;
  }

  /// Finding entityTemplates by userId, entityTemplate, type and version with pagination.
  ///
  /// Returns a list of entityTemplates matched with given input.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [String] type (required):
  ///
  /// * [String] searchString:
  ///
  /// * [bool] includeEntities:
  Future<Response> listEntityTemplatesByWithHttpInfo(String userId, String type, { String? searchString, bool? includeEntities, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/entitytemplate/find/{userId}/{type}'.replaceAll('{userId}', userId).replaceAll('{type}', type);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (searchString != null) {
      queryParams.addAll(_queryParams('', 'searchString', searchString));
    }
    if (includeEntities != null) {
      queryParams.addAll(_queryParams('', 'includeEntities', includeEntities));
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

  /// Finding entityTemplates by userId, entityTemplate, type and version with pagination.
  ///
  /// Returns a list of entityTemplates matched with given input.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [String] type (required):
  ///
  /// * [String] searchString:
  ///
  /// * [bool] includeEntities:
  Future<List<EntityTemplateDto>?> listEntityTemplatesBy(String userId, String type, { String? searchString, bool? includeEntities, }) async {
    final response = await listEntityTemplatesByWithHttpInfo(userId, type,  searchString: searchString, includeEntities: includeEntities, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EntityTemplateDto>') as List)
        .cast<EntityTemplateDto>()
        .toList();

    }
    return null;
  }

  /// Finding entityTemplates by userId, type and keyword.
  ///
  /// Returns a list of entityTemplates matched with given input.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [String] type (required):
  ///
  /// * [String] keyword (required):
  ///
  /// * [bool] includeEntities:
  Future<Response> listEntityTemplatesByKeywordWithHttpInfo(String userId, String type, String keyword, { bool? includeEntities, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/entitytemplate/find/{userId}/{type}/keyword/{keyword}'
        .replaceAll('{userId}', userId)
        .replaceAll('{type}', type)
        .replaceAll('{keyword}', keyword);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (includeEntities != null) {
      queryParams.addAll(_queryParams('', 'includeEntities', includeEntities));
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

  /// Finding entityTemplates by userId, type and keyword.
  ///
  /// Returns a list of entityTemplates matched with given input.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [String] type (required):
  ///
  /// * [String] keyword (required):
  ///
  /// * [bool] includeEntities:
  Future<List<EntityTemplateDto>?> listEntityTemplatesByKeyword(String userId, String type, String keyword, { bool? includeEntities, }) async {
    final response = await listEntityTemplatesByKeywordWithHttpInfo(userId, type, keyword,  includeEntities: includeEntities, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EntityTemplateDto>') as List)
        .cast<EntityTemplateDto>()
        .toList();

    }
    return null;
  }

  /// Modify a entityTemplate
  ///
  /// Modification of (type, entityTemplate, version) is not allowed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EntityTemplateDto] entityTemplateDto (required):
  Future<Response> modifyEntityTemplateWithHttpInfo(EntityTemplateDto entityTemplateDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/entitytemplate';

    // ignore: prefer_final_locals
    Object? postBody = entityTemplateDto;

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

  /// Modify a entityTemplate
  ///
  /// Modification of (type, entityTemplate, version) is not allowed.
  ///
  /// Parameters:
  ///
  /// * [EntityTemplateDto] entityTemplateDto (required):
  Future<EntityTemplateDto?> modifyEntityTemplate(EntityTemplateDto entityTemplateDto,) async {
    final response = await modifyEntityTemplateWithHttpInfo(entityTemplateDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EntityTemplateDto',) as EntityTemplateDto;

    }
    return null;
  }

  /// Modify a batch of entityTemplates
  ///
  /// Returns the modified entityTemplates.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<EntityTemplateDto>] entityTemplateDto (required):
  Future<Response> modifyEntityTemplatesWithHttpInfo(List<EntityTemplateDto> entityTemplateDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/entitytemplate/batch';

    // ignore: prefer_final_locals
    Object? postBody = entityTemplateDto;

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

  /// Modify a batch of entityTemplates
  ///
  /// Returns the modified entityTemplates.
  ///
  /// Parameters:
  ///
  /// * [List<EntityTemplateDto>] entityTemplateDto (required):
  Future<List<EntityTemplateDto>?> modifyEntityTemplates(List<EntityTemplateDto> entityTemplateDto,) async {
    final response = await modifyEntityTemplatesWithHttpInfo(entityTemplateDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EntityTemplateDto>') as List)
        .cast<EntityTemplateDto>()
        .toList();

    }
    return null;
  }
}
