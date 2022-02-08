//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AccessLogApi {
  AccessLogApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates an access log
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AccessLogDto] accessLogDto (required):
  Future<Response> createAccessLogWithHttpInfo(AccessLogDto accessLogDto,) async {
    // Verify required params are set.
    if (accessLogDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: accessLogDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/accesslog';

    // ignore: prefer_final_locals
    Object postBody = accessLogDto;

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

  /// Creates an access log
  ///
  /// Parameters:
  ///
  /// * [AccessLogDto] accessLogDto (required):
  Future<AccessLogDto> createAccessLog(AccessLogDto accessLogDto,) async {
    final response = await createAccessLogWithHttpInfo(accessLogDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccessLogDto',) as AccessLogDto;
    
    }
    return Future<AccessLogDto>.value();
  }

  /// Deletes an access log
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> deleteAccessLogsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // Verify required params are set.
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/accesslog/delete/batch';

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

  /// Deletes an access log
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>> deleteAccessLogs(ListOfIdsDto listOfIdsDto,) async {
    final response = await deleteAccessLogsWithHttpInfo(listOfIdsDto,);
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

  /// Get Paginated List of Access logs
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] fromEpoch:
  ///
  /// * [int] toEpoch:
  ///
  /// * [int] startKey:
  ///
  /// * [String] startDocumentId:
  ///
  /// * [int] limit:
  ///
  /// * [bool] descending:
  Future<Response> findAccessLogsByWithHttpInfo({ int fromEpoch, int toEpoch, int startKey, String startDocumentId, int limit, bool descending, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/accesslog';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (fromEpoch != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'fromEpoch', fromEpoch));
    }
    if (toEpoch != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'toEpoch', toEpoch));
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
    if (descending != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'descending', descending));
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

  /// Get Paginated List of Access logs
  ///
  /// Parameters:
  ///
  /// * [int] fromEpoch:
  ///
  /// * [int] toEpoch:
  ///
  /// * [int] startKey:
  ///
  /// * [String] startDocumentId:
  ///
  /// * [int] limit:
  ///
  /// * [bool] descending:
  Future<PaginatedListAccessLogDto> findAccessLogsBy({ int fromEpoch, int toEpoch, int startKey, String startDocumentId, int limit, bool descending, }) async {
    final response = await findAccessLogsByWithHttpInfo( fromEpoch: fromEpoch, toEpoch: toEpoch, startKey: startKey, startDocumentId: startDocumentId, limit: limit, descending: descending, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListAccessLogDto',) as PaginatedListAccessLogDto;
    
    }
    return Future<PaginatedListAccessLogDto>.value();
  }

  /// Get Paginated List of Access logs by user after date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   A User ID
  ///
  /// * [String] accessType:
  ///   The type of access (COMPUTER or USER)
  ///
  /// * [int] startDate:
  ///   The start search epoch
  ///
  /// * [String] startKey:
  ///   The start key for pagination
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  ///
  /// * [bool] descending:
  ///   Descending order
  Future<Response> findAccessLogsByUserAfterDateWithHttpInfo(String userId, { String accessType, int startDate, String startKey, String startDocumentId, int limit, bool descending, }) async {
    // Verify required params are set.
    if (userId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/accesslog/byUser';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'userId', userId));
    if (accessType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'accessType', accessType));
    }
    if (startDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'startDate', startDate));
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
    if (descending != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'descending', descending));
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

  /// Get Paginated List of Access logs by user after date
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   A User ID
  ///
  /// * [String] accessType:
  ///   The type of access (COMPUTER or USER)
  ///
  /// * [int] startDate:
  ///   The start search epoch
  ///
  /// * [String] startKey:
  ///   The start key for pagination
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  ///
  /// * [bool] descending:
  ///   Descending order
  Future<PaginatedListAccessLogDto> findAccessLogsByUserAfterDate(String userId, { String accessType, int startDate, String startKey, String startDocumentId, int limit, bool descending, }) async {
    final response = await findAccessLogsByUserAfterDateWithHttpInfo(userId,  accessType: accessType, startDate: startDate, startKey: startKey, startDocumentId: startDocumentId, limit: limit, descending: descending, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListAccessLogDto',) as PaginatedListAccessLogDto;
    
    }
    return Future<PaginatedListAccessLogDto>.value();
  }

  /// Gets an access log
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accessLogId (required):
  Future<Response> getAccessLogWithHttpInfo(String accessLogId,) async {
    // Verify required params are set.
    if (accessLogId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: accessLogId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/accesslog/{accessLogId}'
      .replaceAll('{accessLogId}', accessLogId);

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

  /// Gets an access log
  ///
  /// Parameters:
  ///
  /// * [String] accessLogId (required):
  Future<AccessLogDto> getAccessLog(String accessLogId,) async {
    final response = await getAccessLogWithHttpInfo(accessLogId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccessLogDto',) as AccessLogDto;
    
    }
    return Future<AccessLogDto>.value();
  }

  /// List access logs found By Healthcare Party and secret foreign keyelementIds.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<Response> listAccessLogsByHCPartyAndPatientForeignKeysWithHttpInfo(String hcPartyId, String secretFKeys,) async {
    // Verify required params are set.
    if (hcPartyId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: hcPartyId');
    }
    if (secretFKeys == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: secretFKeys');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/accesslog/byHcPartySecretForeignKeys';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'hcPartyId', hcPartyId));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'secretFKeys', secretFKeys));

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

  /// List access logs found By Healthcare Party and secret foreign keyelementIds.
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<List<AccessLogDto>> listAccessLogsByHCPartyAndPatientForeignKeys(String hcPartyId, String secretFKeys,) async {
    final response = await listAccessLogsByHCPartyAndPatientForeignKeysWithHttpInfo(hcPartyId, secretFKeys,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AccessLogDto>') as List)
        .cast<AccessLogDto>()
        .toList(growable: false);

    }
    return Future<List<AccessLogDto>>.value();
  }

  /// Modifies an access log
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AccessLogDto] accessLogDto (required):
  Future<Response> modifyAccessLogWithHttpInfo(AccessLogDto accessLogDto,) async {
    // Verify required params are set.
    if (accessLogDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: accessLogDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/accesslog';

    // ignore: prefer_final_locals
    Object postBody = accessLogDto;

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

  /// Modifies an access log
  ///
  /// Parameters:
  ///
  /// * [AccessLogDto] accessLogDto (required):
  Future<AccessLogDto> modifyAccessLog(AccessLogDto accessLogDto,) async {
    final response = await modifyAccessLogWithHttpInfo(accessLogDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccessLogDto',) as AccessLogDto;
    
    }
    return Future<AccessLogDto>.value();
  }
}
