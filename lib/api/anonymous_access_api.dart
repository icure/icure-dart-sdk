//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AnonymousAccessApi {
  AnonymousAccessApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Availabilities for HCP and appointmentType
  ///
  /// The start of the slot is returned in YYYYDDMMHHmmss format and only slots belonging to public time tables are returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [String] userId (required):
  ///
  /// * [String] getCalendarItemTypeId (required):
  ///
  /// * [int] startDate (required):
  ///
  /// * [int] endDate (required):
  ///
  /// * [String] hcpId (required):
  ///
  /// * [int] limit:
  Future<Response> getAvailabilitiesByPeriodAndCalendarItemTypeIdWithHttpInfo(String groupId, String userId, String getCalendarItemTypeId, int startDate, int endDate, String hcpId, { int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/aa/available/inGroup/{groupId}/forUser/{userId}/type/{getCalendarItemTypeId}'
      .replaceAll('{groupId}', groupId)
      .replaceAll('{userId}', userId)
      .replaceAll('{getCalendarItemTypeId}', getCalendarItemTypeId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'startDate', startDate));
      queryParams.addAll(_queryParams('', 'endDate', endDate));
      queryParams.addAll(_queryParams('', 'hcpId', hcpId));
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Get Availabilities for HCP and appointmentType
  ///
  /// The start of the slot is returned in YYYYDDMMHHmmss format and only slots belonging to public time tables are returned.
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [String] userId (required):
  ///
  /// * [String] getCalendarItemTypeId (required):
  ///
  /// * [int] startDate (required):
  ///
  /// * [int] endDate (required):
  ///
  /// * [String] hcpId (required):
  ///
  /// * [int] limit:
  Future<List<int>?> getAvailabilitiesByPeriodAndCalendarItemTypeId(String groupId, String userId, String getCalendarItemTypeId, int startDate, int endDate, String hcpId, { int? limit, }) async {
    final response = await getAvailabilitiesByPeriodAndCalendarItemTypeIdWithHttpInfo(groupId, userId, getCalendarItemTypeId, startDate, endDate, hcpId,  limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<int>') as List)
        .cast<int>()
        .toList();

    }
    return null;
  }

  /// List Calendar Item types for a provided group id and user id
  ///
  /// Returns a list of Calendar Item types. In order to be returned, the Calendar Item Type must be linked to a time table enclosed in an Agenda for which an anonymous right has been set (a Right with read permission and null user)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Healthcare parties group id
  ///
  /// * [String] userId (required):
  ///   Healthcare party user id
  ///
  /// * [int] startDate (required):
  ///
  /// * [int] endDate (required):
  Future<Response> listAppointmentTypesForUserWithHttpInfo(String groupId, String userId, int startDate, int endDate,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/aa/appointmentType/inGroup/{groupId}/forUser/{userId}'
      .replaceAll('{groupId}', groupId)
      .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'startDate', startDate));
      queryParams.addAll(_queryParams('', 'endDate', endDate));

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

  /// List Calendar Item types for a provided group id and user id
  ///
  /// Returns a list of Calendar Item types. In order to be returned, the Calendar Item Type must be linked to a time table enclosed in an Agenda for which an anonymous right has been set (a Right with read permission and null user)
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Healthcare parties group id
  ///
  /// * [String] userId (required):
  ///   Healthcare party user id
  ///
  /// * [int] startDate (required):
  ///
  /// * [int] endDate (required):
  Future<List<CalendarItemTypeDto>?> listAppointmentTypesForUser(String groupId, String userId, int startDate, int endDate,) async {
    final response = await listAppointmentTypesForUserWithHttpInfo(groupId, userId, startDate, endDate,);
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

  /// List healthcare parties for a provided group id
  ///
  /// Returns a list of Users/healthcare parties contained in the group owning the providing id. In order to be returned, a healthcare party needs to be linked to a user an this user must have a property 'org.taktik.icure.public' set to a boolean true.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Healthcare parties group id
  Future<Response> listHealthcarePartiesInGroupWithHttpInfo(String groupId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/aa/hcparty/inGroup/{groupId}'
      .replaceAll('{groupId}', groupId);

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

  /// List healthcare parties for a provided group id
  ///
  /// Returns a list of Users/healthcare parties contained in the group owning the providing id. In order to be returned, a healthcare party needs to be linked to a user an this user must have a property 'org.taktik.icure.public' set to a boolean true.
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Healthcare parties group id
  Future<List<UserDto>?> listHealthcarePartiesInGroup(String groupId,) async {
    final response = await listHealthcarePartiesInGroupWithHttpInfo(groupId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserDto>') as List)
        .cast<UserDto>()
        .toList();

    }
    return null;
  }
}
