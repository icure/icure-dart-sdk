# openapi.api.ClassificationApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createClassification**](ClassificationApi.md#createclassification) | **POST** /rest/v2/classification | Create a classification with the current user
[**deleteClassifications**](ClassificationApi.md#deleteclassifications) | **POST** /rest/v2/classification/delete/batch | Delete classification Templates.
[**findClassificationsByHCPartyPatientForeignKeys**](ClassificationApi.md#findclassificationsbyhcpartypatientforeignkeys) | **GET** /rest/v2/classification/byHcPartySecretForeignKeys | List classification Templates found By Healthcare Party and secret foreign keyelementIds.
[**getClassification**](ClassificationApi.md#getclassification) | **GET** /rest/v2/classification/{classificationId} | Get a classification Template
[**getClassificationByHcPartyId**](ClassificationApi.md#getclassificationbyhcpartyid) | **GET** /rest/v2/classification/byIds/{ids} | Get a list of classifications
[**modifyClassification**](ClassificationApi.md#modifyclassification) | **PUT** /rest/v2/classification | Modify a classification Template
[**newClassificationDelegations**](ClassificationApi.md#newclassificationdelegations) | **POST** /rest/v2/classification/{classificationId}/delegate | Delegates a classification to a healthcare party
[**setClassificationsDelegations**](ClassificationApi.md#setclassificationsdelegations) | **POST** /rest/v2/classification/delegations | Update delegations in classification


# **createClassification**
> ClassificationDto createClassification(classificationDto)

Create a classification with the current user

Returns an instance of created classification Template.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ClassificationApi();
final classificationDto = ClassificationDto(); // ClassificationDto | 

try {
    final result = api_instance.createClassification(classificationDto);
    print(result);
} catch (e) {
    print('Exception when calling ClassificationApi->createClassification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classificationDto** | [**ClassificationDto**](ClassificationDto.md)|  | 

### Return type

[**ClassificationDto**](ClassificationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteClassifications**
> List<DocIdentifier> deleteClassifications(listOfIdsDto)

Delete classification Templates.

Response is a set containing the ID's of deleted classification Templates.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ClassificationApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.deleteClassifications(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling ClassificationApi->deleteClassifications: $e\n');
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

# **findClassificationsByHCPartyPatientForeignKeys**
> List<ClassificationDto> findClassificationsByHCPartyPatientForeignKeys(hcPartyId, secretFKeys)

List classification Templates found By Healthcare Party and secret foreign keyelementIds.

Keys hast to delimited by coma

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ClassificationApi();
final hcPartyId = hcPartyId_example; // String | 
final secretFKeys = secretFKeys_example; // String | 

try {
    final result = api_instance.findClassificationsByHCPartyPatientForeignKeys(hcPartyId, secretFKeys);
    print(result);
} catch (e) {
    print('Exception when calling ClassificationApi->findClassificationsByHCPartyPatientForeignKeys: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**|  | 
 **secretFKeys** | **String**|  | 

### Return type

[**List<ClassificationDto>**](ClassificationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClassification**
> ClassificationDto getClassification(classificationId)

Get a classification Template

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ClassificationApi();
final classificationId = classificationId_example; // String | 

try {
    final result = api_instance.getClassification(classificationId);
    print(result);
} catch (e) {
    print('Exception when calling ClassificationApi->getClassification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classificationId** | **String**|  | 

### Return type

[**ClassificationDto**](ClassificationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClassificationByHcPartyId**
> List<ClassificationDto> getClassificationByHcPartyId(ids)

Get a list of classifications

Ids are seperated by a coma

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ClassificationApi();
final ids = ids_example; // String | 

try {
    final result = api_instance.getClassificationByHcPartyId(ids);
    print(result);
} catch (e) {
    print('Exception when calling ClassificationApi->getClassificationByHcPartyId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **String**|  | 

### Return type

[**List<ClassificationDto>**](ClassificationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyClassification**
> ClassificationDto modifyClassification(classificationDto)

Modify a classification Template

Returns the modified classification Template.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ClassificationApi();
final classificationDto = ClassificationDto(); // ClassificationDto | 

try {
    final result = api_instance.modifyClassification(classificationDto);
    print(result);
} catch (e) {
    print('Exception when calling ClassificationApi->modifyClassification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classificationDto** | [**ClassificationDto**](ClassificationDto.md)|  | 

### Return type

[**ClassificationDto**](ClassificationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newClassificationDelegations**
> ClassificationDto newClassificationDelegations(classificationId, delegationDto)

Delegates a classification to a healthcare party

It delegates a classification to a healthcare party (By current healthcare party). Returns the element with new delegations.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ClassificationApi();
final classificationId = classificationId_example; // String | 
final delegationDto = [List<DelegationDto>()]; // List<DelegationDto> | 

try {
    final result = api_instance.newClassificationDelegations(classificationId, delegationDto);
    print(result);
} catch (e) {
    print('Exception when calling ClassificationApi->newClassificationDelegations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classificationId** | **String**|  | 
 **delegationDto** | [**List<DelegationDto>**](DelegationDto.md)|  | 

### Return type

[**ClassificationDto**](ClassificationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setClassificationsDelegations**
> List<IcureStubDto> setClassificationsDelegations(icureStubDto)

Update delegations in classification

Keys must be delimited by coma

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ClassificationApi();
final icureStubDto = [List<IcureStubDto>()]; // List<IcureStubDto> | 

try {
    final result = api_instance.setClassificationsDelegations(icureStubDto);
    print(result);
} catch (e) {
    print('Exception when calling ClassificationApi->setClassificationsDelegations: $e\n');
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

