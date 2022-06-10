# icure_dart_sdk.api.InsuranceApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInsurance**](InsuranceApi.md#createinsurance) | **POST** /rest/v1/insurance | Creates an insurance
[**deleteInsurance**](InsuranceApi.md#deleteinsurance) | **
DELETE** /rest/v1/insurance/{insuranceId} | Deletes an insurance
[**getInsurance**](InsuranceApi.md#getinsurance) | **GET** /rest/v1/insurance/{insuranceId} | Gets an insurance
[**getInsurances**](InsuranceApi.md#getinsurances) | **POST** /rest/v1/insurance/byIds | Gets insurances by id
[**listInsurancesByCode**](InsuranceApi.md#listinsurancesbycode) | **
GET** /rest/v1/insurance/byCode/{insuranceCode} | Gets an insurance
[**listInsurancesByName**](InsuranceApi.md#listinsurancesbyname) | **
GET** /rest/v1/insurance/byName/{insuranceName} | Gets an insurance
[**modifyInsurance**](InsuranceApi.md#modifyinsurance) | **PUT** /rest/v1/insurance | Modifies an insurance


# **createInsurance**
> InsuranceDto createInsurance(insuranceDto)

Creates an insurance

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = InsuranceApi();
final insuranceDto = InsuranceDto(); // InsuranceDto | 

try {
    final result = api_instance.createInsurance(insuranceDto);
    print(result);
} catch (e) {
    print('Exception when calling InsuranceApi->createInsurance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **insuranceDto** | [**InsuranceDto**](InsuranceDto.md)|  | 

### Return type

[**InsuranceDto**](InsuranceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInsurance**
> DocIdentifier deleteInsurance(insuranceId)

Deletes an insurance

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = InsuranceApi();
final insuranceId = insuranceId_example; // String | 

try {
    final result = api_instance.deleteInsurance(insuranceId);
    print(result);
} catch (e) {
    print('Exception when calling InsuranceApi->deleteInsurance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **insuranceId** | **String**|  | 

### Return type

[**DocIdentifier**](DocIdentifier.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInsurance**
> InsuranceDto getInsurance(insuranceId)

Gets an insurance

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = InsuranceApi();
final insuranceId = insuranceId_example; // String | 

try {
    final result = api_instance.getInsurance(insuranceId);
    print(result);
} catch (e) {
    print('Exception when calling InsuranceApi->getInsurance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **insuranceId** | **String**|  | 

### Return type

[**InsuranceDto**](InsuranceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInsurances**
> List<InsuranceDto> getInsurances(listOfIdsDto)

Gets insurances by id

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = InsuranceApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.getInsurances(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling InsuranceApi->getInsurances: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<InsuranceDto>**](InsuranceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInsurancesByCode**
> List<InsuranceDto> listInsurancesByCode(insuranceCode)

Gets an insurance

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = InsuranceApi();
final insuranceCode = insuranceCode_example; // String | 

try {
    final result = api_instance.listInsurancesByCode(insuranceCode);
    print(result);
} catch (e) {
    print('Exception when calling InsuranceApi->listInsurancesByCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **insuranceCode** | **String**|  | 

### Return type

[**List<InsuranceDto>**](InsuranceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInsurancesByName**
> List<InsuranceDto> listInsurancesByName(insuranceName)

Gets an insurance

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = InsuranceApi();
final insuranceName = insuranceName_example; // String | 

try {
    final result = api_instance.listInsurancesByName(insuranceName);
    print(result);
} catch (e) {
    print('Exception when calling InsuranceApi->listInsurancesByName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **insuranceName** | **String**|  | 

### Return type

[**List<InsuranceDto>**](InsuranceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyInsurance**
> InsuranceDto modifyInsurance(insuranceDto)

Modifies an insurance

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = InsuranceApi();
final insuranceDto = InsuranceDto(); // InsuranceDto | 

try {
    final result = api_instance.modifyInsurance(insuranceDto);
    print(result);
} catch (e) {
    print('Exception when calling InsuranceApi->modifyInsurance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **insuranceDto** | [**InsuranceDto**](InsuranceDto.md)|  | 

### Return type

[**InsuranceDto**](InsuranceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

