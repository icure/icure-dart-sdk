# openapi.api.PermissionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**modifyUserPermissions**](PermissionApi.md#modifyuserpermissions) | **PUT** /rest/v2/permissions/{userId} | Add / Revoke permissions to user


# **modifyUserPermissions**
> List<PermissionDto> modifyUserPermissions(userId, permissionDto)

Add / Revoke permissions to user

Add a list of granted and revoked permissions to user.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = PermissionApi();
final userId = userId_example; // String | 
final permissionDto = PermissionDto(); // PermissionDto | 

try {
    final result = api_instance.modifyUserPermissions(userId, permissionDto);
    print(result);
} catch (e) {
    print('Exception when calling PermissionApi->modifyUserPermissions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **permissionDto** | [**PermissionDto**](PermissionDto.md)|  | 

### Return type

[**List<PermissionDto>**](PermissionDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

