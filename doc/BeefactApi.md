# icure_dart_sdk.api.BeefactApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBatchAndMessage**](BeefactApi.md#createbatchandmessage) | **POST** /rest/v2/be_efact/{insuranceId}/{newMessageId}/{numericalRef} | create batch and message


# **createBatchAndMessage**
> MessageWithBatch createBatchAndMessage(insuranceId, newMessageId, numericalRef, mapOfIdsDto)

create batch and message

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = BeefactApi();
final insuranceId = insuranceId_example; // String | 
final newMessageId = newMessageId_example; // String | 
final numericalRef = 789; // int | 
final mapOfIdsDto = MapOfIdsDto(); // MapOfIdsDto | 

try {
    final result = api_instance.createBatchAndMessage(insuranceId, newMessageId, numericalRef, mapOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling BeefactApi->createBatchAndMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **insuranceId** | **String**|  | 
 **newMessageId** | **String**|  | 
 **numericalRef** | **int**|  | 
 **mapOfIdsDto** | [**MapOfIdsDto**](MapOfIdsDto.md)|  | 

### Return type

[**MessageWithBatch**](MessageWithBatch.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

