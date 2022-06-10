# icure_dart_sdk.api.MedicalLocationApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMedicalLocation**](MedicalLocationApi.md#createmedicallocation) | **
POST** /rest/v1/medicallocation | Creates a medical location
[**deleteMedicalLocations**](MedicalLocationApi.md#deletemedicallocations) | **
POST** /rest/v1/medicallocation/delete/batch | Deletes medical locations
[**getMedicalLocation**](MedicalLocationApi.md#getmedicallocation) | **
GET** /rest/v1/medicallocation/{locationId} | Gets a medical location
[**getMedicalLocations**](MedicalLocationApi.md#getmedicallocations) | **
GET** /rest/v1/medicallocation | Gets all medical locations
[**modifyMedicalLocation**](MedicalLocationApi.md#modifymedicallocation) | **
PUT** /rest/v1/medicallocation | Modifies a medical location


# **createMedicalLocation**
> MedicalLocationDto createMedicalLocation(medicalLocationDto)

Creates a medical location

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MedicalLocationApi();
final medicalLocationDto = MedicalLocationDto(); // MedicalLocationDto | 

try {
    final result = api_instance.createMedicalLocation(medicalLocationDto);
    print(result);
} catch (e) {
    print('Exception when calling MedicalLocationApi->createMedicalLocation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **medicalLocationDto** | [**MedicalLocationDto**](MedicalLocationDto.md)|  | 

### Return type

[**MedicalLocationDto**](MedicalLocationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMedicalLocations**
> List<DocIdentifier> deleteMedicalLocations(listOfIdsDto)

Deletes medical locations

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MedicalLocationApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.deleteMedicalLocations(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling MedicalLocationApi->deleteMedicalLocations: $e\n');
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

# **getMedicalLocation**
> MedicalLocationDto getMedicalLocation(locationId)

Gets a medical location

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MedicalLocationApi();
final locationId = locationId_example; // String | 

try {
    final result = api_instance.getMedicalLocation(locationId);
    print(result);
} catch (e) {
    print('Exception when calling MedicalLocationApi->getMedicalLocation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **String**|  | 

### Return type

[**MedicalLocationDto**](MedicalLocationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMedicalLocations**
> List<MedicalLocationDto> getMedicalLocations()

Gets all medical locations

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MedicalLocationApi();

try {
    final result = api_instance.getMedicalLocations();
    print(result);
} catch (e) {
    print('Exception when calling MedicalLocationApi->getMedicalLocations: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<MedicalLocationDto>**](MedicalLocationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyMedicalLocation**
> MedicalLocationDto modifyMedicalLocation(medicalLocationDto)

Modifies a medical location

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MedicalLocationApi();
final medicalLocationDto = MedicalLocationDto(); // MedicalLocationDto | 

try {
    final result = api_instance.modifyMedicalLocation(medicalLocationDto);
    print(result);
} catch (e) {
    print('Exception when calling MedicalLocationApi->modifyMedicalLocation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **medicalLocationDto** | [**MedicalLocationDto**](MedicalLocationDto.md)|  | 

### Return type

[**MedicalLocationDto**](MedicalLocationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

