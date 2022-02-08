//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CodeApi {
  CodeApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a Code
  ///
  /// Type, Code and Version are required.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CodeDto] codeDto (required):
  Future<Response> createCodeWithHttpInfo(CodeDto codeDto,) async {
    // Verify required params are set.
    if (codeDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: codeDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/code';

    // ignore: prefer_final_locals
    Object postBody = codeDto;

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

  /// Create a Code
  ///
  /// Type, Code and Version are required.
  ///
  /// Parameters:
  ///
  /// * [CodeDto] codeDto (required):
  Future<CodeDto> createCode(CodeDto codeDto,) async {
    final response = await createCodeWithHttpInfo(codeDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CodeDto',) as CodeDto;
    
    }
    return Future<CodeDto>.value();
  }

  /// Filter codes 
  ///
  /// Returns a list of codes along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] startKey:
  ///   The start key for pagination, depends on the filters used
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  ///
  /// * [int] skip:
  ///   Skip rows
  ///
  /// * [String] sort:
  ///   Sort key
  ///
  /// * [bool] desc:
  ///   Descending
  ///
  /// * [FilterChainCode] filterChainCode:
  Future<Response> filterCodesByWithHttpInfo({ String startKey, String startDocumentId, int limit, int skip, String sort, bool desc, FilterChainCode filterChainCode, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/code/filter';

    // ignore: prefer_final_locals
    Object postBody = filterChainCode;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startKey != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (skip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'skip', skip));
    }
    if (sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sort', sort));
    }
    if (desc != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'desc', desc));
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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Filter codes 
  ///
  /// Returns a list of codes along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Parameters:
  ///
  /// * [String] startKey:
  ///   The start key for pagination, depends on the filters used
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  ///
  /// * [int] skip:
  ///   Skip rows
  ///
  /// * [String] sort:
  ///   Sort key
  ///
  /// * [bool] desc:
  ///   Descending
  ///
  /// * [FilterChainCode] filterChainCode:
  Future<PaginatedListCodeDto> filterCodesBy({ String startKey, String startDocumentId, int limit, int skip, String sort, bool desc, FilterChainCode filterChainCode, }) async {
    final response = await filterCodesByWithHttpInfo( startKey: startKey, startDocumentId: startDocumentId, limit: limit, skip: skip, sort: sort, desc: desc, filterChainCode: filterChainCode, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListCodeDto',) as PaginatedListCodeDto;
    
    }
    return Future<PaginatedListCodeDto>.value();
  }

  /// Finding codes by code, type and version with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, pagination is not supported
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] region:
  ///
  /// * [String] types:
  ///
  /// * [String] language:
  ///
  /// * [String] label:
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A code document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findCodesByLabelWithHttpInfo({ String region, String types, String language, String label, String startKey, String startDocumentId, int limit, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/code/byLabel';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (region != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'region', region));
    }
    if (types != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'types', types));
    }
    if (language != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'language', language));
    }
    if (label != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'label', label));
    }
    if (startKey != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Finding codes by code, type and version with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, pagination is not supported
  ///
  /// Parameters:
  ///
  /// * [String] region:
  ///
  /// * [String] types:
  ///
  /// * [String] language:
  ///
  /// * [String] label:
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A code document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListCodeDto> findCodesByLabel({ String region, String types, String language, String label, String startKey, String startDocumentId, int limit, }) async {
    final response = await findCodesByLabelWithHttpInfo( region: region, types: types, language: language, label: label, startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListCodeDto',) as PaginatedListCodeDto;
    
    }
    return Future<PaginatedListCodeDto>.value();
  }

  /// Finding codes by code, type and version with pagination.
  ///
  /// Returns a list of codes matched with given input.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] linkType (required):
  ///
  /// * [String] linkedId:
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A code document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findCodesByLinkWithHttpInfo(String linkType, { String linkedId, String startKey, String startDocumentId, int limit, }) async {
    // Verify required params are set.
    if (linkType == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: linkType');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/code/byLink/{linkType}'
      .replaceAll('{linkType}', linkType);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (linkedId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'linkedId', linkedId));
    }
    if (startKey != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Finding codes by code, type and version with pagination.
  ///
  /// Returns a list of codes matched with given input.
  ///
  /// Parameters:
  ///
  /// * [String] linkType (required):
  ///
  /// * [String] linkedId:
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A code document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListCodeDto> findCodesByLink(String linkType, { String linkedId, String startKey, String startDocumentId, int limit, }) async {
    final response = await findCodesByLinkWithHttpInfo(linkType,  linkedId: linkedId, startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListCodeDto',) as PaginatedListCodeDto;
    
    }
    return Future<PaginatedListCodeDto>.value();
  }

  /// Finding codes by code, type and version with pagination.
  ///
  /// Returns a list of codes matched with given input.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] region:
  ///
  /// * [String] type:
  ///
  /// * [String] code:
  ///
  /// * [String] version:
  ///
  /// * [String] startKey:
  ///   The start key for pagination
  ///
  /// * [String] startDocumentId:
  ///   A code document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findCodesByTypeWithHttpInfo({ String region, String type, String code, String version, String startKey, String startDocumentId, int limit, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/code';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (region != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'region', region));
    }
    if (type != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'type', type));
    }
    if (code != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'code', code));
    }
    if (version != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'version', version));
    }
    if (startKey != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Finding codes by code, type and version with pagination.
  ///
  /// Returns a list of codes matched with given input.
  ///
  /// Parameters:
  ///
  /// * [String] region:
  ///
  /// * [String] type:
  ///
  /// * [String] code:
  ///
  /// * [String] version:
  ///
  /// * [String] startKey:
  ///   The start key for pagination
  ///
  /// * [String] startDocumentId:
  ///   A code document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListCodeDto> findCodesByType({ String region, String type, String code, String version, String startKey, String startDocumentId, int limit, }) async {
    final response = await findCodesByTypeWithHttpInfo( region: region, type: type, code: code, version: version, startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListCodeDto',) as PaginatedListCodeDto;
    
    }
    return Future<PaginatedListCodeDto>.value();
  }

  /// Get a code
  ///
  /// Get a code based on ID or (code,type,version) as query strings. (code,type,version) is unique.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] codeId (required):
  ///   Code id
  Future<Response> getCodeWithHttpInfo(String codeId,) async {
    // Verify required params are set.
    if (codeId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: codeId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/code/{codeId}'
      .replaceAll('{codeId}', codeId);

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

  /// Get a code
  ///
  /// Get a code based on ID or (code,type,version) as query strings. (code,type,version) is unique.
  ///
  /// Parameters:
  ///
  /// * [String] codeId (required):
  ///   Code id
  Future<CodeDto> getCode(String codeId,) async {
    final response = await getCodeWithHttpInfo(codeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CodeDto',) as CodeDto;
    
    }
    return Future<CodeDto>.value();
  }

  /// Get a code
  ///
  /// Get a code based on ID or (code,type,version) as query strings. (code,type,version) is unique.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///   Code type
  ///
  /// * [String] code (required):
  ///   Code code
  ///
  /// * [String] version (required):
  ///   Code version
  Future<Response> getCodeWithPartsWithHttpInfo(String type, String code, String version,) async {
    // Verify required params are set.
    if (type == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: type');
    }
    if (code == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: code');
    }
    if (version == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: version');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/code/{type}/{code}/{version}'
      .replaceAll('{type}', type)
      .replaceAll('{code}', code)
      .replaceAll('{version}', version);

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

  /// Get a code
  ///
  /// Get a code based on ID or (code,type,version) as query strings. (code,type,version) is unique.
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///   Code type
  ///
  /// * [String] code (required):
  ///   Code code
  ///
  /// * [String] version (required):
  ///   Code version
  Future<CodeDto> getCodeWithParts(String type, String code, String version,) async {
    final response = await getCodeWithPartsWithHttpInfo(type, code, version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CodeDto',) as CodeDto;
    
    }
    return Future<CodeDto>.value();
  }

  /// Get a list of codes by ids
  ///
  /// Keys must be delimited by coma
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> getCodesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // Verify required params are set.
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/code/byIds';

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

  /// Get a list of codes by ids
  ///
  /// Keys must be delimited by coma
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<CodeDto>> getCodes(ListOfIdsDto listOfIdsDto,) async {
    final response = await getCodesWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CodeDto>') as List)
        .cast<CodeDto>()
        .toList(growable: false);

    }
    return Future<List<CodeDto>>.value();
  }

  /// Import codes
  ///
  /// Import codes from the resources XML file depending on the passed pathVariable
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] codeType (required):
  Future<Response> importCodesWithHttpInfo(String codeType,) async {
    // Verify required params are set.
    if (codeType == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: codeType');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/code/{codeType}'
      .replaceAll('{codeType}', codeType);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
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

  /// Import codes
  ///
  /// Import codes from the resources XML file depending on the passed pathVariable
  ///
  /// Parameters:
  ///
  /// * [String] codeType (required):
  Future<Object> importCodes(String codeType,) async {
    final response = await importCodesWithHttpInfo(codeType,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return Future<Object>.value();
  }

  /// Finding code types.
  ///
  /// Returns a list of code types matched with given input.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] region:
  ///   Code region
  ///
  /// * [String] type:
  ///   Code type
  Future<Response> listCodeTypesByWithHttpInfo({ String region, String type, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/code/codetype/byRegionType';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (region != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'region', region));
    }
    if (type != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'type', type));
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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Finding code types.
  ///
  /// Returns a list of code types matched with given input.
  ///
  /// Parameters:
  ///
  /// * [String] region:
  ///   Code region
  ///
  /// * [String] type:
  ///   Code type
  Future<List<String>> listCodeTypesBy({ String region, String type, }) async {
    final response = await listCodeTypesByWithHttpInfo( region: region, type: type, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List)
        .cast<String>()
        .toList(growable: false);

    }
    return Future<List<String>>.value();
  }

  /// Finding codes by code, type and version
  ///
  /// Returns a list of codes matched with given input.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] region:
  ///   Code region
  ///
  /// * [String] type:
  ///   Code type
  ///
  /// * [String] code:
  ///   Code code
  ///
  /// * [String] version:
  ///   Code version
  Future<Response> listCodesByRegionTypeCodeVersionWithHttpInfo({ String region, String type, String code, String version, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/code/byRegionTypeCode';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (region != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'region', region));
    }
    if (type != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'type', type));
    }
    if (code != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'code', code));
    }
    if (version != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'version', version));
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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Finding codes by code, type and version
  ///
  /// Returns a list of codes matched with given input.
  ///
  /// Parameters:
  ///
  /// * [String] region:
  ///   Code region
  ///
  /// * [String] type:
  ///   Code type
  ///
  /// * [String] code:
  ///   Code code
  ///
  /// * [String] version:
  ///   Code version
  Future<List<CodeDto>> listCodesByRegionTypeCodeVersion({ String region, String type, String code, String version, }) async {
    final response = await listCodesByRegionTypeCodeVersionWithHttpInfo( region: region, type: type, code: code, version: version, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CodeDto>') as List)
        .cast<CodeDto>()
        .toList(growable: false);

    }
    return Future<List<CodeDto>>.value();
  }

  /// Finding tag types.
  ///
  /// Returns a list of tag types matched with given input.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] region:
  ///   Code region
  ///
  /// * [String] type:
  ///   Code type
  Future<Response> listTagTypesByWithHttpInfo({ String region, String type, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/code/tagtype/byRegionType';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (region != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'region', region));
    }
    if (type != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'type', type));
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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Finding tag types.
  ///
  /// Returns a list of tag types matched with given input.
  ///
  /// Parameters:
  ///
  /// * [String] region:
  ///   Code region
  ///
  /// * [String] type:
  ///   Code type
  Future<List<String>> listTagTypesBy({ String region, String type, }) async {
    final response = await listTagTypesByWithHttpInfo( region: region, type: type, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List)
        .cast<String>()
        .toList(growable: false);

    }
    return Future<List<String>>.value();
  }

  /// Get ids of code matching the provided filter for the current user (HcParty) 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AbstractFilterDtoCode] abstractFilterDtoCode (required):
  Future<Response> matchCodesByWithHttpInfo(AbstractFilterDtoCode abstractFilterDtoCode,) async {
    // Verify required params are set.
    if (abstractFilterDtoCode == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: abstractFilterDtoCode');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/code/match';

    // ignore: prefer_final_locals
    Object postBody = abstractFilterDtoCode;

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

  /// Get ids of code matching the provided filter for the current user (HcParty) 
  ///
  /// Parameters:
  ///
  /// * [AbstractFilterDtoCode] abstractFilterDtoCode (required):
  Future<List<String>> matchCodesBy(AbstractFilterDtoCode abstractFilterDtoCode,) async {
    final response = await matchCodesByWithHttpInfo(abstractFilterDtoCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List)
        .cast<String>()
        .toList(growable: false);

    }
    return Future<List<String>>.value();
  }

  /// Modify a code
  ///
  /// Modification of (type, code, version) is not allowed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CodeDto] codeDto (required):
  Future<Response> modifyCodeWithHttpInfo(CodeDto codeDto,) async {
    // Verify required params are set.
    if (codeDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: codeDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/code';

    // ignore: prefer_final_locals
    Object postBody = codeDto;

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

  /// Modify a code
  ///
  /// Modification of (type, code, version) is not allowed.
  ///
  /// Parameters:
  ///
  /// * [CodeDto] codeDto (required):
  Future<CodeDto> modifyCode(CodeDto codeDto,) async {
    final response = await modifyCodeWithHttpInfo(codeDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CodeDto',) as CodeDto;
    
    }
    return Future<CodeDto>.value();
  }
}
