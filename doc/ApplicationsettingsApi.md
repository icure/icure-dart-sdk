# openapi.api.ApplicationsettingsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getApplicationSettings**](ApplicationsettingsApi.md#getapplicationsettings) | **GET** /rest/v2/appsettings | Gets all application settings


# **getApplicationSettings**
> List<ApplicationSettingsDto> getApplicationSettings()

Gets all application settings

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApplicationsettingsApi();

try {
    final result = api_instance.getApplicationSettings();
    print(result);
} catch (e) {
    print('Exception when calling ApplicationsettingsApi->getApplicationSettings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<ApplicationSettingsDto>**](ApplicationSettingsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

