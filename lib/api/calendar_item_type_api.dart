//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CalendarItemTypeApi {
  CalendarItemTypeApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a calendarItemType
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CalendarItemTypeDto] calendarItemTypeDto (required):
  Future<Response> createCalendarItemTypeWithHttpInfo(CalendarItemTypeDto calendarItemTypeDto,) async {
    // Verify required params are set.
    if (calendarItemTypeDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: calendarItemTypeDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItemType';

    // ignore: prefer_final_locals
    Object postBody = calendarItemTypeDto;

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

  /// Creates a calendarItemType
  ///
  /// Parameters:
  ///
  /// * [CalendarItemTypeDto] calendarItemTypeDto (required):
  Future<CalendarItemTypeDto> createCalendarItemType(CalendarItemTypeDto calendarItemTypeDto,) async {
    final response = await createCalendarItemTypeWithHttpInfo(calendarItemTypeDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CalendarItemTypeDto',) as CalendarItemTypeDto;
    
    }
    return Future<CalendarItemTypeDto>.value();
  }

  /// Deletes calendarItemTypes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> deleteCalendarItemTypesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // Verify required params are set.
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItemType/delete/batch';

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

  /// Deletes calendarItemTypes
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>> deleteCalendarItemTypes(ListOfIdsDto listOfIdsDto,) async {
    final response = await deleteCalendarItemTypesWithHttpInfo(listOfIdsDto,);
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

  /// Gets a calendarItemType
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] calendarItemTypeId (required):
  Future<Response> getCalendarItemTypeWithHttpInfo(String calendarItemTypeId,) async {
    // Verify required params are set.
    if (calendarItemTypeId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: calendarItemTypeId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItemType/{calendarItemTypeId}'
      .replaceAll('{calendarItemTypeId}', calendarItemTypeId);

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

  /// Gets a calendarItemType
  ///
  /// Parameters:
  ///
  /// * [String] calendarItemTypeId (required):
  Future<CalendarItemTypeDto> getCalendarItemType(String calendarItemTypeId,) async {
    final response = await getCalendarItemTypeWithHttpInfo(calendarItemTypeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CalendarItemTypeDto',) as CalendarItemTypeDto;
    
    }
    return Future<CalendarItemTypeDto>.value();
  }

  /// Gets all calendarItemTypes
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCalendarItemTypesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItemType';

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

  /// Gets all calendarItemTypes
  Future<List<CalendarItemTypeDto>> getCalendarItemTypes() async {
    final response = await getCalendarItemTypesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CalendarItemTypeDto>') as List)
        .cast<CalendarItemTypeDto>()
        .toList(growable: false);

    }
    return Future<List<CalendarItemTypeDto>>.value();
  }

  /// Gets all calendarItemTypes include deleted
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCalendarItemTypesIncludeDeletedWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItemType/includeDeleted';

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

  /// Gets all calendarItemTypes include deleted
  Future<List<CalendarItemTypeDto>> getCalendarItemTypesIncludeDeleted() async {
    final response = await getCalendarItemTypesIncludeDeletedWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CalendarItemTypeDto>') as List)
        .cast<CalendarItemTypeDto>()
        .toList(growable: false);

    }
    return Future<List<CalendarItemTypeDto>>.value();
  }

  /// Modifies an calendarItemType
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CalendarItemTypeDto] calendarItemTypeDto (required):
  Future<Response> modifyCalendarItemTypeWithHttpInfo(CalendarItemTypeDto calendarItemTypeDto,) async {
    // Verify required params are set.
    if (calendarItemTypeDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: calendarItemTypeDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItemType';

    // ignore: prefer_final_locals
    Object postBody = calendarItemTypeDto;

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

  /// Modifies an calendarItemType
  ///
  /// Parameters:
  ///
  /// * [CalendarItemTypeDto] calendarItemTypeDto (required):
  Future<CalendarItemTypeDto> modifyCalendarItemType(CalendarItemTypeDto calendarItemTypeDto,) async {
    final response = await modifyCalendarItemTypeWithHttpInfo(calendarItemTypeDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CalendarItemTypeDto',) as CalendarItemTypeDto;
    
    }
    return Future<CalendarItemTypeDto>.value();
  }
}
