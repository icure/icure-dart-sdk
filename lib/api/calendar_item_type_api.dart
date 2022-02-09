//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CalendarItemTypeApi {
  CalendarItemTypeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a calendarItemType
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CalendarItemTypeDto] calendarItemTypeDto (required):
  Future<Response> createCalendarItemTypeWithHttpInfo(CalendarItemTypeDto calendarItemTypeDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItemType';

    // ignore: prefer_final_locals
    Object? postBody = calendarItemTypeDto;

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

  /// Creates a calendarItemType
  ///
  /// Parameters:
  ///
  /// * [CalendarItemTypeDto] calendarItemTypeDto (required):
  Future<CalendarItemTypeDto?> createCalendarItemType(CalendarItemTypeDto calendarItemTypeDto,) async {
    final response = await createCalendarItemTypeWithHttpInfo(calendarItemTypeDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CalendarItemTypeDto',) as CalendarItemTypeDto;
    
    }
    return null;
  }

  /// Deletes calendarItemTypes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> deleteCalendarItemTypesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItemType/delete/batch';

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

  /// Deletes calendarItemTypes
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>?> deleteCalendarItemTypes(ListOfIdsDto listOfIdsDto,) async {
    final response = await deleteCalendarItemTypesWithHttpInfo(listOfIdsDto,);
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

  /// Gets a calendarItemType
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] calendarItemTypeId (required):
  Future<Response> getCalendarItemTypeWithHttpInfo(String calendarItemTypeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItemType/{calendarItemTypeId}'
      .replaceAll('{calendarItemTypeId}', calendarItemTypeId);

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

  /// Gets a calendarItemType
  ///
  /// Parameters:
  ///
  /// * [String] calendarItemTypeId (required):
  Future<CalendarItemTypeDto?> getCalendarItemType(String calendarItemTypeId,) async {
    final response = await getCalendarItemTypeWithHttpInfo(calendarItemTypeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CalendarItemTypeDto',) as CalendarItemTypeDto;
    
    }
    return null;
  }

  /// Gets all calendarItemTypes
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCalendarItemTypesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItemType';

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

  /// Gets all calendarItemTypes
  Future<List<CalendarItemTypeDto>?> getCalendarItemTypes() async {
    final response = await getCalendarItemTypesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CalendarItemTypeDto>') as List)
        .cast<CalendarItemTypeDto>()
        .toList();

    }
    return null;
  }

  /// Gets all calendarItemTypes include deleted
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCalendarItemTypesIncludeDeletedWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItemType/includeDeleted';

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

  /// Gets all calendarItemTypes include deleted
  Future<List<CalendarItemTypeDto>?> getCalendarItemTypesIncludeDeleted() async {
    final response = await getCalendarItemTypesIncludeDeletedWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CalendarItemTypeDto>') as List)
        .cast<CalendarItemTypeDto>()
        .toList();

    }
    return null;
  }

  /// Modifies an calendarItemType
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CalendarItemTypeDto] calendarItemTypeDto (required):
  Future<Response> modifyCalendarItemTypeWithHttpInfo(CalendarItemTypeDto calendarItemTypeDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItemType';

    // ignore: prefer_final_locals
    Object? postBody = calendarItemTypeDto;

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

  /// Modifies an calendarItemType
  ///
  /// Parameters:
  ///
  /// * [CalendarItemTypeDto] calendarItemTypeDto (required):
  Future<CalendarItemTypeDto?> modifyCalendarItemType(CalendarItemTypeDto calendarItemTypeDto,) async {
    final response = await modifyCalendarItemTypeWithHttpInfo(calendarItemTypeDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CalendarItemTypeDto',) as CalendarItemTypeDto;
    
    }
    return null;
  }
}
