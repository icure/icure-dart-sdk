//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TarificationApi {
  TarificationApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a Tarification
  ///
  /// Type, Tarification and Version are required.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TarificationDto] tarificationDto (required):
  Future<Response> createTarificationWithHttpInfo(TarificationDto tarificationDto,) async {
    // Verify required params are set.
    if (tarificationDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: tarificationDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/tarification';

    // ignore: prefer_final_locals
    Object postBody = tarificationDto;

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

  /// Create a Tarification
  ///
  /// Type, Tarification and Version are required.
  ///
  /// Parameters:
  ///
  /// * [TarificationDto] tarificationDto (required):
  Future<TarificationDto> createTarification(TarificationDto tarificationDto,) async {
    final response = await createTarificationWithHttpInfo(tarificationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TarificationDto',) as TarificationDto;
    
    }
    return Future<TarificationDto>.value();
  }

  /// Finding tarifications by tarification, type and version with pagination.
  ///
  /// Returns a list of tarifications matched with given input.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] region:
  ///
  /// * [String] type:
  ///
  /// * [String] tarification:
  ///
  /// * [String] version:
  ///
  /// * [String] startDocumentId:
  ///   A tarification document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findTarificationsByWithHttpInfo({ String region, String type, String tarification, String version, String startDocumentId, int limit, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/tarification';

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
    if (tarification != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'tarification', tarification));
    }
    if (version != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'version', version));
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

  /// Finding tarifications by tarification, type and version with pagination.
  ///
  /// Returns a list of tarifications matched with given input.
  ///
  /// Parameters:
  ///
  /// * [String] region:
  ///
  /// * [String] type:
  ///
  /// * [String] tarification:
  ///
  /// * [String] version:
  ///
  /// * [String] startDocumentId:
  ///   A tarification document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListTarificationDto> findTarificationsBy({ String region, String type, String tarification, String version, String startDocumentId, int limit, }) async {
    final response = await findTarificationsByWithHttpInfo( region: region, type: type, tarification: tarification, version: version, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListTarificationDto',) as PaginatedListTarificationDto;
    
    }
    return Future<PaginatedListTarificationDto>.value();
  }

  /// Finding tarifications by tarification, type and version
  ///
  /// Returns a list of tarifications matched with given input.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] region:
  ///   Tarification region
  ///
  /// * [String] type:
  ///   Tarification type
  ///
  /// * [String] tarification:
  ///   Tarification tarification
  ///
  /// * [String] version:
  ///   Tarification version
  Future<Response> findTarificationsBy1WithHttpInfo({ String region, String type, String tarification, String version, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/tarification/byRegionTypeTarification';

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
    if (tarification != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'tarification', tarification));
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

  /// Finding tarifications by tarification, type and version
  ///
  /// Returns a list of tarifications matched with given input.
  ///
  /// Parameters:
  ///
  /// * [String] region:
  ///   Tarification region
  ///
  /// * [String] type:
  ///   Tarification type
  ///
  /// * [String] tarification:
  ///   Tarification tarification
  ///
  /// * [String] version:
  ///   Tarification version
  Future<List<TarificationDto>> findTarificationsBy1({ String region, String type, String tarification, String version, }) async {
    final response = await findTarificationsBy1WithHttpInfo( region: region, type: type, tarification: tarification, version: version, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TarificationDto>') as List)
        .cast<TarificationDto>()
        .toList(growable: false);

    }
    return Future<List<TarificationDto>>.value();
  }

  /// Finding tarifications by tarification, type and version with pagination.
  ///
  /// Returns a list of tarifications matched with given input.
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
  /// * [String] startDocumentId:
  ///   A tarification document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findTarificationsByLabelWithHttpInfo({ String region, String types, String language, String label, String startDocumentId, int limit, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/tarification/byLabel';

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

  /// Finding tarifications by tarification, type and version with pagination.
  ///
  /// Returns a list of tarifications matched with given input.
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
  /// * [String] startDocumentId:
  ///   A tarification document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListTarificationDto> findTarificationsByLabel({ String region, String types, String language, String label, String startDocumentId, int limit, }) async {
    final response = await findTarificationsByLabelWithHttpInfo( region: region, types: types, language: language, label: label, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListTarificationDto',) as PaginatedListTarificationDto;
    
    }
    return Future<PaginatedListTarificationDto>.value();
  }

  /// Get a tarification
  ///
  /// Get a tarification based on ID or (tarification,type,version) as query strings. (tarification,type,version) is unique.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tarificationId (required):
  ///   Tarification id
  Future<Response> getTarificationWithHttpInfo(String tarificationId,) async {
    // Verify required params are set.
    if (tarificationId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: tarificationId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/tarification/{tarificationId}'
      .replaceAll('{tarificationId}', tarificationId);

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

  /// Get a tarification
  ///
  /// Get a tarification based on ID or (tarification,type,version) as query strings. (tarification,type,version) is unique.
  ///
  /// Parameters:
  ///
  /// * [String] tarificationId (required):
  ///   Tarification id
  Future<TarificationDto> getTarification(String tarificationId,) async {
    final response = await getTarificationWithHttpInfo(tarificationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TarificationDto',) as TarificationDto;
    
    }
    return Future<TarificationDto>.value();
  }

  /// Get a tarification
  ///
  /// Get a tarification based on ID or (tarification,type,version) as query strings. (tarification,type,version) is unique.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///   Tarification type
  ///
  /// * [String] tarification (required):
  ///   Tarification tarification
  ///
  /// * [String] version (required):
  ///   Tarification version
  Future<Response> getTarificationWithPartsWithHttpInfo(String type, String tarification, String version,) async {
    // Verify required params are set.
    if (type == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: type');
    }
    if (tarification == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: tarification');
    }
    if (version == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: version');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/tarification/{type}/{tarification}/{version}'
      .replaceAll('{type}', type)
      .replaceAll('{tarification}', tarification)
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

  /// Get a tarification
  ///
  /// Get a tarification based on ID or (tarification,type,version) as query strings. (tarification,type,version) is unique.
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///   Tarification type
  ///
  /// * [String] tarification (required):
  ///   Tarification tarification
  ///
  /// * [String] version (required):
  ///   Tarification version
  Future<TarificationDto> getTarificationWithParts(String type, String tarification, String version,) async {
    final response = await getTarificationWithPartsWithHttpInfo(type, tarification, version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TarificationDto',) as TarificationDto;
    
    }
    return Future<TarificationDto>.value();
  }

  /// Get a list of tarifications by ids
  ///
  /// Keys must be delimited by coma
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> getTarificationsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // Verify required params are set.
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/tarification/byIds';

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

  /// Get a list of tarifications by ids
  ///
  /// Keys must be delimited by coma
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<TarificationDto>> getTarifications(ListOfIdsDto listOfIdsDto,) async {
    final response = await getTarificationsWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TarificationDto>') as List)
        .cast<TarificationDto>()
        .toList(growable: false);

    }
    return Future<List<TarificationDto>>.value();
  }

  /// Modify a tarification
  ///
  /// Modification of (type, tarification, version) is not allowed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TarificationDto] tarificationDto (required):
  Future<Response> modifyTarificationWithHttpInfo(TarificationDto tarificationDto,) async {
    // Verify required params are set.
    if (tarificationDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: tarificationDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/tarification';

    // ignore: prefer_final_locals
    Object postBody = tarificationDto;

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

  /// Modify a tarification
  ///
  /// Modification of (type, tarification, version) is not allowed.
  ///
  /// Parameters:
  ///
  /// * [TarificationDto] tarificationDto (required):
  Future<TarificationDto> modifyTarification(TarificationDto tarificationDto,) async {
    final response = await modifyTarificationWithHttpInfo(tarificationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TarificationDto',) as TarificationDto;
    
    }
    return Future<TarificationDto>.value();
  }
}
