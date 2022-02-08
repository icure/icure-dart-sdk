# openapi.api.DeviceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDevice**](DeviceApi.md#createdevice) | **POST** /rest/v2/device | Create a device
[**createDevices**](DeviceApi.md#createdevices) | **POST** /rest/v2/device/batch | Create devices in bulk
[**createDevices1**](DeviceApi.md#createdevices1) | **POST** /rest/v2/device/bulk | Create devices in bulk
[**deleteDevice**](DeviceApi.md#deletedevice) | **DELETE** /rest/v2/device/{deviceId} | Delete device.
[**deleteDevices**](DeviceApi.md#deletedevices) | **POST** /rest/v2/device/delete/batch | Delete devices.
[**filterDevicesBy**](DeviceApi.md#filterdevicesby) | **POST** /rest/v2/device/filter | Filter devices for the current user (HcParty) 
[**getDevice**](DeviceApi.md#getdevice) | **GET** /rest/v2/device/{deviceId} | Get Device
[**getDevices**](DeviceApi.md#getdevices) | **POST** /rest/v2/device/byIds | Get devices by id
[**matchDevicesBy**](DeviceApi.md#matchdevicesby) | **POST** /rest/v2/device/match | Get ids of devices matching the provided filter for the current user (HcParty) 
[**updateDevice**](DeviceApi.md#updatedevice) | **PUT** /rest/v2/device | Modify a device
[**updateDevices**](DeviceApi.md#updatedevices) | **PUT** /rest/v2/device/batch | Modify devices in bulk
[**updateDevices1**](DeviceApi.md#updatedevices1) | **PUT** /rest/v2/device/bulk | Modify devices in bulk


# **createDevice**
> DeviceDto createDevice(deviceDto)

Create a device

Name, last name, date of birth, and gender are required. After creation of the device and obtaining the ID, you need to create an initial delegation.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DeviceApi();
final deviceDto = DeviceDto(); // DeviceDto | 

try {
    final result = api_instance.createDevice(deviceDto);
    print(result);
} catch (e) {
    print('Exception when calling DeviceApi->createDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceDto** | [**DeviceDto**](DeviceDto.md)|  | 

### Return type

[**DeviceDto**](DeviceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDevices**
> List<IdWithRevDto> createDevices(deviceDto)

Create devices in bulk

Returns the id and _rev of created devices

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DeviceApi();
final deviceDto = [List<DeviceDto>()]; // List<DeviceDto> | 

try {
    final result = api_instance.createDevices(deviceDto);
    print(result);
} catch (e) {
    print('Exception when calling DeviceApi->createDevices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceDto** | [**List<DeviceDto>**](DeviceDto.md)|  | 

### Return type

[**List<IdWithRevDto>**](IdWithRevDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDevices1**
> List<IdWithRevDto> createDevices1(deviceDto)

Create devices in bulk

Returns the id and _rev of created devices

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DeviceApi();
final deviceDto = [List<DeviceDto>()]; // List<DeviceDto> | 

try {
    final result = api_instance.createDevices1(deviceDto);
    print(result);
} catch (e) {
    print('Exception when calling DeviceApi->createDevices1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceDto** | [**List<DeviceDto>**](DeviceDto.md)|  | 

### Return type

[**List<IdWithRevDto>**](IdWithRevDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDevice**
> DocIdentifier deleteDevice(deviceId)

Delete device.

Response contains the id/rev of deleted device.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DeviceApi();
final deviceId = deviceId_example; // String | 

try {
    final result = api_instance.deleteDevice(deviceId);
    print(result);
} catch (e) {
    print('Exception when calling DeviceApi->deleteDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **String**|  | 

### Return type

[**DocIdentifier**](DocIdentifier.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDevices**
> List<DocIdentifier> deleteDevices(listOfIdsDto)

Delete devices.

Response is an array containing the id/rev of deleted devices.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DeviceApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.deleteDevices(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling DeviceApi->deleteDevices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<DocIdentifier>**](DocIdentifier.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filterDevicesBy**
> PaginatedListDeviceDto filterDevicesBy(filterChainDevice, startDocumentId, limit)

Filter devices for the current user (HcParty) 

Returns a list of devices along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DeviceApi();
final filterChainDevice = FilterChainDevice(); // FilterChainDevice | 
final startDocumentId = startDocumentId_example; // String | A device document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.filterDevicesBy(filterChainDevice, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling DeviceApi->filterDevicesBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterChainDevice** | [**FilterChainDevice**](FilterChainDevice.md)|  | 
 **startDocumentId** | **String**| A device document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListDeviceDto**](PaginatedListDeviceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDevice**
> DeviceDto getDevice(deviceId)

Get Device

It gets device administrative data.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DeviceApi();
final deviceId = deviceId_example; // String | 

try {
    final result = api_instance.getDevice(deviceId);
    print(result);
} catch (e) {
    print('Exception when calling DeviceApi->getDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **String**|  | 

### Return type

[**DeviceDto**](DeviceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDevices**
> List<DeviceDto> getDevices(listOfIdsDto)

Get devices by id

It gets device administrative data.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DeviceApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.getDevices(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling DeviceApi->getDevices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<DeviceDto>**](DeviceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **matchDevicesBy**
> List<String> matchDevicesBy(abstractFilterDtoDevice)

Get ids of devices matching the provided filter for the current user (HcParty) 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DeviceApi();
final abstractFilterDtoDevice = AbstractFilterDtoDevice(); // AbstractFilterDtoDevice | 

try {
    final result = api_instance.matchDevicesBy(abstractFilterDtoDevice);
    print(result);
} catch (e) {
    print('Exception when calling DeviceApi->matchDevicesBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **abstractFilterDtoDevice** | [**AbstractFilterDtoDevice**](AbstractFilterDtoDevice.md)|  | 

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDevice**
> DeviceDto updateDevice(deviceDto)

Modify a device

Returns the updated device

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DeviceApi();
final deviceDto = DeviceDto(); // DeviceDto | 

try {
    final result = api_instance.updateDevice(deviceDto);
    print(result);
} catch (e) {
    print('Exception when calling DeviceApi->updateDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceDto** | [**DeviceDto**](DeviceDto.md)|  | 

### Return type

[**DeviceDto**](DeviceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDevices**
> List<IdWithRevDto> updateDevices(deviceDto)

Modify devices in bulk

Returns the id and _rev of modified devices

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DeviceApi();
final deviceDto = [List<DeviceDto>()]; // List<DeviceDto> | 

try {
    final result = api_instance.updateDevices(deviceDto);
    print(result);
} catch (e) {
    print('Exception when calling DeviceApi->updateDevices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceDto** | [**List<DeviceDto>**](DeviceDto.md)|  | 

### Return type

[**List<IdWithRevDto>**](IdWithRevDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDevices1**
> List<IdWithRevDto> updateDevices1(deviceDto)

Modify devices in bulk

Returns the id and _rev of modified devices

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DeviceApi();
final deviceDto = [List<DeviceDto>()]; // List<DeviceDto> | 

try {
    final result = api_instance.updateDevices1(deviceDto);
    print(result);
} catch (e) {
    print('Exception when calling DeviceApi->updateDevices1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceDto** | [**List<DeviceDto>**](DeviceDto.md)|  | 

### Return type

[**List<IdWithRevDto>**](IdWithRevDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

