# icure_dart_sdk.api.FormApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createForm**](FormApi.md#createform) | **POST** /rest/v2/form | Create a form with the current user
[**createFormTemplate**](FormApi.md#createformtemplate) | **POST** /rest/v2/form/template | Create a form template with the current user
[**createForms**](FormApi.md#createforms) | **POST** /rest/v2/form/batch | Create a batch of forms
[**deleteFormTemplate**](FormApi.md#deleteformtemplate) | **DELETE** /rest/v2/form/template/{formTemplateId} | Delete a form template
[**deleteForms**](FormApi.md#deleteforms) | **POST** /rest/v2/form/delete/batch | Delete forms.
[**getChildrenForms**](FormApi.md#getchildrenforms) | **GET** /rest/v2/form/childrenOf/{formId}/{hcPartyId} | Get a list of forms by parents ids
[**getForm**](FormApi.md#getform) | **GET** /rest/v2/form/{formId} | Gets a form
[**getFormByLogicalUuid**](FormApi.md#getformbylogicaluuid) | **GET** /rest/v2/form/logicalUuid/{logicalUuid} | Gets the most recent form with the given logicalUuid
[**getFormByUniqueId**](FormApi.md#getformbyuniqueid) | **GET** /rest/v2/form/uniqueId/{uniqueId} | Gets the most recent form with the given uniqueId
[**getFormTemplate**](FormApi.md#getformtemplate) | **GET** /rest/v2/form/template/{formTemplateId} | Gets a form template by guid
[**getFormTemplates**](FormApi.md#getformtemplates) | **GET** /rest/v2/form/template | Gets all form templates for current user
[**getFormTemplatesByGuid**](FormApi.md#getformtemplatesbyguid) | **GET** /rest/v2/form/template/{specialityCode}/guid/{formTemplateGuid} | Gets a form template
[**getForms**](FormApi.md#getforms) | **POST** /rest/v2/form/byIds | Get a list of forms by ids
[**getFormsByLogicalUuid**](FormApi.md#getformsbylogicaluuid) | **GET** /rest/v2/form/all/logicalUuid/{logicalUuid} | Gets all forms with given logicalUuid
[**getFormsByUniqueId**](FormApi.md#getformsbyuniqueid) | **GET** /rest/v2/form/all/uniqueId/{uniqueId} | Gets all forms by uniqueId
[**listFormTemplatesBySpeciality**](FormApi.md#listformtemplatesbyspeciality) | **GET** /rest/v2/form/template/bySpecialty/{specialityCode} | Gets all form templates
[**listFormsByHCPartyAndPatientForeignKeys**](FormApi.md#listformsbyhcpartyandpatientforeignkeys) | **GET** /rest/v2/form/byHcPartySecretForeignKeys | List forms found By Healthcare Party and secret foreign keys.
[**listFormsDelegationsStubsByHCPartyAndPatientForeignKeys**](FormApi.md#listformsdelegationsstubsbyhcpartyandpatientforeignkeys) | **GET** /rest/v2/form/byHcPartySecretForeignKeys/delegations | List form stubs found By Healthcare Party and secret foreign keys.
[**modifyForm**](FormApi.md#modifyform) | **PUT** /rest/v2/form | Modify a form
[**modifyForms**](FormApi.md#modifyforms) | **PUT** /rest/v2/form/batch | Modify a batch of forms
[**newFormDelegations**](FormApi.md#newformdelegations) | **POST** /rest/v2/form/delegate/{formId} | Delegates a form to a healthcare party
[**setFormsDelegations**](FormApi.md#setformsdelegations) | **POST** /rest/v2/form/delegations | Update delegations in form.
[**setTemplateAttachmentMulti**](FormApi.md#settemplateattachmentmulti) | **PUT** /rest/v2/form/template/{formTemplateId}/attachment/multipart | Update a form template's layout
[**updateFormTemplate**](FormApi.md#updateformtemplate) | **PUT** /rest/v2/form/template/{formTemplateId} | Modify a form template with the current user


# **createForm**
> FormDto createForm(formDto)

Create a form with the current user

Returns an instance of created form.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final formDto = FormDto(); // FormDto | 

try {
    final result = api_instance.createForm(formDto);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->createForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formDto** | [**FormDto**](FormDto.md)|  | 

### Return type

[**FormDto**](FormDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createFormTemplate**
> FormTemplateDto createFormTemplate(formTemplateDto)

Create a form template with the current user

Returns an instance of created form template.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final formTemplateDto = FormTemplateDto(); // FormTemplateDto | 

try {
    final result = api_instance.createFormTemplate(formTemplateDto);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->createFormTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formTemplateDto** | [**FormTemplateDto**](FormTemplateDto.md)|  | 

### Return type

[**FormTemplateDto**](FormTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createForms**
> List<FormDto> createForms(formDto)

Create a batch of forms

Returns the created forms.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final formDto = [List<FormDto>()]; // List<FormDto> | 

try {
    final result = api_instance.createForms(formDto);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->createForms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formDto** | [**List<FormDto>**](FormDto.md)|  | 

### Return type

[**List<FormDto>**](FormDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFormTemplate**
> DocIdentifier deleteFormTemplate(formTemplateId)

Delete a form template

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final formTemplateId = formTemplateId_example; // String | 

try {
    final result = api_instance.deleteFormTemplate(formTemplateId);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->deleteFormTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formTemplateId** | **String**|  | 

### Return type

[**DocIdentifier**](DocIdentifier.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteForms**
> List<DocIdentifier> deleteForms(listOfIdsDto)

Delete forms.

Response is a set containing the ID's of deleted forms.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.deleteForms(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->deleteForms: $e\n');
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

# **getChildrenForms**
> List<FormDto> getChildrenForms(formId, hcPartyId)

Get a list of forms by parents ids

Keys must be delimited by coma

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final formId = formId_example; // String | 
final hcPartyId = hcPartyId_example; // String | 

try {
    final result = api_instance.getChildrenForms(formId, hcPartyId);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->getChildrenForms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formId** | **String**|  | 
 **hcPartyId** | **String**|  | 

### Return type

[**List<FormDto>**](FormDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getForm**
> FormDto getForm(formId)

Gets a form

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final formId = formId_example; // String | 

try {
    final result = api_instance.getForm(formId);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->getForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formId** | **String**|  | 

### Return type

[**FormDto**](FormDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFormByLogicalUuid**
> FormDto getFormByLogicalUuid(logicalUuid)

Gets the most recent form with the given logicalUuid

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final logicalUuid = logicalUuid_example; // String | 

try {
    final result = api_instance.getFormByLogicalUuid(logicalUuid);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->getFormByLogicalUuid: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **logicalUuid** | **String**|  | 

### Return type

[**FormDto**](FormDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFormByUniqueId**
> FormDto getFormByUniqueId(uniqueId)

Gets the most recent form with the given uniqueId

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final uniqueId = uniqueId_example; // String | 

try {
    final result = api_instance.getFormByUniqueId(uniqueId);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->getFormByUniqueId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uniqueId** | **String**|  | 

### Return type

[**FormDto**](FormDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFormTemplate**
> FormTemplateDto getFormTemplate(formTemplateId)

Gets a form template by guid

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final formTemplateId = formTemplateId_example; // String | 

try {
    final result = api_instance.getFormTemplate(formTemplateId);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->getFormTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formTemplateId** | **String**|  | 

### Return type

[**FormTemplateDto**](FormTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFormTemplates**
> List<FormTemplateDto> getFormTemplates(loadLayout)

Gets all form templates for current user

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final loadLayout = true; // bool | 

try {
    final result = api_instance.getFormTemplates(loadLayout);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->getFormTemplates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loadLayout** | **bool**|  | [optional] 

### Return type

[**List<FormTemplateDto>**](FormTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFormTemplatesByGuid**
> List<FormTemplateDto> getFormTemplatesByGuid(formTemplateGuid, specialityCode)

Gets a form template

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final formTemplateGuid = formTemplateGuid_example; // String | 
final specialityCode = specialityCode_example; // String | 

try {
    final result = api_instance.getFormTemplatesByGuid(formTemplateGuid, specialityCode);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->getFormTemplatesByGuid: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formTemplateGuid** | **String**|  | 
 **specialityCode** | **String**|  | 

### Return type

[**List<FormTemplateDto>**](FormTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getForms**
> List<FormDto> getForms(listOfIdsDto)

Get a list of forms by ids

Keys must be delimited by coma

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.getForms(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->getForms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<FormDto>**](FormDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFormsByLogicalUuid**
> List<FormDto> getFormsByLogicalUuid(logicalUuid)

Gets all forms with given logicalUuid

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final logicalUuid = logicalUuid_example; // String | 

try {
    final result = api_instance.getFormsByLogicalUuid(logicalUuid);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->getFormsByLogicalUuid: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **logicalUuid** | **String**|  | 

### Return type

[**List<FormDto>**](FormDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFormsByUniqueId**
> List<FormDto> getFormsByUniqueId(uniqueId)

Gets all forms by uniqueId

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final uniqueId = uniqueId_example; // String | 

try {
    final result = api_instance.getFormsByUniqueId(uniqueId);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->getFormsByUniqueId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uniqueId** | **String**|  | 

### Return type

[**List<FormDto>**](FormDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFormTemplatesBySpeciality**
> List<FormTemplateDto> listFormTemplatesBySpeciality(specialityCode, loadLayout)

Gets all form templates

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final specialityCode = specialityCode_example; // String | 
final loadLayout = true; // bool | 

try {
    final result = api_instance.listFormTemplatesBySpeciality(specialityCode, loadLayout);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->listFormTemplatesBySpeciality: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **specialityCode** | **String**|  | 
 **loadLayout** | **bool**|  | [optional] 

### Return type

[**List<FormTemplateDto>**](FormTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFormsByHCPartyAndPatientForeignKeys**
> List<FormDto> listFormsByHCPartyAndPatientForeignKeys(hcPartyId, secretFKeys, healthElementId, planOfActionId, formTemplateId)

List forms found By Healthcare Party and secret foreign keys.

Keys must be delimited by coma

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final hcPartyId = hcPartyId_example; // String | 
final secretFKeys = secretFKeys_example; // String | 
final healthElementId = healthElementId_example; // String | 
final planOfActionId = planOfActionId_example; // String | 
final formTemplateId = formTemplateId_example; // String | 

try {
    final result = api_instance.listFormsByHCPartyAndPatientForeignKeys(hcPartyId, secretFKeys, healthElementId, planOfActionId, formTemplateId);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->listFormsByHCPartyAndPatientForeignKeys: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**|  | 
 **secretFKeys** | **String**|  | 
 **healthElementId** | **String**|  | [optional] 
 **planOfActionId** | **String**|  | [optional] 
 **formTemplateId** | **String**|  | [optional] 

### Return type

[**List<FormDto>**](FormDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFormsDelegationsStubsByHCPartyAndPatientForeignKeys**
> List<IcureStubDto> listFormsDelegationsStubsByHCPartyAndPatientForeignKeys(hcPartyId, secretFKeys)

List form stubs found By Healthcare Party and secret foreign keys.

Keys must be delimited by coma

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final hcPartyId = hcPartyId_example; // String | 
final secretFKeys = secretFKeys_example; // String | 

try {
    final result = api_instance.listFormsDelegationsStubsByHCPartyAndPatientForeignKeys(hcPartyId, secretFKeys);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->listFormsDelegationsStubsByHCPartyAndPatientForeignKeys: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**|  | 
 **secretFKeys** | **String**|  | 

### Return type

[**List<IcureStubDto>**](IcureStubDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyForm**
> FormDto modifyForm(formDto)

Modify a form

Returns the modified form.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final formDto = FormDto(); // FormDto | 

try {
    final result = api_instance.modifyForm(formDto);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->modifyForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formDto** | [**FormDto**](FormDto.md)|  | 

### Return type

[**FormDto**](FormDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyForms**
> List<FormDto> modifyForms(formDto)

Modify a batch of forms

Returns the modified forms.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final formDto = [List<FormDto>()]; // List<FormDto> | 

try {
    final result = api_instance.modifyForms(formDto);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->modifyForms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formDto** | [**List<FormDto>**](FormDto.md)|  | 

### Return type

[**List<FormDto>**](FormDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newFormDelegations**
> FormDto newFormDelegations(formId, delegationDto)

Delegates a form to a healthcare party

It delegates a form to a healthcare party. Returns the form with the new delegations.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final formId = formId_example; // String | 
final delegationDto = [List<DelegationDto>()]; // List<DelegationDto> | 

try {
    final result = api_instance.newFormDelegations(formId, delegationDto);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->newFormDelegations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formId** | **String**|  | 
 **delegationDto** | [**List<DelegationDto>**](DelegationDto.md)|  | 

### Return type

[**FormDto**](FormDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setFormsDelegations**
> List<IcureStubDto> setFormsDelegations(icureStubDto)

Update delegations in form.

Keys must be delimited by coma

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final icureStubDto = [List<IcureStubDto>()]; // List<IcureStubDto> | 

try {
    final result = api_instance.setFormsDelegations(icureStubDto);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->setFormsDelegations: $e\n');
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

# **setTemplateAttachmentMulti**
> String setTemplateAttachmentMulti(formTemplateId, attachment)

Update a form template's layout

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final formTemplateId = formTemplateId_example; // String | 
final attachment = BYTE_ARRAY_DATA_HERE; // String | 

try {
    final result = api_instance.setTemplateAttachmentMulti(formTemplateId, attachment);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->setTemplateAttachmentMulti: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formTemplateId** | **String**|  | 
 **attachment** | **String**|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFormTemplate**
> FormTemplateDto updateFormTemplate(formTemplateId, formTemplateDto)

Modify a form template with the current user

Returns an instance of created form template.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = FormApi();
final formTemplateId = formTemplateId_example; // String | 
final formTemplateDto = FormTemplateDto(); // FormTemplateDto | 

try {
    final result = api_instance.updateFormTemplate(formTemplateId, formTemplateDto);
    print(result);
} catch (e) {
    print('Exception when calling FormApi->updateFormTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formTemplateId** | **String**|  | 
 **formTemplateDto** | [**FormTemplateDto**](FormTemplateDto.md)|  | 

### Return type

[**FormTemplateDto**](FormTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

