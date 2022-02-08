# openapi.api.BeresultexportApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exportHealthOne**](BeresultexportApi.md#exporthealthone) | **POST** /rest/v2/be_result_export/hl1/{fromHcpId}/{toHcpId}/{patId}/{date}/{ref} | Export data
[**exportKmehrReport**](BeresultexportApi.md#exportkmehrreport) | **POST** /rest/v2/be_result_export/kmehrreport/{fromHcpId}/{toHcpId}/{patId}/{date}/{ref} | Export data
[**exportMedidoc**](BeresultexportApi.md#exportmedidoc) | **POST** /rest/v2/be_result_export/medidoc/{fromHcpId}/{toHcpId}/{patId}/{date}/{ref} | Export data


# **exportHealthOne**
> MultipartFile exportHealthOne(fromHcpId, toHcpId, patId, date, ref, requestBody)

Export data

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BeresultexportApi();
final fromHcpId = fromHcpId_example; // String | 
final toHcpId = toHcpId_example; // String | 
final patId = patId_example; // String | 
final date = 789; // int | 
final ref = ref_example; // String | 
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.exportHealthOne(fromHcpId, toHcpId, patId, date, ref, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling BeresultexportApi->exportHealthOne: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromHcpId** | **String**|  | 
 **toHcpId** | **String**|  | 
 **patId** | **String**|  | 
 **date** | **int**|  | 
 **ref** | **String**|  | 
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportKmehrReport**
> MultipartFile exportKmehrReport(fromHcpId, toHcpId, patId, date, ref, requestBody, mimeType)

Export data

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BeresultexportApi();
final fromHcpId = fromHcpId_example; // String | 
final toHcpId = toHcpId_example; // String | 
final patId = patId_example; // String | 
final date = 789; // int | 
final ref = ref_example; // String | 
final requestBody = [List<String>()]; // List<String> | 
final mimeType = true; // bool | 

try {
    final result = api_instance.exportKmehrReport(fromHcpId, toHcpId, patId, date, ref, requestBody, mimeType);
    print(result);
} catch (e) {
    print('Exception when calling BeresultexportApi->exportKmehrReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromHcpId** | **String**|  | 
 **toHcpId** | **String**|  | 
 **patId** | **String**|  | 
 **date** | **int**|  | 
 **ref** | **String**|  | 
 **requestBody** | [**List<String>**](String.md)|  | 
 **mimeType** | **bool**|  | [optional] 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportMedidoc**
> MultipartFile exportMedidoc(fromHcpId, toHcpId, patId, date, ref, requestBody)

Export data

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BeresultexportApi();
final fromHcpId = fromHcpId_example; // String | 
final toHcpId = toHcpId_example; // String | 
final patId = patId_example; // String | 
final date = 789; // int | 
final ref = ref_example; // String | 
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.exportMedidoc(fromHcpId, toHcpId, patId, date, ref, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling BeresultexportApi->exportMedidoc: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromHcpId** | **String**|  | 
 **toHcpId** | **String**|  | 
 **patId** | **String**|  | 
 **date** | **int**|  | 
 **ref** | **String**|  | 
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

