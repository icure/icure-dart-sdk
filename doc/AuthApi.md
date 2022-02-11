# icure_dart_sdk.api.AuthApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**login**](AuthApi.md#login) | **POST** /rest/v2/auth/login | login
[**logout**](AuthApi.md#logout) | **GET** /rest/v2/auth/logout | logout
[**logoutPost**](AuthApi.md#logoutpost) | **POST** /rest/v2/auth/logout | logout
[**token**](AuthApi.md#token) | **GET** /rest/v2/auth/token/{method}/{path} | token


# **login**
> AuthenticationResponse login(loginCredentials)

login

Login using username and password

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = AuthApi();
final loginCredentials = LoginCredentials(); // LoginCredentials | 

try {
    final result = api_instance.login(loginCredentials);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->login: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginCredentials** | [**LoginCredentials**](LoginCredentials.md)|  | 

### Return type

[**AuthenticationResponse**](AuthenticationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout**
> AuthenticationResponse logout()

logout

Logout

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = AuthApi();

try {
    final result = api_instance.logout();
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->logout: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AuthenticationResponse**](AuthenticationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logoutPost**
> AuthenticationResponse logoutPost()

logout

Logout

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = AuthApi();

try {
    final result = api_instance.logoutPost();
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->logoutPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AuthenticationResponse**](AuthenticationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **token**
> String token(method, path)

token

Get token for subsequent operation

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = AuthApi();
final method = method_example; // String | 
final path = path_example; // String | 

try {
    final result = api_instance.token(method, path);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->token: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **method** | **String**|  | 
 **path** | **String**|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

