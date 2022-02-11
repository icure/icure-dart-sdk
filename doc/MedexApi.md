# icure_dart_sdk.api.MedexApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateMedex**](MedexApi.md#generatemedex) | **POST** /rest/v2/medex/generate | Generate a Medex XML String


# **generateMedex**
> String generateMedex(medexInfoDto)

Generate a Medex XML String

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MedexApi();
final medexInfoDto = MedexInfoDto(); // MedexInfoDto | 

try {
    final result = api_instance.generateMedex(medexInfoDto);
    print(result);
} catch (e) {
    print('Exception when calling MedexApi->generateMedex: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **medexInfoDto** | [**MedexInfoDto**](MedexInfoDto.md)|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

