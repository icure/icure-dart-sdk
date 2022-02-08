# openapi.api.ReceiptApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createReceipt**](ReceiptApi.md#createreceipt) | **POST** /rest/v2/receipt | Creates a receipt
[**deleteReceipts**](ReceiptApi.md#deletereceipts) | **POST** /rest/v2/receipt/delete/batch | Deletes receipts
[**getReceipt**](ReceiptApi.md#getreceipt) | **GET** /rest/v2/receipt/{receiptId} | Gets a receipt
[**getReceiptAttachment**](ReceiptApi.md#getreceiptattachment) | **GET** /rest/v2/receipt/{receiptId}/attachment/{attachmentId} | Get an attachment
[**listByReference**](ReceiptApi.md#listbyreference) | **GET** /rest/v2/receipt/byRef/{ref} | Gets a receipt
[**modifyReceipt**](ReceiptApi.md#modifyreceipt) | **PUT** /rest/v2/receipt | Updates a receipt
[**setReceiptAttachment**](ReceiptApi.md#setreceiptattachment) | **PUT** /rest/v2/receipt/{receiptId}/attachment/{blobType} | Creates a receipt's attachment


# **createReceipt**
> ReceiptDto createReceipt(receiptDto)

Creates a receipt

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ReceiptApi();
final receiptDto = ReceiptDto(); // ReceiptDto | 

try {
    final result = api_instance.createReceipt(receiptDto);
    print(result);
} catch (e) {
    print('Exception when calling ReceiptApi->createReceipt: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **receiptDto** | [**ReceiptDto**](ReceiptDto.md)|  | 

### Return type

[**ReceiptDto**](ReceiptDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteReceipts**
> List<DocIdentifier> deleteReceipts(listOfIdsDto)

Deletes receipts

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ReceiptApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.deleteReceipts(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling ReceiptApi->deleteReceipts: $e\n');
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

# **getReceipt**
> ReceiptDto getReceipt(receiptId)

Gets a receipt

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ReceiptApi();
final receiptId = receiptId_example; // String | 

try {
    final result = api_instance.getReceipt(receiptId);
    print(result);
} catch (e) {
    print('Exception when calling ReceiptApi->getReceipt: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **receiptId** | **String**|  | 

### Return type

[**ReceiptDto**](ReceiptDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReceiptAttachment**
> MultipartFile getReceiptAttachment(receiptId, attachmentId, enckeys)

Get an attachment

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ReceiptApi();
final receiptId = receiptId_example; // String | 
final attachmentId = attachmentId_example; // String | 
final enckeys = enckeys_example; // String | 

try {
    final result = api_instance.getReceiptAttachment(receiptId, attachmentId, enckeys);
    print(result);
} catch (e) {
    print('Exception when calling ReceiptApi->getReceiptAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **receiptId** | **String**|  | 
 **attachmentId** | **String**|  | 
 **enckeys** | **String**|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listByReference**
> List<ReceiptDto> listByReference(ref)

Gets a receipt

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ReceiptApi();
final ref = ref_example; // String | 

try {
    final result = api_instance.listByReference(ref);
    print(result);
} catch (e) {
    print('Exception when calling ReceiptApi->listByReference: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ref** | **String**|  | 

### Return type

[**List<ReceiptDto>**](ReceiptDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyReceipt**
> ReceiptDto modifyReceipt(receiptDto)

Updates a receipt

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ReceiptApi();
final receiptDto = ReceiptDto(); // ReceiptDto | 

try {
    final result = api_instance.modifyReceipt(receiptDto);
    print(result);
} catch (e) {
    print('Exception when calling ReceiptApi->modifyReceipt: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **receiptDto** | [**ReceiptDto**](ReceiptDto.md)|  | 

### Return type

[**ReceiptDto**](ReceiptDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setReceiptAttachment**
> ReceiptDto setReceiptAttachment(receiptId, blobType, body, enckeys)

Creates a receipt's attachment

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ReceiptApi();
final receiptId = receiptId_example; // String | 
final blobType = blobType_example; // String | 
final body = MultipartFile(); // MultipartFile | 
final enckeys = enckeys_example; // String | 

try {
    final result = api_instance.setReceiptAttachment(receiptId, blobType, body, enckeys);
    print(result);
} catch (e) {
    print('Exception when calling ReceiptApi->setReceiptAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **receiptId** | **String**|  | 
 **blobType** | **String**|  | 
 **body** | **MultipartFile**|  | 
 **enckeys** | **String**|  | [optional] 

### Return type

[**ReceiptDto**](ReceiptDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

