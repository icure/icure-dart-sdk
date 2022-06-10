# icure_dart_sdk.api.DocumentApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDocument**](DocumentApi.md#createdocument) | **POST** /rest/v1/document | Creates a document
[**deleteAttachment**](DocumentApi.md#deleteattachment) | **
DELETE** /rest/v1/document/{documentId}/attachment | Deletes a document's attachment
[**deleteDocument**](DocumentApi.md#deletedocument) | **POST** /rest/v1/document/delete/batch | Deletes documents
[**findWithoutDelegation**](DocumentApi.md#findwithoutdelegation) | **
GET** /rest/v1/document/woDelegation | List documents with no delegation
[**getDocument**](DocumentApi.md#getdocument) | **GET** /rest/v1/document/{documentId} | Gets a document
[**getDocumentAttachment**](DocumentApi.md#getdocumentattachment) | **
GET** /rest/v1/document/{documentId}/attachment/{attachmentId} | Load document's attachment
[**getDocumentByExternalUuid**](DocumentApi.md#getdocumentbyexternaluuid) | **
GET** /rest/v1/document/externaluuid/{externalUuid} | Gets a document
[**getDocuments**](DocumentApi.md#getdocuments) | **POST** /rest/v1/document/byIds | Gets a document
[**getDocumentsByExternalUuid**](DocumentApi.md#getdocumentsbyexternaluuid) | **
GET** /rest/v1/document/externaluuid/{externalUuid}/all | Get all documents with externalUuid
[**listDocumentByTypeHCPartyMessageSecretFKeys**](DocumentApi.md#listdocumentbytypehcpartymessagesecretfkeys) | **
GET** /rest/v1/document/byTypeHcPartySecretForeignKeys | List documents found By type, By Healthcare Party and secret foreign keys.
[**listDocumentsByHCPartyAndPatientForeignKeys**](DocumentApi.md#listdocumentsbyhcpartyandpatientforeignkeys) | **
GET** /rest/v1/document/byHcPartySecretForeignKeys | List documents found By Healthcare Party and secret foreign keys.
[**modifyDocument**](DocumentApi.md#modifydocument) | **PUT** /rest/v1/document | Updates a document
[**modifyDocuments**](DocumentApi.md#modifydocuments) | **PUT** /rest/v1/document/batch | Updates a batch of documents
[**setDocumentAttachment**](DocumentApi.md#setdocumentattachment) | **
PUT** /rest/v1/document/{documentId}/attachment | Creates a document's attachment
[**setDocumentAttachmentMulti**](DocumentApi.md#setdocumentattachmentmulti) | **
PUT** /rest/v1/document/{documentId}/attachment/multipart | Creates a document's attachment
[**setDocumentsDelegations**](DocumentApi.md#setdocumentsdelegations) | **
POST** /rest/v1/document/delegations | Update delegations in healthElements.
[**setSafeDocumentAttachment**](DocumentApi.md#setsafedocumentattachment) | **
PUT** /rest/v1/document/attachment | Creates a document's attachment


# **createDocument**
> DocumentDto createDocument(documentDto)

Creates a document

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentApi();
final documentDto = DocumentDto(); // DocumentDto | 

try {
    final result = api_instance.createDocument(documentDto);
    print(result);
} catch (e) {
    print('Exception when calling DocumentApi->createDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentDto** | [**DocumentDto**](DocumentDto.md)|  | 

### Return type

[**DocumentDto**](DocumentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAttachment**
> DocumentDto deleteAttachment(documentId)

Deletes a document's attachment

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentApi();
final documentId = documentId_example; // String | 

try {
    final result = api_instance.deleteAttachment(documentId);
    print(result);
} catch (e) {
    print('Exception when calling DocumentApi->deleteAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**DocumentDto**](DocumentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDocument**
> List<DocIdentifier> deleteDocument(listOfIdsDto)

Deletes documents

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.deleteDocument(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling DocumentApi->deleteDocument: $e\n');
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

# **findWithoutDelegation**
> List<DocumentDto> findWithoutDelegation(limit)

List documents with no delegation

Keys must be delimited by coma

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentApi();
final limit = 56; // int | 

try {
    final result = api_instance.findWithoutDelegation(limit);
    print(result);
} catch (e) {
    print('Exception when calling DocumentApi->findWithoutDelegation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] 

### Return type

[**List<DocumentDto>**](DocumentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDocument**
> DocumentDto getDocument(documentId)

Gets a document

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentApi();
final documentId = documentId_example; // String | 

try {
    final result = api_instance.getDocument(documentId);
    print(result);
} catch (e) {
    print('Exception when calling DocumentApi->getDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**DocumentDto**](DocumentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDocumentAttachment**
> MultipartFile getDocumentAttachment(documentId, attachmentId, enckeys, fileName)

Load document's attachment

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentApi();
final documentId = documentId_example; // String | 
final attachmentId = attachmentId_example; // String | 
final enckeys = enckeys_example; // String | 
final fileName = fileName_example; // String | 

try {
    final result = api_instance.getDocumentAttachment(documentId, attachmentId, enckeys, fileName);
    print(result);
} catch (e) {
    print('Exception when calling DocumentApi->getDocumentAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **attachmentId** | **String**|  | 
 **enckeys** | **String**|  | [optional] 
 **fileName** | **String**|  | [optional] 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDocumentByExternalUuid**
> DocumentDto getDocumentByExternalUuid(externalUuid)

Gets a document

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentApi();
final externalUuid = externalUuid_example; // String | 

try {
    final result = api_instance.getDocumentByExternalUuid(externalUuid);
    print(result);
} catch (e) {
    print('Exception when calling DocumentApi->getDocumentByExternalUuid: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalUuid** | **String**|  | 

### Return type

[**DocumentDto**](DocumentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDocuments**
> List<DocumentDto> getDocuments(listOfIdsDto)

Gets a document

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.getDocuments(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling DocumentApi->getDocuments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<DocumentDto>**](DocumentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDocumentsByExternalUuid**
> List<DocumentDto> getDocumentsByExternalUuid(externalUuid)

Get all documents with externalUuid

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentApi();
final externalUuid = externalUuid_example; // String | 

try {
    final result = api_instance.getDocumentsByExternalUuid(externalUuid);
    print(result);
} catch (e) {
    print('Exception when calling DocumentApi->getDocumentsByExternalUuid: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalUuid** | **String**|  | 

### Return type

[**List<DocumentDto>**](DocumentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDocumentByTypeHCPartyMessageSecretFKeys**
> List<DocumentDto> listDocumentByTypeHCPartyMessageSecretFKeys(documentTypeCode, hcPartyId, secretFKeys)

List documents found By type, By Healthcare Party and secret foreign keys.

Keys must be delimited by coma

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentApi();
final documentTypeCode = documentTypeCode_example; // String | 
final hcPartyId = hcPartyId_example; // String | 
final secretFKeys = secretFKeys_example; // String | 

try {
    final result = api_instance.listDocumentByTypeHCPartyMessageSecretFKeys(documentTypeCode, hcPartyId, secretFKeys);
    print(result);
} catch (e) {
    print('Exception when calling DocumentApi->listDocumentByTypeHCPartyMessageSecretFKeys: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentTypeCode** | **String**|  | 
 **hcPartyId** | **String**|  | 
 **secretFKeys** | **String**|  | 

### Return type

[**List<DocumentDto>**](DocumentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDocumentsByHCPartyAndPatientForeignKeys**
> List<DocumentDto> listDocumentsByHCPartyAndPatientForeignKeys(hcPartyId, secretFKeys)

List documents found By Healthcare Party and secret foreign keys.

Keys must be delimited by coma

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentApi();
final hcPartyId = hcPartyId_example; // String | 
final secretFKeys = secretFKeys_example; // String | 

try {
    final result = api_instance.listDocumentsByHCPartyAndPatientForeignKeys(hcPartyId, secretFKeys);
    print(result);
} catch (e) {
    print('Exception when calling DocumentApi->listDocumentsByHCPartyAndPatientForeignKeys: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**|  | 
 **secretFKeys** | **String**|  | 

### Return type

[**List<DocumentDto>**](DocumentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyDocument**
> DocumentDto modifyDocument(documentDto)

Updates a document

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentApi();
final documentDto = DocumentDto(); // DocumentDto | 

try {
    final result = api_instance.modifyDocument(documentDto);
    print(result);
} catch (e) {
    print('Exception when calling DocumentApi->modifyDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentDto** | [**DocumentDto**](DocumentDto.md)|  | 

### Return type

[**DocumentDto**](DocumentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyDocuments**
> List<DocumentDto> modifyDocuments(documentDto)

Updates a batch of documents

Returns the modified documents.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentApi();
final documentDto = [List<DocumentDto>()]; // List<DocumentDto> | 

try {
    final result = api_instance.modifyDocuments(documentDto);
    print(result);
} catch (e) {
    print('Exception when calling DocumentApi->modifyDocuments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentDto** | [**List<DocumentDto>**](DocumentDto.md)|  | 

### Return type

[**List<DocumentDto>**](DocumentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setDocumentAttachment**
> DocumentDto setDocumentAttachment(documentId, body, enckeys)

Creates a document's attachment

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentApi();
final documentId = documentId_example; // String | 
final body = MultipartFile(); // MultipartFile | 
final enckeys = enckeys_example; // String | 

try {
    final result = api_instance.setDocumentAttachment(documentId, body, enckeys);
    print(result);
} catch (e) {
    print('Exception when calling DocumentApi->setDocumentAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **body** | **MultipartFile**|  | 
 **enckeys** | **String**|  | [optional] 

### Return type

[**DocumentDto**](DocumentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setDocumentAttachmentMulti**
> DocumentDto setDocumentAttachmentMulti(documentId, attachment, enckeys)

Creates a document's attachment

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentApi();
final documentId = documentId_example; // String | 
final attachment = BYTE_ARRAY_DATA_HERE; // String | 
final enckeys = enckeys_example; // String | 

try {
    final result = api_instance.setDocumentAttachmentMulti(documentId, attachment, enckeys);
    print(result);
} catch (e) {
    print('Exception when calling DocumentApi->setDocumentAttachmentMulti: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **attachment** | **String**|  | 
 **enckeys** | **String**|  | [optional] 

### Return type

[**DocumentDto**](DocumentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setDocumentsDelegations**
> List<IcureStubDto> setDocumentsDelegations(icureStubDto)

Update delegations in healthElements.

Keys must be delimited by coma

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentApi();
final icureStubDto = [List<IcureStubDto>()]; // List<IcureStubDto> | 

try {
    final result = api_instance.setDocumentsDelegations(icureStubDto);
    print(result);
} catch (e) {
    print('Exception when calling DocumentApi->setDocumentsDelegations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **icureStubDto** | [**List<IcureStubDto>**](IcureStubDto.md)|  | 

### Return type

[**List<IcureStubDto>**](IcureStubDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setSafeDocumentAttachment**
> DocumentDto setSafeDocumentAttachment(documentId, body, enckeys)

Creates a document's attachment

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentApi();
final documentId = documentId_example; // String | 
final body = MultipartFile(); // MultipartFile | 
final enckeys = enckeys_example; // String | 

try {
    final result = api_instance.setSafeDocumentAttachment(documentId, body, enckeys);
    print(result);
} catch (e) {
    print('Exception when calling DocumentApi->setSafeDocumentAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **body** | **MultipartFile**|  | 
 **enckeys** | **String**|  | [optional] 

### Return type

[**DocumentDto**](DocumentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

