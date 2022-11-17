//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class MaintenanceTaskApi {
  MaintenanceTaskApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a maintenanceTask
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MaintenanceTaskDto] maintenanceTaskDto (required):
  Future<Response> createMaintenanceTaskWithHttpInfo(MaintenanceTaskDto maintenanceTaskDto) async {

    final path = r'/rest/v1/maintenancetask';

    Object postBody = maintenanceTaskDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[r'basicSchema'];


    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Creates a maintenanceTask
  ///
  /// Parameters:
  ///
  /// * [MaintenanceTaskDto] maintenanceTaskDto (required):
  Future<MaintenanceTaskDto?> createMaintenanceTask(MaintenanceTaskDto maintenanceTaskDto) async {
    final response = await createMaintenanceTaskWithHttpInfo(maintenanceTaskDto);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MaintenanceTaskDto',) as MaintenanceTaskDto;
        }
    return null;
  }

  /// Delete maintenanceTasks
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] maintenanceTaskIds (required):
  Future<Response> deleteMaintenanceTaskWithHttpInfo(String maintenanceTaskIds) async {

    final path = r'/rest/v1/maintenancetask/{maintenanceTaskIds}'
      .replaceAll('{' + 'maintenanceTaskIds' + '}', maintenanceTaskIds.toString());

    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[r'basicSchema'];


    return await apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Delete maintenanceTasks
  ///
  /// Parameters:
  ///
  /// * [String] maintenanceTaskIds (required):
  Future<List<DocIdentifier>?> deleteMaintenanceTask(String maintenanceTaskIds) async {
    final response = await deleteMaintenanceTaskWithHttpInfo(maintenanceTaskIds);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return (await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'List<DocIdentifier>') as List)
        .cast<DocIdentifier>()
        .toList(growable: false);
    }
    return null;
  }

  /// Filter maintenanceTasks for the current user (HcParty)
  ///
  /// Returns a list of maintenanceTasks along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FilterChainMaintenanceTask] filterChainMaintenanceTask (required):
  ///
  /// * [String] startDocumentId:
  ///   A maintenanceTask document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> filterMaintenanceTasksByWithHttpInfo(FilterChain<MaintenanceTaskDto> filterChainMaintenanceTask, { String? startDocumentId, int? limit }) async {

    final path = r'/rest/v1/maintenancetask/filter';

    Object postBody = filterChainMaintenanceTask;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[r'basicSchema'];


    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Filter maintenanceTasks for the current user (HcParty)
  ///
  /// Returns a list of maintenanceTasks along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Parameters:
  ///
  /// * [FilterChainMaintenanceTask] filterChainMaintenanceTask (required):
  ///
  /// * [String] startDocumentId:
  ///   A maintenanceTask document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListMaintenanceTaskDto?> filterMaintenanceTasksBy(FilterChain<MaintenanceTaskDto> filterChainMaintenanceTask, { String? startDocumentId, int? limit }) async {
    final response = await filterMaintenanceTasksByWithHttpInfo(filterChainMaintenanceTask,  startDocumentId: startDocumentId, limit: limit );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListMaintenanceTaskDto',) as PaginatedListMaintenanceTaskDto;
        }
    return null;
  }

  /// Gets a maintenanceTask
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] maintenanceTaskId (required):
  Future<Response> getMaintenanceTaskWithHttpInfo(String maintenanceTaskId) async {

    final path = r'/rest/v1/maintenancetask/{maintenanceTaskId}'
      .replaceAll('{' + 'maintenanceTaskId' + '}', maintenanceTaskId.toString());

    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[r'basicSchema'];


    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Gets a maintenanceTask
  ///
  /// Parameters:
  ///
  /// * [String] maintenanceTaskId (required):
  Future<MaintenanceTaskDto?> getMaintenanceTask(String maintenanceTaskId) async {
    final response = await getMaintenanceTaskWithHttpInfo(maintenanceTaskId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MaintenanceTaskDto',) as MaintenanceTaskDto;
        }
    return null;
  }

  /// Updates a maintenanceTask
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MaintenanceTaskDto] maintenanceTaskDto (required):
  Future<Response> modifyMaintenanceTaskWithHttpInfo(MaintenanceTaskDto maintenanceTaskDto) async {

    final path = r'/rest/v1/maintenancetask';

    Object postBody = maintenanceTaskDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[r'basicSchema'];


    return await apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Updates a maintenanceTask
  ///
  /// Parameters:
  ///
  /// * [MaintenanceTaskDto] maintenanceTaskDto (required):
  Future<MaintenanceTaskDto?> modifyMaintenanceTask(MaintenanceTaskDto maintenanceTaskDto) async {
    final response = await modifyMaintenanceTaskWithHttpInfo(maintenanceTaskDto);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MaintenanceTaskDto',) as MaintenanceTaskDto;
        }
    return null;
  }
}
