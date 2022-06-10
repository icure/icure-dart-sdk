//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class CalendarItemApi {
  CalendarItemApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a calendarItem
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CalendarItemDto] calendarItemDto (required):
  Future<Response> createCalendarItemWithHttpInfo(CalendarItemDto calendarItemDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/calendarItem';

    // ignore: prefer_final_locals
    Object? postBody = calendarItemDto;

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

  /// Creates a calendarItem
  ///
  /// Parameters:
  ///
  /// * [CalendarItemDto] calendarItemDto (required):
  Future<CalendarItemDto?> createCalendarItem(CalendarItemDto calendarItemDto,) async {
    final response = await createCalendarItemWithHttpInfo(calendarItemDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CalendarItemDto',) as CalendarItemDto;
    
    }
    return null;
  }

  /// Deletes an calendarItem
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] calendarItemIds (required):
  Future<Response> deleteCalendarItemWithHttpInfo(String calendarItemIds,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/calendarItem/{calendarItemIds}'.replaceAll('{calendarItemIds}', calendarItemIds);

    // ignore: prefer_final_locals
    Object? postBody;

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
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Deletes an calendarItem
  ///
  /// Parameters:
  ///
  /// * [String] calendarItemIds (required):
  Future<List<DocIdentifier>?> deleteCalendarItem(String calendarItemIds,) async {
    final response = await deleteCalendarItemWithHttpInfo(calendarItemIds,);
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

  /// Deletes calendarItems
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> deleteCalendarItemsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/calendarItem/delete/batch';

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

  /// Deletes calendarItems
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>?> deleteCalendarItems(ListOfIdsDto listOfIdsDto,) async {
    final response = await deleteCalendarItemsWithHttpInfo(listOfIdsDto,);
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

  /// Find CalendarItems by hcparty and patient
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<Response> findCalendarItemsByHCPartyPatientForeignKeysWithHttpInfo(String hcPartyId, String secretFKeys,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/calendarItem/byHcPartySecretForeignKeys';

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

  /// Find CalendarItems by hcparty and patient
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<List<CalendarItemDto>?> findCalendarItemsByHCPartyPatientForeignKeys(String hcPartyId, String secretFKeys,) async {
    final response = await findCalendarItemsByHCPartyPatientForeignKeysWithHttpInfo(hcPartyId, secretFKeys,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CalendarItemDto>') as List)
        .cast<CalendarItemDto>()
        .toList();

    }
    return null;
  }

  /// Find CalendarItems by recurrenceId
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] recurrenceId (required):
  Future<Response> findCalendarItemsByRecurrenceIdWithHttpInfo(String recurrenceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/calendarItem/byRecurrenceId';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'recurrenceId', recurrenceId));

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

  /// Find CalendarItems by recurrenceId
  ///
  /// Parameters:
  ///
  /// * [String] recurrenceId (required):
  Future<List<CalendarItemDto>?> findCalendarItemsByRecurrenceId(String recurrenceId,) async {
    final response = await findCalendarItemsByRecurrenceIdWithHttpInfo(recurrenceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CalendarItemDto>') as List)
        .cast<CalendarItemDto>()
        .toList();

    }
    return null;
  }

  /// Gets an calendarItem
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] calendarItemId (required):
  Future<Response> getCalendarItemWithHttpInfo(String calendarItemId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/calendarItem/{calendarItemId}'.replaceAll('{calendarItemId}', calendarItemId);

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

  /// Gets an calendarItem
  ///
  /// Parameters:
  ///
  /// * [String] calendarItemId (required):
  Future<CalendarItemDto?> getCalendarItem(String calendarItemId,) async {
    final response = await getCalendarItemWithHttpInfo(calendarItemId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CalendarItemDto',) as CalendarItemDto;
    
    }
    return null;
  }

  /// Gets all calendarItems
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCalendarItemsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/calendarItem';

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

  /// Gets all calendarItems
  Future<List<CalendarItemDto>?> getCalendarItems() async {
    final response = await getCalendarItemsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CalendarItemDto>') as List)
        .cast<CalendarItemDto>()
        .toList();

    }
    return null;
  }

  /// Get CalendarItems by Period and HcPartyId
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startDate (required):
  ///
  /// * [int] endDate (required):
  ///
  /// * [String] hcPartyId (required):
  Future<Response> getCalendarItemsByPeriodAndHcPartyIdWithHttpInfo(int startDate, int endDate, String hcPartyId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/calendarItem/byPeriodAndHcPartyId';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'startDate', startDate));
    queryParams.addAll(_queryParams('', 'endDate', endDate));
    queryParams.addAll(_queryParams('', 'hcPartyId', hcPartyId));

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

  /// Get CalendarItems by Period and HcPartyId
  ///
  /// Parameters:
  ///
  /// * [int] startDate (required):
  ///
  /// * [int] endDate (required):
  ///
  /// * [String] hcPartyId (required):
  Future<List<CalendarItemDto>?> getCalendarItemsByPeriodAndHcPartyId(int startDate, int endDate, String hcPartyId,) async {
    final response = await getCalendarItemsByPeriodAndHcPartyIdWithHttpInfo(startDate, endDate, hcPartyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CalendarItemDto>') as List)
        .cast<CalendarItemDto>()
        .toList();

    }
    return null;
  }

  /// Get calendarItems by ids
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto:
  Future<Response> getCalendarItemsWithIdsWithHttpInfo({ ListOfIdsDto? listOfIdsDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/calendarItem/byIds';

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

  /// Get calendarItems by ids
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto:
  Future<List<CalendarItemDto>?> getCalendarItemsWithIds({ ListOfIdsDto? listOfIdsDto, }) async {
    final response = await getCalendarItemsWithIdsWithHttpInfo( listOfIdsDto: listOfIdsDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CalendarItemDto>') as List)
        .cast<CalendarItemDto>()
        .toList();

    }
    return null;
  }

  /// Get CalendarItems by Period and AgendaId
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
  Future<Response> getCalendarsByPeriodAndAgendaIdWithHttpInfo(int startDate, int endDate, String agendaId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/calendarItem/byPeriodAndAgendaId';

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

  /// Get CalendarItems by Period and AgendaId
  ///
  /// Parameters:
  ///
  /// * [int] startDate (required):
  ///
  /// * [int] endDate (required):
  ///
  /// * [String] agendaId (required):
  Future<List<CalendarItemDto>?> getCalendarsByPeriodAndAgendaId(int startDate, int endDate, String agendaId,) async {
    final response = await getCalendarsByPeriodAndAgendaIdWithHttpInfo(startDate, endDate, agendaId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CalendarItemDto>') as List)
        .cast<CalendarItemDto>()
        .toList();

    }
    return null;
  }

  /// Modifies an calendarItem
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CalendarItemDto] calendarItemDto (required):
  Future<Response> modifyCalendarItemWithHttpInfo(CalendarItemDto calendarItemDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/calendarItem';

    // ignore: prefer_final_locals
    Object? postBody = calendarItemDto;

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

  /// Modifies an calendarItem
  ///
  /// Parameters:
  ///
  /// * [CalendarItemDto] calendarItemDto (required):
  Future<CalendarItemDto?> modifyCalendarItem(CalendarItemDto calendarItemDto,) async {
    final response = await modifyCalendarItemWithHttpInfo(calendarItemDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CalendarItemDto',) as CalendarItemDto;
    
    }
    return null;
  }

  /// Update delegations in calendarItems
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<IcureStubDto>] icureStubDto (required):
  Future<Response> setCalendarItemsDelegationsWithHttpInfo(List<IcureStubDto> icureStubDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/calendarItem/delegations';

    // ignore: prefer_final_locals
    Object? postBody = icureStubDto;

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

  /// Update delegations in calendarItems
  ///
  /// Parameters:
  ///
  /// * [List<IcureStubDto>] icureStubDto (required):
  Future<List<CalendarItemDto>?> setCalendarItemsDelegations(List<IcureStubDto> icureStubDto,) async {
    final response = await setCalendarItemsDelegationsWithHttpInfo(icureStubDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CalendarItemDto>') as List)
        .cast<CalendarItemDto>()
        .toList();

    }
    return null;
  }
}
