# icure_dart_sdk.api.FrontEndMigrationApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFrontEndMigration**](FrontEndMigrationApi.md#createfrontendmigration) | **POST** /rest/v2/frontendmigration | Creates a front end migration
[**deleteFrontEndMigration**](FrontEndMigrationApi.md#deletefrontendmigration) | **DELETE** /rest/v2/frontendmigration/{frontEndMigrationId} | Deletes a front end migration
[**getFrontEndMigration**](FrontEndMigrationApi.md#getfrontendmigration) | **GET** /rest/v2/frontendmigration/{frontEndMigrationId} | Gets a front end migration
[**getFrontEndMigrationByName**](FrontEndMigrationApi.md#getfrontendmigrationbyname) | **GET** /rest/v2/frontendmigration/byName/{frontEndMigrationName} | Gets an front end migration
[**getFrontEndMigrations**](FrontEndMigrationApi.md#getfrontendmigrations) | **GET** /rest/v2/frontendmigration | Gets a front end migration
[**modifyFrontEndMigration**](FrontEndMigrationApi.md#modifyfrontendmigration) | **PUT** /rest/v2/frontendmigration | Modifies a front end migration


# **createFrontEndMigration**
> FrontEndMigrationDto createFrontEndMigration(frontEndMigrationDto)

Creates a front end migration

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FrontEndMigrationApi();
final frontEndMigrationDto = FrontEndMigrationDto(); // FrontEndMigrationDto | 

try {
    final result = api_instance.createFrontEndMigration(frontEndMigrationDto);
    print(result);
} catch (e) {
    print('Exception when calling FrontEndMigrationApi->createFrontEndMigration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **frontEndMigrationDto** | [**FrontEndMigrationDto**](FrontEndMigrationDto.md)|  | 

### Return type

[**FrontEndMigrationDto**](FrontEndMigrationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFrontEndMigration**
> DocIdentifier deleteFrontEndMigration(frontEndMigrationId)

Deletes a front end migration

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FrontEndMigrationApi();
final frontEndMigrationId = frontEndMigrationId_example; // String | 

try {
    final result = api_instance.deleteFrontEndMigration(frontEndMigrationId);
    print(result);
} catch (e) {
    print('Exception when calling FrontEndMigrationApi->deleteFrontEndMigration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **frontEndMigrationId** | **String**|  | 

### Return type

[**DocIdentifier**](DocIdentifier.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFrontEndMigration**
> FrontEndMigrationDto getFrontEndMigration(frontEndMigrationId)

Gets a front end migration

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FrontEndMigrationApi();
final frontEndMigrationId = frontEndMigrationId_example; // String | 

try {
    final result = api_instance.getFrontEndMigration(frontEndMigrationId);
    print(result);
} catch (e) {
    print('Exception when calling FrontEndMigrationApi->getFrontEndMigration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **frontEndMigrationId** | **String**|  | 

### Return type

[**FrontEndMigrationDto**](FrontEndMigrationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFrontEndMigrationByName**
> List<FrontEndMigrationDto> getFrontEndMigrationByName(frontEndMigrationName)

Gets an front end migration

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FrontEndMigrationApi();
final frontEndMigrationName = frontEndMigrationName_example; // String | 

try {
    final result = api_instance.getFrontEndMigrationByName(frontEndMigrationName);
    print(result);
} catch (e) {
    print('Exception when calling FrontEndMigrationApi->getFrontEndMigrationByName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **frontEndMigrationName** | **String**|  | 

### Return type

[**List<FrontEndMigrationDto>**](FrontEndMigrationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFrontEndMigrations**
> List<FrontEndMigrationDto> getFrontEndMigrations()

Gets a front end migration

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FrontEndMigrationApi();

try {
    final result = api_instance.getFrontEndMigrations();
    print(result);
} catch (e) {
    print('Exception when calling FrontEndMigrationApi->getFrontEndMigrations: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<FrontEndMigrationDto>**](FrontEndMigrationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyFrontEndMigration**
> FrontEndMigrationDto modifyFrontEndMigration(frontEndMigrationDto)

Modifies a front end migration

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FrontEndMigrationApi();
final frontEndMigrationDto = FrontEndMigrationDto(); // FrontEndMigrationDto | 

try {
    final result = api_instance.modifyFrontEndMigration(frontEndMigrationDto);
    print(result);
} catch (e) {
    print('Exception when calling FrontEndMigrationApi->modifyFrontEndMigration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **frontEndMigrationDto** | [**FrontEndMigrationDto**](FrontEndMigrationDto.md)|  | 

### Return type

[**FrontEndMigrationDto**](FrontEndMigrationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

