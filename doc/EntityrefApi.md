# openapi.api.EntityrefApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEntityReference**](EntityrefApi.md#createentityreference) | **POST** /rest/v2/entityref | Create an entity reference
[**getLatest**](EntityrefApi.md#getlatest) | **GET** /rest/v2/entityref/latest/{prefix} | Find latest reference for a prefix 


# **createEntityReference**
> EntityReferenceDto createEntityReference(entityReferenceDto)

Create an entity reference

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EntityrefApi();
final entityReferenceDto = EntityReferenceDto(); // EntityReferenceDto | 

try {
    final result = api_instance.createEntityReference(entityReferenceDto);
    print(result);
} catch (e) {
    print('Exception when calling EntityrefApi->createEntityReference: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityReferenceDto** | [**EntityReferenceDto**](EntityReferenceDto.md)|  | 

### Return type

[**EntityReferenceDto**](EntityReferenceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLatest**
> EntityReferenceDto getLatest(prefix)

Find latest reference for a prefix 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EntityrefApi();
final prefix = prefix_example; // String | 

try {
    final result = api_instance.getLatest(prefix);
    print(result);
} catch (e) {
    print('Exception when calling EntityrefApi->getLatest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prefix** | **String**|  | 

### Return type

[**EntityReferenceDto**](EntityReferenceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

