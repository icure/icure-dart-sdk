//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class AccessLogApi {
  AccessLogApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates an access log
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AccessLogDto] accessLogDto (required):
  Future<Response> rawCreateAccessLogWithHttpInfo(AccessLogDto accessLogDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/accesslog';

    // ignore: prefer_final_locals
    Object? postBody = accessLogDto;

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

  /// Creates an access log
  ///
  /// Parameters:
  ///
  /// * [AccessLogDto] accessLogDto (required):
  Future<AccessLogDto?> rawCreateAccessLog(AccessLogDto accessLogDto,) async {
    final response = await rawCreateAccessLogWithHttpInfo(accessLogDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccessLogDto',) as AccessLogDto;
    
    }
    return null;
  }

  /// Deletes an access log
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> rawDeleteAccessLogsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/accesslog/delete/batch';

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

  /// Deletes an access log
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>?> rawDeleteAccessLogs(ListOfIdsDto listOfIdsDto,) async {
    final response = await rawDeleteAccessLogsWithHttpInfo(listOfIdsDto,);
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
  Future<Response> rawFindAccessLogsByWithHttpInfo({ int? fromEpoch, int? toEpoch, int? startKey, String? startDocumentId, int? limit, bool? descending, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/accesslog';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (fromEpoch != null) {
      queryParams.addAll(_queryParams('', 'fromEpoch', fromEpoch));
    }
    if (toEpoch != null) {
      queryParams.addAll(_queryParams('', 'toEpoch', toEpoch));
    }
    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
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
  Future<PaginatedListAccessLogDto?> rawFindAccessLogsBy({ int? fromEpoch, int? toEpoch, int? startKey, String? startDocumentId, int? limit, bool? descending, }) async {
    final response = await rawFindAccessLogsByWithHttpInfo( fromEpoch: fromEpoch, toEpoch: toEpoch, startKey: startKey, startDocumentId: startDocumentId, limit: limit, descending: descending, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListAccessLogDto',) as PaginatedListAccessLogDto;
    
    }
    return null;
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
  Future<Response> rawFindAccessLogsByUserAfterDateWithHttpInfo(String userId, { String? accessType, int? startDate, String? startKey, String? startDocumentId, int? limit, bool? descending, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/accesslog/byUser';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'userId', userId));
    if (accessType != null) {
      queryParams.addAll(_queryParams('', 'accessType', accessType));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
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
  Future<PaginatedListAccessLogDto?> rawFindAccessLogsByUserAfterDate(String userId, { String? accessType, int? startDate, String? startKey, String? startDocumentId, int? limit, bool? descending, }) async {
    final response = await rawFindAccessLogsByUserAfterDateWithHttpInfo(userId,  accessType: accessType, startDate: startDate, startKey: startKey, startDocumentId: startDocumentId, limit: limit, descending: descending, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListAccessLogDto',) as PaginatedListAccessLogDto;
    
    }
    return null;
  }

  /// Gets an access log
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accessLogId (required):
  Future<Response> rawGetAccessLogWithHttpInfo(String accessLogId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/accesslog/{accessLogId}'.replaceAll('{accessLogId}', accessLogId);

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

  /// Gets an access log
  ///
  /// Parameters:
  ///
  /// * [String] accessLogId (required):
  Future<AccessLogDto?> rawGetAccessLog(String accessLogId,) async {
    final response = await rawGetAccessLogWithHttpInfo(accessLogId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccessLogDto',) as AccessLogDto;
    
    }
    return null;
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
  Future<Response> rawListAccessLogsByHCPartyAndPatientForeignKeysWithHttpInfo(String hcPartyId, String secretFKeys,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/accesslog/byHcPartySecretForeignKeys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'hcPartyId', hcPartyId));
    queryParams.addAll(_queryParams('', 'secretFKeys', secretFKeys));

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

  /// List access logs found By Healthcare Party and secret foreign keyelementIds.
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<List<AccessLogDto>?> rawListAccessLogsByHCPartyAndPatientForeignKeys(String hcPartyId, String secretFKeys,) async {
    final response = await rawListAccessLogsByHCPartyAndPatientForeignKeysWithHttpInfo(hcPartyId, secretFKeys,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AccessLogDto>') as List)
        .cast<AccessLogDto>()
        .toList();

    }
    return null;
  }

  /// Modifies an access log
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AccessLogDto] accessLogDto (required):
  Future<Response> rawModifyAccessLogWithHttpInfo(AccessLogDto accessLogDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/accesslog';

    // ignore: prefer_final_locals
    Object? postBody = accessLogDto;

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

  /// Modifies an access log
  ///
  /// Parameters:
  ///
  /// * [AccessLogDto] accessLogDto (required):
  Future<AccessLogDto?> rawModifyAccessLog(AccessLogDto accessLogDto,) async {
    final response = await rawModifyAccessLogWithHttpInfo(accessLogDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccessLogDto',) as AccessLogDto;
    
    }
    return null;
  }
}
