# openapi.api.ClassificationTemplateApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createClassificationTemplate**](ClassificationTemplateApi.md#createclassificationtemplate) | **POST** /rest/v2/classificationTemplate | Create a classification Template with the current user
[**deleteClassificationTemplates**](ClassificationTemplateApi.md#deleteclassificationtemplates) | **POST** /rest/v2/classificationTemplate/delete/batch | Delete classification Templates.
[**findClassificationTemplatesBy**](ClassificationTemplateApi.md#findclassificationtemplatesby) | **GET** /rest/v2/classificationTemplate | List all classification templates with pagination
[**getClassificationTemplate**](ClassificationTemplateApi.md#getclassificationtemplate) | **GET** /rest/v2/classificationTemplate/{classificationTemplateId} | Get a classification Template
[**getClassificationTemplateByIds**](ClassificationTemplateApi.md#getclassificationtemplatebyids) | **GET** /rest/v2/classificationTemplate/byIds/{ids} | Get a list of classifications Templates
[**listClassificationTemplatesByHCPartyPatientForeignKeys**](ClassificationTemplateApi.md#listclassificationtemplatesbyhcpartypatientforeignkeys) | **GET** /rest/v2/classificationTemplate/byHcPartySecretForeignKeys | List classification Templates found By Healthcare Party and secret foreign keyelementIds.
[**modifyClassificationTemplate**](ClassificationTemplateApi.md#modifyclassificationtemplate) | **PUT** /rest/v2/classificationTemplate | Modify a classification Template
[**newClassificationTemplateDelegations**](ClassificationTemplateApi.md#newclassificationtemplatedelegations) | **POST** /rest/v2/classificationTemplate/{classificationTemplateId}/delegate | Delegates a classification Template to a healthcare party


# **createClassificationTemplate**
> ClassificationTemplateDto createClassificationTemplate(classificationTemplateDto)

Create a classification Template with the current user

Returns an instance of created classification Template.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ClassificationTemplateApi();
final classificationTemplateDto = ClassificationTemplateDto(); // ClassificationTemplateDto | 

try {
    final result = api_instance.createClassificationTemplate(classificationTemplateDto);
    print(result);
} catch (e) {
    print('Exception when calling ClassificationTemplateApi->createClassificationTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classificationTemplateDto** | [**ClassificationTemplateDto**](ClassificationTemplateDto.md)|  | 

### Return type

[**ClassificationTemplateDto**](ClassificationTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteClassificationTemplates**
> List<DocIdentifier> deleteClassificationTemplates(listOfIdsDto)

Delete classification Templates.

Response is a set containing the ID's of deleted classification Templates.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ClassificationTemplateApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.deleteClassificationTemplates(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling ClassificationTemplateApi->deleteClassificationTemplates: $e\n');
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

# **findClassificationTemplatesBy**
> PaginatedListClassificationTemplateDto findClassificationTemplatesBy(startKey, startDocumentId, limit)

List all classification templates with pagination

Returns a list of classification templates.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ClassificationTemplateApi();
final startKey = startKey_example; // String | A label
final startDocumentId = startDocumentId_example; // String | An classification template document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findClassificationTemplatesBy(startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling ClassificationTemplateApi->findClassificationTemplatesBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startKey** | **String**| A label | [optional] 
 **startDocumentId** | **String**| An classification template document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListClassificationTemplateDto**](PaginatedListClassificationTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClassificationTemplate**
> ClassificationTemplateDto getClassificationTemplate(classificationTemplateId)

Get a classification Template

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ClassificationTemplateApi();
final classificationTemplateId = classificationTemplateId_example; // String | 

try {
    final result = api_instance.getClassificationTemplate(classificationTemplateId);
    print(result);
} catch (e) {
    print('Exception when calling ClassificationTemplateApi->getClassificationTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classificationTemplateId** | **String**|  | 

### Return type

[**ClassificationTemplateDto**](ClassificationTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClassificationTemplateByIds**
> List<ClassificationTemplateDto> getClassificationTemplateByIds(ids)

Get a list of classifications Templates

Ids are seperated by a coma

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ClassificationTemplateApi();
final ids = ids_example; // String | 

try {
    final result = api_instance.getClassificationTemplateByIds(ids);
    print(result);
} catch (e) {
    print('Exception when calling ClassificationTemplateApi->getClassificationTemplateByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **String**|  | 

### Return type

[**List<ClassificationTemplateDto>**](ClassificationTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listClassificationTemplatesByHCPartyPatientForeignKeys**
> List<ClassificationTemplateDto> listClassificationTemplatesByHCPartyPatientForeignKeys(hcPartyId, secretFKeys)

List classification Templates found By Healthcare Party and secret foreign keyelementIds.

Keys hast to delimited by coma

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ClassificationTemplateApi();
final hcPartyId = hcPartyId_example; // String | 
final secretFKeys = secretFKeys_example; // String | 

try {
    final result = api_instance.listClassificationTemplatesByHCPartyPatientForeignKeys(hcPartyId, secretFKeys);
    print(result);
} catch (e) {
    print('Exception when calling ClassificationTemplateApi->listClassificationTemplatesByHCPartyPatientForeignKeys: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**|  | 
 **secretFKeys** | **String**|  | 

### Return type

[**List<ClassificationTemplateDto>**](ClassificationTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyClassificationTemplate**
> ClassificationTemplateDto modifyClassificationTemplate(classificationTemplateDto)

Modify a classification Template

Returns the modified classification Template.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ClassificationTemplateApi();
final classificationTemplateDto = ClassificationTemplateDto(); // ClassificationTemplateDto | 

try {
    final result = api_instance.modifyClassificationTemplate(classificationTemplateDto);
    print(result);
} catch (e) {
    print('Exception when calling ClassificationTemplateApi->modifyClassificationTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classificationTemplateDto** | [**ClassificationTemplateDto**](ClassificationTemplateDto.md)|  | 

### Return type

[**ClassificationTemplateDto**](ClassificationTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newClassificationTemplateDelegations**
> ClassificationTemplateDto newClassificationTemplateDelegations(classificationTemplateId, delegationDto)

Delegates a classification Template to a healthcare party

It delegates a classification Template to a healthcare party (By current healthcare party). Returns the element with new delegations.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ClassificationTemplateApi();
final classificationTemplateId = classificationTemplateId_example; // String | 
final delegationDto = [List<DelegationDto>()]; // List<DelegationDto> | 

try {
    final result = api_instance.newClassificationTemplateDelegations(classificationTemplateId, delegationDto);
    print(result);
} catch (e) {
    print('Exception when calling ClassificationTemplateApi->newClassificationTemplateDelegations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classificationTemplateId** | **String**|  | 
 **delegationDto** | [**List<DelegationDto>**](DelegationDto.md)|  | 

### Return type

[**ClassificationTemplateDto**](ClassificationTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

