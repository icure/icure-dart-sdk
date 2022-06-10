# icure_dart_sdk.api.DocumentTemplateApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDocumentTemplate**](DocumentTemplateApi.md#createdocumenttemplate) | **
POST** /rest/v1/doctemplate | Create a document template with the current user
[**deleteDocumentTemplates**](DocumentTemplateApi.md#deletedocumenttemplates) | **
POST** /rest/v1/doctemplate/delete/batch | Deletes document templates
[**getAttachmentText**](DocumentTemplateApi.md#getattachmenttext) | **
GET** /rest/v1/doctemplate/{documentTemplateId}/attachmentText/{attachmentId} | Download a the document template attachment
[**getDocumentTemplate**](DocumentTemplateApi.md#getdocumenttemplate) | **
GET** /rest/v1/doctemplate/{documentTemplateId} | Gets a document template
[**getDocumentTemplateAttachment**](DocumentTemplateApi.md#getdocumenttemplateattachment) | **
GET** /rest/v1/doctemplate/{documentTemplateId}/attachment/{attachmentId} | Download a the document template attachment
[**listAllDocumentTemplates**](DocumentTemplateApi.md#listalldocumenttemplates) | **
GET** /rest/v1/doctemplate/find/all | Gets all document templates for all users
[**listDocumentTemplates**](DocumentTemplateApi.md#listdocumenttemplates) | **
GET** /rest/v1/doctemplate | Gets all document templates for current user
[**listDocumentTemplatesByDocumentType**](DocumentTemplateApi.md#listdocumenttemplatesbydocumenttype) | **
GET** /rest/v1/doctemplate/byDocumentType/{documentTypeCode} | Gets all document templates by Type
[**
listDocumentTemplatesByDocumentTypeForCurrentUser**](DocumentTemplateApi.md#listdocumenttemplatesbydocumenttypeforcurrentuser) | **
GET** /rest/v1/doctemplate/byDocumentTypeForCurrentUser/{documentTypeCode} | Gets all document templates by Type For currentUser
[**listDocumentTemplatesBySpeciality**](DocumentTemplateApi.md#listdocumenttemplatesbyspeciality) | **
GET** /rest/v1/doctemplate/bySpecialty/{specialityCode} | Gets all document templates
[**modifyDocumentTemplate**](DocumentTemplateApi.md#modifydocumenttemplate) | **
PUT** /rest/v1/doctemplate/{documentTemplateId} | Modify a document template with the current user
[**setDocumentTemplateAttachment**](DocumentTemplateApi.md#setdocumenttemplateattachment) | **
PUT** /rest/v1/doctemplate/{documentTemplateId}/attachment | Creates a document's attachment
[**setDocumentTemplateAttachmentJson**](DocumentTemplateApi.md#setdocumenttemplateattachmentjson) | **
PUT** /rest/v1/doctemplate/{documentTemplateId}/attachmentJson | Creates a document's attachment


# **createDocumentTemplate**
> DocumentTemplateDto createDocumentTemplate(documentTemplateDto)

Create a document template with the current user

Returns an instance of created document template.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentTemplateApi();
final documentTemplateDto = DocumentTemplateDto(); // DocumentTemplateDto | 

try {
    final result = api_instance.createDocumentTemplate(documentTemplateDto);
    print(result);
} catch (e) {
    print('Exception when calling DocumentTemplateApi->createDocumentTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentTemplateDto** | [**DocumentTemplateDto**](DocumentTemplateDto.md)|  | 

### Return type

[**DocumentTemplateDto**](DocumentTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDocumentTemplates**
> List<DocIdentifier> deleteDocumentTemplates(listOfIdsDto)

Deletes document templates

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentTemplateApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.deleteDocumentTemplates(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling DocumentTemplateApi->deleteDocumentTemplates: $e\n');
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

# **getAttachmentText**
> MultipartFile getAttachmentText(documentTemplateId, attachmentId)

Download a the document template attachment

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentTemplateApi();
final documentTemplateId = documentTemplateId_example; // String | 
final attachmentId = attachmentId_example; // String | 

try {
    final result = api_instance.getAttachmentText(documentTemplateId, attachmentId);
    print(result);
} catch (e) {
    print('Exception when calling DocumentTemplateApi->getAttachmentText: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentTemplateId** | **String**|  | 
 **attachmentId** | **String**|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDocumentTemplate**
> DocumentTemplateDto getDocumentTemplate(documentTemplateId)

Gets a document template

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentTemplateApi();
final documentTemplateId = documentTemplateId_example; // String | 

try {
    final result = api_instance.getDocumentTemplate(documentTemplateId);
    print(result);
} catch (e) {
    print('Exception when calling DocumentTemplateApi->getDocumentTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentTemplateId** | **String**|  | 

### Return type

[**DocumentTemplateDto**](DocumentTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDocumentTemplateAttachment**
> MultipartFile getDocumentTemplateAttachment(documentTemplateId, attachmentId)

Download a the document template attachment

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentTemplateApi();
final documentTemplateId = documentTemplateId_example; // String | 
final attachmentId = attachmentId_example; // String | 

try {
    final result = api_instance.getDocumentTemplateAttachment(documentTemplateId, attachmentId);
    print(result);
} catch (e) {
    print('Exception when calling DocumentTemplateApi->getDocumentTemplateAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentTemplateId** | **String**|  | 
 **attachmentId** | **String**|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAllDocumentTemplates**
> List<DocumentTemplateDto> listAllDocumentTemplates()

Gets all document templates for all users

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentTemplateApi();

try {
    final result = api_instance.listAllDocumentTemplates();
    print(result);
} catch (e) {
    print('Exception when calling DocumentTemplateApi->listAllDocumentTemplates: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<DocumentTemplateDto>**](DocumentTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDocumentTemplates**
> List<DocumentTemplateDto> listDocumentTemplates()

Gets all document templates for current user

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentTemplateApi();

try {
    final result = api_instance.listDocumentTemplates();
    print(result);
} catch (e) {
    print('Exception when calling DocumentTemplateApi->listDocumentTemplates: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<DocumentTemplateDto>**](DocumentTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDocumentTemplatesByDocumentType**
> List<DocumentTemplateDto> listDocumentTemplatesByDocumentType(documentTypeCode)

Gets all document templates by Type

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentTemplateApi();
final documentTypeCode = documentTypeCode_example; // String | 

try {
    final result = api_instance.listDocumentTemplatesByDocumentType(documentTypeCode);
    print(result);
} catch (e) {
    print('Exception when calling DocumentTemplateApi->listDocumentTemplatesByDocumentType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentTypeCode** | **String**|  | 

### Return type

[**List<DocumentTemplateDto>**](DocumentTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDocumentTemplatesByDocumentTypeForCurrentUser**
> List<DocumentTemplateDto> listDocumentTemplatesByDocumentTypeForCurrentUser(documentTypeCode)

Gets all document templates by Type For currentUser

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentTemplateApi();
final documentTypeCode = documentTypeCode_example; // String | 

try {
    final result = api_instance.listDocumentTemplatesByDocumentTypeForCurrentUser(documentTypeCode);
    print(result);
} catch (e) {
    print('Exception when calling DocumentTemplateApi->listDocumentTemplatesByDocumentTypeForCurrentUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentTypeCode** | **String**|  | 

### Return type

[**List<DocumentTemplateDto>**](DocumentTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDocumentTemplatesBySpeciality**
> List<DocumentTemplateDto> listDocumentTemplatesBySpeciality(specialityCode)

Gets all document templates

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentTemplateApi();
final specialityCode = specialityCode_example; // String | 

try {
    final result = api_instance.listDocumentTemplatesBySpeciality(specialityCode);
    print(result);
} catch (e) {
    print('Exception when calling DocumentTemplateApi->listDocumentTemplatesBySpeciality: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **specialityCode** | **String**|  | 

### Return type

[**List<DocumentTemplateDto>**](DocumentTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyDocumentTemplate**
> DocumentTemplateDto modifyDocumentTemplate(documentTemplateId, documentTemplateDto)

Modify a document template with the current user

Returns an instance of created document template.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentTemplateApi();
final documentTemplateId = documentTemplateId_example; // String | 
final documentTemplateDto = DocumentTemplateDto(); // DocumentTemplateDto | 

try {
    final result = api_instance.modifyDocumentTemplate(documentTemplateId, documentTemplateDto);
    print(result);
} catch (e) {
    print('Exception when calling DocumentTemplateApi->modifyDocumentTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentTemplateId** | **String**|  | 
 **documentTemplateDto** | [**DocumentTemplateDto**](DocumentTemplateDto.md)|  | 

### Return type

[**DocumentTemplateDto**](DocumentTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setDocumentTemplateAttachment**
> DocumentTemplateDto setDocumentTemplateAttachment(documentTemplateId, requestBody)

Creates a document's attachment

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentTemplateApi();
final documentTemplateId = documentTemplateId_example; // String | 
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.setDocumentTemplateAttachment(documentTemplateId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling DocumentTemplateApi->setDocumentTemplateAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentTemplateId** | **String**|  | 
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**DocumentTemplateDto**](DocumentTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setDocumentTemplateAttachmentJson**
> DocumentTemplateDto setDocumentTemplateAttachmentJson(documentTemplateId, byteArrayDto)

Creates a document's attachment

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = DocumentTemplateApi();
final documentTemplateId = documentTemplateId_example; // String | 
final byteArrayDto = ByteArrayDto(); // ByteArrayDto | 

try {
    final result = api_instance.setDocumentTemplateAttachmentJson(documentTemplateId, byteArrayDto);
    print(result);
} catch (e) {
    print('Exception when calling DocumentTemplateApi->setDocumentTemplateAttachmentJson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentTemplateId** | **String**|  | 
 **byteArrayDto** | [**ByteArrayDto**](ByteArrayDto.md)|  | 

### Return type

[**DocumentTemplateDto**](DocumentTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

