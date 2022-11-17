//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class DeviceApi {
  DeviceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a device
  ///
  /// Name, last name, date of birth, and gender are required. After creation of the device and obtaining the ID, you need to create an initial delegation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DeviceDto] deviceDto (required):
  Future<Response> createDeviceWithHttpInfo(DeviceDto deviceDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/device';

    // ignore: prefer_final_locals
    Object? postBody = deviceDto;

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

  /// Create a device
  ///
  /// Name, last name, date of birth, and gender are required. After creation of the device and obtaining the ID, you need to create an initial delegation.
  ///
  /// Parameters:
  ///
  /// * [DeviceDto] deviceDto (required):
  Future<DeviceDto?> createDevice(DeviceDto deviceDto,) async {
    final response = await createDeviceWithHttpInfo(deviceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeviceDto',) as DeviceDto;

    }
    return null;
  }

  /// Create devices in bulk
  ///
  /// Returns the id and _rev of created devices
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<DeviceDto>] deviceDto (required):
  Future<Response> createDevicesWithHttpInfo(List<DeviceDto> deviceDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/device/batch';

    // ignore: prefer_final_locals
    Object? postBody = deviceDto;

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

  /// Create devices in bulk
  ///
  /// Returns the id and _rev of created devices
  ///
  /// Parameters:
  ///
  /// * [List<DeviceDto>] deviceDto (required):
  Future<List<IdWithRevDto>?> createDevices(List<DeviceDto> deviceDto,) async {
    final response = await createDevicesWithHttpInfo(deviceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IdWithRevDto>') as List)
        .cast<IdWithRevDto>()
        .toList();

    }
    return null;
  }

  /// Create devices in bulk
  ///
  /// Returns the id and _rev of created devices
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<DeviceDto>] deviceDto (required):
  Future<Response> createDevices1WithHttpInfo(List<DeviceDto> deviceDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/device/bulk';

    // ignore: prefer_final_locals
    Object? postBody = deviceDto;

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

  /// Create devices in bulk
  ///
  /// Returns the id and _rev of created devices
  ///
  /// Parameters:
  ///
  /// * [List<DeviceDto>] deviceDto (required):
  Future<List<IdWithRevDto>?> createDevices1(List<DeviceDto> deviceDto,) async {
    final response = await createDevices1WithHttpInfo(deviceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IdWithRevDto>') as List)
        .cast<IdWithRevDto>()
        .toList();

    }
    return null;
  }

  /// Delete device.
  ///
  /// Response contains the id/rev of deleted device.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId (required):
  Future<Response> deleteDeviceWithHttpInfo(String deviceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/device/{deviceId}'.replaceAll('{deviceId}', deviceId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Delete device.
  ///
  /// Response contains the id/rev of deleted device.
  ///
  /// Parameters:
  ///
  /// * [String] deviceId (required):
  Future<DocIdentifier?> deleteDevice(String deviceId,) async {
    final response = await deleteDeviceWithHttpInfo(deviceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocIdentifier',) as DocIdentifier;

    }
    return null;
  }

  /// Delete devices.
  ///
  /// Response is an array containing the id/rev of deleted devices.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> deleteDevicesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/device/delete/batch';

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

  /// Delete devices.
  ///
  /// Response is an array containing the id/rev of deleted devices.
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>?> deleteDevices(ListOfIdsDto listOfIdsDto,) async {
    final response = await deleteDevicesWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
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

  /// Filter devices for the current user (HcParty)
  ///
  /// Returns a list of devices along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FilterChain<DeviceDto>] filterChainDevice (required):
  ///
  /// * [String] startDocumentId:
  ///   A device document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> filterDevicesByWithHttpInfo(FilterChain<DeviceDto> filterChainDevice, { String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/device/filter';

    // ignore: prefer_final_locals
    Object? postBody = filterChainDevice;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

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

  /// Filter devices for the current user (HcParty)
  ///
  /// Returns a list of devices along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Parameters:
  ///
  /// * [FilterChain<DeviceDto>] filterChainDevice (required):
  ///
  /// * [String] startDocumentId:
  ///   A device document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListDeviceDto?> filterDevicesBy(FilterChain<DeviceDto> filterChainDevice, { String? startDocumentId, int? limit, }) async {
    final response = await filterDevicesByWithHttpInfo(filterChainDevice,  startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListDeviceDto',) as PaginatedListDeviceDto;

    }
    return null;
  }

  /// Get Device
  ///
  /// It gets device administrative data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId (required):
  Future<Response> getDeviceWithHttpInfo(String deviceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/device/{deviceId}'.replaceAll('{deviceId}', deviceId);

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

  /// Get Device
  ///
  /// It gets device administrative data.
  ///
  /// Parameters:
  ///
  /// * [String] deviceId (required):
  Future<DeviceDto?> getDevice(String deviceId,) async {
    final response = await getDeviceWithHttpInfo(deviceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeviceDto',) as DeviceDto;

    }
    return null;
  }

  /// Get devices by id
  ///
  /// It gets device administrative data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> getDevicesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/device/byIds';

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

  /// Get devices by id
  ///
  /// It gets device administrative data.
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DeviceDto>?> getDevices(ListOfIdsDto listOfIdsDto,) async {
    final response = await getDevicesWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DeviceDto>') as List)
        .cast<DeviceDto>()
        .toList();

    }
    return null;
  }

  /// Get the HcParty encrypted AES keys indexed by owner
  ///
  /// (key, value) of the map is as follows: (ID of the owner of the encrypted AES key, encrypted AES key)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId (required):
  Future<Response> getDeviceHcPartyKeysForDelegateWithHttpInfo(String deviceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/device/{deviceId}/keys'
        .replaceAll('{deviceId}', deviceId);

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

  /// Get the HcParty encrypted AES keys indexed by owner
  ///
  /// (key, value) of the map is as follows: (ID of the owner of the encrypted AES key, encrypted AES key)
  ///
  /// Parameters:
  ///
  /// * [String] deviceId (required):
  Future<Map<String, String>?> getDeviceHcPartyKeysForDelegate(String deviceId,) async {
    final response = await getDeviceHcPartyKeysForDelegateWithHttpInfo(deviceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, String>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, String>'),);
    }
    return null;
  }

  /// Get ids of devices matching the provided filter for the current user (HcParty)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AbstractFilterDto<DeviceDto>] abstractFilterDtoDevice (required):
  Future<Response> matchDevicesByWithHttpInfo(AbstractFilterDto<DeviceDto> abstractFilterDtoDevice,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/device/match';

    // ignore: prefer_final_locals
    Object? postBody = abstractFilterDtoDevice;

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

  /// Get ids of devices matching the provided filter for the current user (HcParty)
  ///
  /// Parameters:
  ///
  /// * [AbstractFilterDto<DeviceDto>] abstractFilterDtoDevice (required):
  Future<List<String>?> matchDevicesBy(AbstractFilterDto<DeviceDto> abstractFilterDtoDevice,) async {
    final response = await matchDevicesByWithHttpInfo(abstractFilterDtoDevice,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List)
        .cast<String>()
        .toList();

    }
    return null;
  }

  /// Modify a device
  ///
  /// Returns the updated device
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DeviceDto] deviceDto (required):
  Future<Response> updateDeviceWithHttpInfo(DeviceDto deviceDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/device';

    // ignore: prefer_final_locals
    Object? postBody = deviceDto;

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

  /// Modify a device
  ///
  /// Returns the updated device
  ///
  /// Parameters:
  ///
  /// * [DeviceDto] deviceDto (required):
  Future<DeviceDto?> updateDevice(DeviceDto deviceDto,) async {
    final response = await updateDeviceWithHttpInfo(deviceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeviceDto',) as DeviceDto;

    }
    return null;
  }

  /// Modify devices in bulk
  ///
  /// Returns the id and _rev of modified devices
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<DeviceDto>] deviceDto (required):
  Future<Response> updateDevicesWithHttpInfo(List<DeviceDto> deviceDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/device/batch';

    // ignore: prefer_final_locals
    Object? postBody = deviceDto;

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

  /// Modify devices in bulk
  ///
  /// Returns the id and _rev of modified devices
  ///
  /// Parameters:
  ///
  /// * [List<DeviceDto>] deviceDto (required):
  Future<List<IdWithRevDto>?> updateDevices(List<DeviceDto> deviceDto,) async {
    final response = await updateDevicesWithHttpInfo(deviceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IdWithRevDto>') as List)
        .cast<IdWithRevDto>()
        .toList();

    }
    return null;
  }

  /// Modify devices in bulk
  ///
  /// Returns the id and _rev of modified devices
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<DeviceDto>] deviceDto (required):
  Future<Response> updateDevices1WithHttpInfo(List<DeviceDto> deviceDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/device/bulk';

    // ignore: prefer_final_locals
    Object? postBody = deviceDto;

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

  /// Modify devices in bulk
  ///
  /// Returns the id and _rev of modified devices
  ///
  /// Parameters:
  ///
  /// * [List<DeviceDto>] deviceDto (required):
  Future<List<IdWithRevDto>?> updateDevices1(List<DeviceDto> deviceDto,) async {
    final response = await updateDevices1WithHttpInfo(deviceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IdWithRevDto>') as List)
        .cast<IdWithRevDto>()
        .toList();

    }
    return null;
  }
}
