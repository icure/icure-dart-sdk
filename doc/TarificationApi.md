# openapi.api.TarificationApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTarification**](TarificationApi.md#createtarification) | **POST** /rest/v2/tarification | Create a Tarification
[**findTarificationsBy**](TarificationApi.md#findtarificationsby) | **GET** /rest/v2/tarification | Finding tarifications by tarification, type and version with pagination.
[**findTarificationsBy1**](TarificationApi.md#findtarificationsby1) | **GET** /rest/v2/tarification/byRegionTypeTarification | Finding tarifications by tarification, type and version
[**findTarificationsByLabel**](TarificationApi.md#findtarificationsbylabel) | **GET** /rest/v2/tarification/byLabel | Finding tarifications by tarification, type and version with pagination.
[**getTarification**](TarificationApi.md#gettarification) | **GET** /rest/v2/tarification/{tarificationId} | Get a tarification
[**getTarificationWithParts**](TarificationApi.md#gettarificationwithparts) | **GET** /rest/v2/tarification/{type}/{tarification}/{version} | Get a tarification
[**getTarifications**](TarificationApi.md#gettarifications) | **POST** /rest/v2/tarification/byIds | Get a list of tarifications by ids
[**modifyTarification**](TarificationApi.md#modifytarification) | **PUT** /rest/v2/tarification | Modify a tarification


# **createTarification**
> TarificationDto createTarification(tarificationDto)

Create a Tarification

Type, Tarification and Version are required.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = TarificationApi();
final tarificationDto = TarificationDto(); // TarificationDto | 

try {
    final result = api_instance.createTarification(tarificationDto);
    print(result);
} catch (e) {
    print('Exception when calling TarificationApi->createTarification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tarificationDto** | [**TarificationDto**](TarificationDto.md)|  | 

### Return type

[**TarificationDto**](TarificationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findTarificationsBy**
> PaginatedListTarificationDto findTarificationsBy(region, type, tarification, version, startDocumentId, limit)

Finding tarifications by tarification, type and version with pagination.

Returns a list of tarifications matched with given input.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = TarificationApi();
final region = region_example; // String | 
final type = type_example; // String | 
final tarification = tarification_example; // String | 
final version = version_example; // String | 
final startDocumentId = startDocumentId_example; // String | A tarification document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findTarificationsBy(region, type, tarification, version, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling TarificationApi->findTarificationsBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**|  | [optional] 
 **type** | **String**|  | [optional] 
 **tarification** | **String**|  | [optional] 
 **version** | **String**|  | [optional] 
 **startDocumentId** | **String**| A tarification document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListTarificationDto**](PaginatedListTarificationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findTarificationsBy1**
> List<TarificationDto> findTarificationsBy1(region, type, tarification, version)

Finding tarifications by tarification, type and version

Returns a list of tarifications matched with given input.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = TarificationApi();
final region = region_example; // String | Tarification region
final type = type_example; // String | Tarification type
final tarification = tarification_example; // String | Tarification tarification
final version = version_example; // String | Tarification version

try {
    final result = api_instance.findTarificationsBy1(region, type, tarification, version);
    print(result);
} catch (e) {
    print('Exception when calling TarificationApi->findTarificationsBy1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Tarification region | [optional] 
 **type** | **String**| Tarification type | [optional] 
 **tarification** | **String**| Tarification tarification | [optional] 
 **version** | **String**| Tarification version | [optional] 

### Return type

[**List<TarificationDto>**](TarificationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findTarificationsByLabel**
> PaginatedListTarificationDto findTarificationsByLabel(region, types, language, label, startDocumentId, limit)

Finding tarifications by tarification, type and version with pagination.

Returns a list of tarifications matched with given input.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = TarificationApi();
final region = region_example; // String | 
final types = types_example; // String | 
final language = language_example; // String | 
final label = label_example; // String | 
final startDocumentId = startDocumentId_example; // String | A tarification document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findTarificationsByLabel(region, types, language, label, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling TarificationApi->findTarificationsByLabel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**|  | [optional] 
 **types** | **String**|  | [optional] 
 **language** | **String**|  | [optional] 
 **label** | **String**|  | [optional] 
 **startDocumentId** | **String**| A tarification document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListTarificationDto**](PaginatedListTarificationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTarification**
> TarificationDto getTarification(tarificationId)

Get a tarification

Get a tarification based on ID or (tarification,type,version) as query strings. (tarification,type,version) is unique.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = TarificationApi();
final tarificationId = tarificationId_example; // String | Tarification id

try {
    final result = api_instance.getTarification(tarificationId);
    print(result);
} catch (e) {
    print('Exception when calling TarificationApi->getTarification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tarificationId** | **String**| Tarification id | 

### Return type

[**TarificationDto**](TarificationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTarificationWithParts**
> TarificationDto getTarificationWithParts(type, tarification, version)

Get a tarification

Get a tarification based on ID or (tarification,type,version) as query strings. (tarification,type,version) is unique.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = TarificationApi();
final type = type_example; // String | Tarification type
final tarification = tarification_example; // String | Tarification tarification
final version = version_example; // String | Tarification version

try {
    final result = api_instance.getTarificationWithParts(type, tarification, version);
    print(result);
} catch (e) {
    print('Exception when calling TarificationApi->getTarificationWithParts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Tarification type | 
 **tarification** | **String**| Tarification tarification | 
 **version** | **String**| Tarification version | 

### Return type

[**TarificationDto**](TarificationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTarifications**
> List<TarificationDto> getTarifications(listOfIdsDto)

Get a list of tarifications by ids

Keys must be delimited by coma

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = TarificationApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.getTarifications(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling TarificationApi->getTarifications: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<TarificationDto>**](TarificationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyTarification**
> TarificationDto modifyTarification(tarificationDto)

Modify a tarification

Modification of (type, tarification, version) is not allowed.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = TarificationApi();
final tarificationDto = TarificationDto(); // TarificationDto | 

try {
    final result = api_instance.modifyTarification(tarificationDto);
    print(result);
} catch (e) {
    print('Exception when calling TarificationApi->modifyTarification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tarificationDto** | [**TarificationDto**](TarificationDto.md)|  | 

### Return type

[**TarificationDto**](TarificationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

