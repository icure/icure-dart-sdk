# icure_dart_sdk.api.BeresultimportApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**canHandle**](BeresultimportApi.md#canhandle) | **
GET** /rest/v1/be_result_import/canhandle/{id} | Can we handle this document
[**doImport**](BeresultimportApi.md#doimport) | **
GET** /rest/v1/be_result_import/import/{documentId}/{hcpId}/{language} | import document
[**getInfos**](BeresultimportApi.md#getinfos) | **
GET** /rest/v1/be_result_import/infos/{id} | Extract general infos from document


# **canHandle**
> bool canHandle(id, enckeys)

Can we handle this document

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = BeresultimportApi();
final id = id_example; // String | 
final enckeys = enckeys_example; // String | 

try {
    final result = api_instance.canHandle(id, enckeys);
    print(result);
} catch (e) {
    print('Exception when calling BeresultimportApi->canHandle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **enckeys** | **String**|  | 

### Return type

**bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **doImport**
> ContactDto doImport(documentId, hcpId, language, protocolIds, formIds, planOfActionId, enckeys, ctc)

import document

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = BeresultimportApi();
final documentId = documentId_example; // String | 
final hcpId = hcpId_example; // String | 
final language = language_example; // String | 
final protocolIds = protocolIds_example; // String | 
final formIds = formIds_example; // String | 
final planOfActionId = planOfActionId_example; // String | 
final enckeys = enckeys_example; // String | 
final ctc = ; // ContactDto | 

try {
    final result = api_instance.doImport(documentId, hcpId, language, protocolIds, formIds, planOfActionId, enckeys, ctc);
    print(result);
} catch (e) {
    print('Exception when calling BeresultimportApi->doImport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **hcpId** | **String**|  | 
 **language** | **String**|  | 
 **protocolIds** | **String**|  | 
 **formIds** | **String**|  | 
 **planOfActionId** | **String**|  | 
 **enckeys** | **String**|  | 
 **ctc** | [**ContactDto**](.md)|  | 

### Return type

[**ContactDto**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInfos**
> List<ResultInfoDto> getInfos(id, language, enckeys, full)

Extract general infos from document

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = BeresultimportApi();
final id = id_example; // String | 
final language = language_example; // String | 
final enckeys = enckeys_example; // String | 
final full = true; // bool | 

try {
    final result = api_instance.getInfos(id, language, enckeys, full);
    print(result);
} catch (e) {
    print('Exception when calling BeresultimportApi->getInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **language** | **String**|  | 
 **enckeys** | **String**|  | 
 **full** | **bool**|  | [optional] 

### Return type

[**List<ResultInfoDto>**](ResultInfoDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

