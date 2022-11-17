//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class TimeTableApi {
  TimeTableApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a timeTable
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TimeTableDto] timeTableDto (required):
  Future<Response> rawCreateTimeTableWithHttpInfo(TimeTableDto timeTableDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/timeTable';

    // ignore: prefer_final_locals
    Object? postBody = timeTableDto;

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

  /// Creates a timeTable
  ///
  /// Parameters:
  ///
  /// * [TimeTableDto] timeTableDto (required):
  Future<TimeTableDto?> rawCreateTimeTable(TimeTableDto timeTableDto,) async {
    final response = await rawCreateTimeTableWithHttpInfo(timeTableDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TimeTableDto',) as TimeTableDto;

    }
    return null;
  }

  /// Deletes an timeTable
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> rawDeleteTimeTableWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/timeTable/delete/batch';

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

  /// Deletes an timeTable
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>?> rawDeleteTimeTable(ListOfIdsDto listOfIdsDto,) async {
    final response = await rawDeleteTimeTableWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
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

  /// Gets a timeTable
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] timeTableId (required):
  Future<Response> rawGetTimeTableWithHttpInfo(String timeTableId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/timeTable/{timeTableId}'.replaceAll('{timeTableId}', timeTableId);

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

  /// Gets a timeTable
  ///
  /// Parameters:
  ///
  /// * [String] timeTableId (required):
  Future<TimeTableDto?> rawGetTimeTable(String timeTableId,) async {
    final response = await rawGetTimeTableWithHttpInfo(timeTableId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TimeTableDto',) as TimeTableDto;

    }
    return null;
  }

  /// Get TimeTables by AgendaId
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] agendaId (required):
  Future<Response> rawGetTimeTablesByAgendaIdWithHttpInfo(String agendaId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/timeTable/byAgendaId';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'agendaId', agendaId));

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


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

  /// Get TimeTables by AgendaId
  ///
  /// Parameters:
  ///
  /// * [String] agendaId (required):
  Future<List<TimeTableDto>?> rawGetTimeTablesByAgendaId(String agendaId,) async {
    final response = await rawGetTimeTablesByAgendaIdWithHttpInfo(agendaId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TimeTableDto>') as List)
        .cast<TimeTableDto>()
        .toList();

    }
    return null;
  }

  /// Get TimeTables by Period and AgendaId
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startDate (required):
  ///
  /// * [int] endDate (required):
  ///
  /// * [String] agendaId (required):
  Future<Response> rawGetTimeTablesByPeriodAndAgendaIdWithHttpInfo(int startDate, int endDate, String agendaId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/timeTable/byPeriodAndAgendaId';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'startDate', startDate));
    queryParams.addAll(_queryParams('', 'endDate', endDate));
    queryParams.addAll(_queryParams('', 'agendaId', agendaId));

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


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

  /// Get TimeTables by Period and AgendaId
  ///
  /// Parameters:
  ///
  /// * [int] startDate (required):
  ///
  /// * [int] endDate (required):
  ///
  /// * [String] agendaId (required):
  Future<List<TimeTableDto>?> rawGetTimeTablesByPeriodAndAgendaId(int startDate, int endDate, String agendaId,) async {
    final response = await rawGetTimeTablesByPeriodAndAgendaIdWithHttpInfo(startDate, endDate, agendaId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TimeTableDto>') as List)
        .cast<TimeTableDto>()
        .toList();

    }
    return null;
  }

  /// Modifies an timeTable
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TimeTableDto] timeTableDto (required):
  Future<Response> rawModifyTimeTableWithHttpInfo(TimeTableDto timeTableDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/timeTable';

    // ignore: prefer_final_locals
    Object? postBody = timeTableDto;

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

  /// Modifies an timeTable
  ///
  /// Parameters:
  ///
  /// * [TimeTableDto] timeTableDto (required):
  Future<TimeTableDto?> rawModifyTimeTable(TimeTableDto timeTableDto,) async {
    final response = await rawModifyTimeTableWithHttpInfo(timeTableDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TimeTableDto',) as TimeTableDto;

    }
    return null;
  }
}
