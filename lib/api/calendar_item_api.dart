//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CalendarItemApi {
  CalendarItemApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a calendarItem
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CalendarItemDto] calendarItemDto (required):
  Future<Response> createCalendarItemWithHttpInfo(CalendarItemDto calendarItemDto,) async {
    // Verify required params are set.
    if (calendarItemDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: calendarItemDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItem';

    // ignore: prefer_final_locals
    Object postBody = calendarItemDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
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

  /// Creates a calendarItem
  ///
  /// Parameters:
  ///
  /// * [CalendarItemDto] calendarItemDto (required):
  Future<CalendarItemDto> createCalendarItem(CalendarItemDto calendarItemDto,) async {
    final response = await createCalendarItemWithHttpInfo(calendarItemDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CalendarItemDto',) as CalendarItemDto;
    
    }
    return Future<CalendarItemDto>.value();
  }

  /// Deletes an calendarItem
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] calendarItemIds (required):
  Future<Response> deleteCalendarItemWithHttpInfo(String calendarItemIds,) async {
    // Verify required params are set.
    if (calendarItemIds == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: calendarItemIds');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItem/{calendarItemIds}'
      .replaceAll('{calendarItemIds}', calendarItemIds);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
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

  /// Deletes an calendarItem
  ///
  /// Parameters:
  ///
  /// * [String] calendarItemIds (required):
  Future<List<DocIdentifier>> deleteCalendarItem(String calendarItemIds,) async {
    final response = await deleteCalendarItemWithHttpInfo(calendarItemIds,);
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

  /// Deletes calendarItems
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> deleteCalendarItemsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // Verify required params are set.
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItem/delete/batch';

    // ignore: prefer_final_locals
    Object postBody = listOfIdsDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
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

  /// Deletes calendarItems
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>> deleteCalendarItems(ListOfIdsDto listOfIdsDto,) async {
    final response = await deleteCalendarItemsWithHttpInfo(listOfIdsDto,);
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
    // Verify required params are set.
    if (hcPartyId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: hcPartyId');
    }
    if (secretFKeys == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: secretFKeys');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItem/byHcPartySecretForeignKeys';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'hcPartyId', hcPartyId));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'secretFKeys', secretFKeys));

    const authNames = <String>[];
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

  /// Find CalendarItems by hcparty and patient
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<List<CalendarItemDto>> findCalendarItemsByHCPartyPatientForeignKeys(String hcPartyId, String secretFKeys,) async {
    final response = await findCalendarItemsByHCPartyPatientForeignKeysWithHttpInfo(hcPartyId, secretFKeys,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CalendarItemDto>') as List)
        .cast<CalendarItemDto>()
        .toList(growable: false);

    }
    return Future<List<CalendarItemDto>>.value();
  }

  /// Find CalendarItems by recurrenceId
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] recurrenceId (required):
  Future<Response> findCalendarItemsByRecurrenceIdWithHttpInfo(String recurrenceId,) async {
    // Verify required params are set.
    if (recurrenceId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: recurrenceId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItem/byRecurrenceId';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'recurrenceId', recurrenceId));

    const authNames = <String>[];
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

  /// Find CalendarItems by recurrenceId
  ///
  /// Parameters:
  ///
  /// * [String] recurrenceId (required):
  Future<List<CalendarItemDto>> findCalendarItemsByRecurrenceId(String recurrenceId,) async {
    final response = await findCalendarItemsByRecurrenceIdWithHttpInfo(recurrenceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CalendarItemDto>') as List)
        .cast<CalendarItemDto>()
        .toList(growable: false);

    }
    return Future<List<CalendarItemDto>>.value();
  }

  /// Gets an calendarItem
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] calendarItemId (required):
  Future<Response> getCalendarItemWithHttpInfo(String calendarItemId,) async {
    // Verify required params are set.
    if (calendarItemId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: calendarItemId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItem/{calendarItemId}'
      .replaceAll('{calendarItemId}', calendarItemId);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
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

  /// Gets an calendarItem
  ///
  /// Parameters:
  ///
  /// * [String] calendarItemId (required):
  Future<CalendarItemDto> getCalendarItem(String calendarItemId,) async {
    final response = await getCalendarItemWithHttpInfo(calendarItemId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CalendarItemDto',) as CalendarItemDto;
    
    }
    return Future<CalendarItemDto>.value();
  }

  /// Gets all calendarItems
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCalendarItemsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItem';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
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

  /// Gets all calendarItems
  Future<List<CalendarItemDto>> getCalendarItems() async {
    final response = await getCalendarItemsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CalendarItemDto>') as List)
        .cast<CalendarItemDto>()
        .toList(growable: false);

    }
    return Future<List<CalendarItemDto>>.value();
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
    // Verify required params are set.
    if (startDate == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: startDate');
    }
    if (endDate == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: endDate');
    }
    if (hcPartyId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: hcPartyId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItem/byPeriodAndHcPartyId';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'startDate', startDate));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'endDate', endDate));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'hcPartyId', hcPartyId));

    const authNames = <String>[];
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

  /// Get CalendarItems by Period and HcPartyId
  ///
  /// Parameters:
  ///
  /// * [int] startDate (required):
  ///
  /// * [int] endDate (required):
  ///
  /// * [String] hcPartyId (required):
  Future<List<CalendarItemDto>> getCalendarItemsByPeriodAndHcPartyId(int startDate, int endDate, String hcPartyId,) async {
    final response = await getCalendarItemsByPeriodAndHcPartyIdWithHttpInfo(startDate, endDate, hcPartyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CalendarItemDto>') as List)
        .cast<CalendarItemDto>()
        .toList(growable: false);

    }
    return Future<List<CalendarItemDto>>.value();
  }

  /// Get calendarItems by ids
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto:
  Future<Response> getCalendarItemsWithIdsWithHttpInfo({ ListOfIdsDto listOfIdsDto, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItem/byIds';

    // ignore: prefer_final_locals
    Object postBody = listOfIdsDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
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

  /// Get calendarItems by ids
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto:
  Future<List<CalendarItemDto>> getCalendarItemsWithIds({ ListOfIdsDto listOfIdsDto, }) async {
    final response = await getCalendarItemsWithIdsWithHttpInfo( listOfIdsDto: listOfIdsDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CalendarItemDto>') as List)
        .cast<CalendarItemDto>()
        .toList(growable: false);

    }
    return Future<List<CalendarItemDto>>.value();
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
    // Verify required params are set.
    if (startDate == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: startDate');
    }
    if (endDate == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: endDate');
    }
    if (agendaId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: agendaId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItem/byPeriodAndAgendaId';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'startDate', startDate));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'endDate', endDate));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'agendaId', agendaId));

    const authNames = <String>[];
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

  /// Get CalendarItems by Period and AgendaId
  ///
  /// Parameters:
  ///
  /// * [int] startDate (required):
  ///
  /// * [int] endDate (required):
  ///
  /// * [String] agendaId (required):
  Future<List<CalendarItemDto>> getCalendarsByPeriodAndAgendaId(int startDate, int endDate, String agendaId,) async {
    final response = await getCalendarsByPeriodAndAgendaIdWithHttpInfo(startDate, endDate, agendaId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CalendarItemDto>') as List)
        .cast<CalendarItemDto>()
        .toList(growable: false);

    }
    return Future<List<CalendarItemDto>>.value();
  }

  /// Modifies an calendarItem
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CalendarItemDto] calendarItemDto (required):
  Future<Response> modifyCalendarItemWithHttpInfo(CalendarItemDto calendarItemDto,) async {
    // Verify required params are set.
    if (calendarItemDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: calendarItemDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItem';

    // ignore: prefer_final_locals
    Object postBody = calendarItemDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
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

  /// Modifies an calendarItem
  ///
  /// Parameters:
  ///
  /// * [CalendarItemDto] calendarItemDto (required):
  Future<CalendarItemDto> modifyCalendarItem(CalendarItemDto calendarItemDto,) async {
    final response = await modifyCalendarItemWithHttpInfo(calendarItemDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CalendarItemDto',) as CalendarItemDto;
    
    }
    return Future<CalendarItemDto>.value();
  }

  /// Update delegations in calendarItems
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<IcureStubDto>] icureStubDto (required):
  Future<Response> setCalendarItemsDelegationsWithHttpInfo(List<IcureStubDto> icureStubDto,) async {
    // Verify required params are set.
    if (icureStubDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: icureStubDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/calendarItem/delegations';

    // ignore: prefer_final_locals
    Object postBody = icureStubDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
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

  /// Update delegations in calendarItems
  ///
  /// Parameters:
  ///
  /// * [List<IcureStubDto>] icureStubDto (required):
  Future<List<CalendarItemDto>> setCalendarItemsDelegations(List<IcureStubDto> icureStubDto,) async {
    final response = await setCalendarItemsDelegationsWithHttpInfo(icureStubDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CalendarItemDto>') as List)
        .cast<CalendarItemDto>()
        .toList(growable: false);

    }
    return Future<List<CalendarItemDto>>.value();
  }
}
