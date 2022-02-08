# openapi.api.ContactApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**closeForHCPartyPatientForeignKeys**](ContactApi.md#closeforhcpartypatientforeignkeys) | **PUT** /rest/v2/contact/byHcPartySecretForeignKeys/close | Close contacts for Healthcare Party and secret foreign keys.
[**createContact**](ContactApi.md#createcontact) | **POST** /rest/v2/contact | Create a contact with the current user
[**createContacts**](ContactApi.md#createcontacts) | **POST** /rest/v2/contact/batch | Create a batch of contacts
[**deleteContacts**](ContactApi.md#deletecontacts) | **POST** /rest/v2/contact/delete/batch | Delete contacts.
[**filterContactsBy**](ContactApi.md#filtercontactsby) | **POST** /rest/v2/contact/filter | List contacts for the current user (HcParty) or the given hcparty in the filter 
[**filterServicesBy**](ContactApi.md#filterservicesby) | **POST** /rest/v2/contact/service/filter | List services for the current user (HcParty) or the given hcparty in the filter 
[**findContactsByOpeningDate**](ContactApi.md#findcontactsbyopeningdate) | **GET** /rest/v2/contact/byOpeningDate | List contacts by opening date parties with(out) pagination
[**getContact**](ContactApi.md#getcontact) | **GET** /rest/v2/contact/{contactId} | Get a contact
[**getContacts**](ContactApi.md#getcontacts) | **POST** /rest/v2/contact/byIds | Get contacts
[**getEmptyContent**](ContactApi.md#getemptycontent) | **GET** /rest/v2/contact/service/content/empty | Get an empty content
[**getServiceCodesOccurences**](ContactApi.md#getservicecodesoccurences) | **GET** /rest/v2/contact/service/codes/{codeType}/{minOccurences} | Get the list of all used codes frequencies in services
[**getServices**](ContactApi.md#getservices) | **POST** /rest/v2/contact/service | List services with provided ids 
[**getServicesLinkedTo**](ContactApi.md#getserviceslinkedto) | **POST** /rest/v2/contact/service/linkedTo | List services linked to provided ids 
[**listContactByHCPartyServiceId**](ContactApi.md#listcontactbyhcpartyserviceid) | **GET** /rest/v2/contact/byHcPartyServiceId | List contacts found By Healthcare Party and service Id.
[**listContactsByExternalId**](ContactApi.md#listcontactsbyexternalid) | **POST** /rest/v2/contact/byExternalId | List contacts found By externalId.
[**listContactsByHCPartyAndFormId**](ContactApi.md#listcontactsbyhcpartyandformid) | **GET** /rest/v2/contact/byHcPartyFormId | List contacts found By Healthcare Party and form Id.
[**listContactsByHCPartyAndFormIds**](ContactApi.md#listcontactsbyhcpartyandformids) | **POST** /rest/v2/contact/byHcPartyFormIds | List contacts found By Healthcare Party and form Id.
[**listContactsByHCPartyAndPatientForeignKeys**](ContactApi.md#listcontactsbyhcpartyandpatientforeignkeys) | **POST** /rest/v2/contact/byHcPartyPatientForeignKeys | List contacts found By Healthcare Party and Patient foreign keys.
[**listContactsByHCPartyAndPatientSecretFKeys**](ContactApi.md#listcontactsbyhcpartyandpatientsecretfkeys) | **GET** /rest/v2/contact/byHcPartySecretForeignKeys | List contacts found By Healthcare Party and secret foreign keys.
[**listContactsDelegationsStubsByHCPartyAndPatientForeignKeys**](ContactApi.md#listcontactsdelegationsstubsbyhcpartyandpatientforeignkeys) | **GET** /rest/v2/contact/byHcPartySecretForeignKeys/delegations | List contacts found By Healthcare Party and secret foreign keys.
[**listServicesByAssociationId**](ContactApi.md#listservicesbyassociationid) | **GET** /rest/v2/contact/service/associationId | List services by related association id
[**listServicesByHealthElementId**](ContactApi.md#listservicesbyhealthelementid) | **GET** /rest/v2/contact/service/healthElementId/{healthElementId} | List services linked to a health element
[**matchContactsBy**](ContactApi.md#matchcontactsby) | **POST** /rest/v2/contact/match | Get ids of contacts matching the provided filter for the current user (HcParty) 
[**modifyContact**](ContactApi.md#modifycontact) | **PUT** /rest/v2/contact | Modify a contact
[**modifyContacts**](ContactApi.md#modifycontacts) | **PUT** /rest/v2/contact/batch | Modify a batch of contacts
[**modifyContactsDelegations**](ContactApi.md#modifycontactsdelegations) | **PUT** /rest/v2/contact/delegations | Update delegations in healthElements.
[**newContactDelegations**](ContactApi.md#newcontactdelegations) | **POST** /rest/v2/contact/{contactId}/delegate | Delegates a contact to a healthcare party
[**setContactsDelegations**](ContactApi.md#setcontactsdelegations) | **POST** /rest/v2/contact/delegations | Update delegations in healthElements.


# **closeForHCPartyPatientForeignKeys**
> List<ContactDto> closeForHCPartyPatientForeignKeys(hcPartyId, secretFKeys)

Close contacts for Healthcare Party and secret foreign keys.

Keys must be delimited by coma

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final hcPartyId = hcPartyId_example; // String | 
final secretFKeys = secretFKeys_example; // String | 

try {
    final result = api_instance.closeForHCPartyPatientForeignKeys(hcPartyId, secretFKeys);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->closeForHCPartyPatientForeignKeys: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**|  | 
 **secretFKeys** | **String**|  | 

### Return type

[**List<ContactDto>**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createContact**
> ContactDto createContact(contactDto)

Create a contact with the current user

Returns an instance of created contact.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final contactDto = ContactDto(); // ContactDto | 

try {
    final result = api_instance.createContact(contactDto);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->createContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactDto** | [**ContactDto**](ContactDto.md)|  | 

### Return type

[**ContactDto**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createContacts**
> List<ContactDto> createContacts(contactDto)

Create a batch of contacts

Returns the modified contacts.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final contactDto = [List<ContactDto>()]; // List<ContactDto> | 

try {
    final result = api_instance.createContacts(contactDto);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->createContacts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactDto** | [**List<ContactDto>**](ContactDto.md)|  | 

### Return type

[**List<ContactDto>**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteContacts**
> List<DocIdentifier> deleteContacts(listOfIdsDto)

Delete contacts.

Response is a set containing the ID's of deleted contacts.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.deleteContacts(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->deleteContacts: $e\n');
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

# **filterContactsBy**
> PaginatedListContactDto filterContactsBy(filterChainContact, startDocumentId, limit)

List contacts for the current user (HcParty) or the given hcparty in the filter 

Returns a list of contacts along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final filterChainContact = FilterChainContact(); // FilterChainContact | 
final startDocumentId = startDocumentId_example; // String | A Contact document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.filterContactsBy(filterChainContact, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->filterContactsBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterChainContact** | [**FilterChainContact**](FilterChainContact.md)|  | 
 **startDocumentId** | **String**| A Contact document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListContactDto**](PaginatedListContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filterServicesBy**
> PaginatedListServiceDto filterServicesBy(filterChainService, startDocumentId, limit)

List services for the current user (HcParty) or the given hcparty in the filter 

Returns a list of contacts along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final filterChainService = FilterChainService(); // FilterChainService | 
final startDocumentId = startDocumentId_example; // String | A Contact document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.filterServicesBy(filterChainService, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->filterServicesBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterChainService** | [**FilterChainService**](FilterChainService.md)|  | 
 **startDocumentId** | **String**| A Contact document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListServiceDto**](PaginatedListServiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findContactsByOpeningDate**
> PaginatedListContactDto findContactsByOpeningDate(startKey, endKey, hcpartyid, startDocumentId, limit)

List contacts by opening date parties with(out) pagination

Returns a list of contacts.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final startKey = 789; // int | The contact openingDate
final endKey = 789; // int | The contact max openingDate
final hcpartyid = hcpartyid_example; // String | hcpartyid
final startDocumentId = startDocumentId_example; // String | A contact party document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findContactsByOpeningDate(startKey, endKey, hcpartyid, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->findContactsByOpeningDate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startKey** | **int**| The contact openingDate | 
 **endKey** | **int**| The contact max openingDate | 
 **hcpartyid** | **String**| hcpartyid | 
 **startDocumentId** | **String**| A contact party document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListContactDto**](PaginatedListContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContact**
> ContactDto getContact(contactId)

Get a contact

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final contactId = contactId_example; // String | 

try {
    final result = api_instance.getContact(contactId);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->getContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | **String**|  | 

### Return type

[**ContactDto**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContacts**
> List<ContactDto> getContacts(listOfIdsDto)

Get contacts

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.getContacts(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->getContacts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<ContactDto>**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmptyContent**
> ContentDto getEmptyContent()

Get an empty content

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();

try {
    final result = api_instance.getEmptyContent();
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->getEmptyContent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ContentDto**](ContentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServiceCodesOccurences**
> List<LabelledOccurenceDto> getServiceCodesOccurences(codeType, minOccurences)

Get the list of all used codes frequencies in services

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final codeType = codeType_example; // String | 
final minOccurences = 789; // int | 

try {
    final result = api_instance.getServiceCodesOccurences(codeType, minOccurences);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->getServiceCodesOccurences: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codeType** | **String**|  | 
 **minOccurences** | **int**|  | 

### Return type

[**List<LabelledOccurenceDto>**](LabelledOccurenceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServices**
> List<ServiceDto> getServices(listOfIdsDto)

List services with provided ids 

Returns a list of services

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.getServices(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->getServices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<ServiceDto>**](ServiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServicesLinkedTo**
> List<ServiceDto> getServicesLinkedTo(listOfIdsDto, linkType)

List services linked to provided ids 

Returns a list of services

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 
final linkType = linkType_example; // String | The type of the link

try {
    final result = api_instance.getServicesLinkedTo(listOfIdsDto, linkType);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->getServicesLinkedTo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 
 **linkType** | **String**| The type of the link | [optional] 

### Return type

[**List<ServiceDto>**](ServiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listContactByHCPartyServiceId**
> List<ContactDto> listContactByHCPartyServiceId(hcPartyId, serviceId)

List contacts found By Healthcare Party and service Id.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final hcPartyId = hcPartyId_example; // String | 
final serviceId = serviceId_example; // String | 

try {
    final result = api_instance.listContactByHCPartyServiceId(hcPartyId, serviceId);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->listContactByHCPartyServiceId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**|  | 
 **serviceId** | **String**|  | 

### Return type

[**List<ContactDto>**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listContactsByExternalId**
> List<ContactDto> listContactsByExternalId(externalId)

List contacts found By externalId.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final externalId = externalId_example; // String | 

try {
    final result = api_instance.listContactsByExternalId(externalId);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->listContactsByExternalId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalId** | **String**|  | 

### Return type

[**List<ContactDto>**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listContactsByHCPartyAndFormId**
> List<ContactDto> listContactsByHCPartyAndFormId(hcPartyId, formId)

List contacts found By Healthcare Party and form Id.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final hcPartyId = hcPartyId_example; // String | 
final formId = formId_example; // String | 

try {
    final result = api_instance.listContactsByHCPartyAndFormId(hcPartyId, formId);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->listContactsByHCPartyAndFormId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**|  | 
 **formId** | **String**|  | 

### Return type

[**List<ContactDto>**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listContactsByHCPartyAndFormIds**
> List<ContactDto> listContactsByHCPartyAndFormIds(hcPartyId, listOfIdsDto)

List contacts found By Healthcare Party and form Id.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final hcPartyId = hcPartyId_example; // String | 
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.listContactsByHCPartyAndFormIds(hcPartyId, listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->listContactsByHCPartyAndFormIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**|  | 
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<ContactDto>**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listContactsByHCPartyAndPatientForeignKeys**
> List<ContactDto> listContactsByHCPartyAndPatientForeignKeys(hcPartyId, listOfIdsDto)

List contacts found By Healthcare Party and Patient foreign keys.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final hcPartyId = hcPartyId_example; // String | 
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.listContactsByHCPartyAndPatientForeignKeys(hcPartyId, listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->listContactsByHCPartyAndPatientForeignKeys: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**|  | 
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<ContactDto>**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listContactsByHCPartyAndPatientSecretFKeys**
> List<ContactDto> listContactsByHCPartyAndPatientSecretFKeys(hcPartyId, secretFKeys, planOfActionsIds, skipClosedContacts)

List contacts found By Healthcare Party and secret foreign keys.

Keys must be delimited by coma

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final hcPartyId = hcPartyId_example; // String | 
final secretFKeys = secretFKeys_example; // String | 
final planOfActionsIds = planOfActionsIds_example; // String | 
final skipClosedContacts = true; // bool | 

try {
    final result = api_instance.listContactsByHCPartyAndPatientSecretFKeys(hcPartyId, secretFKeys, planOfActionsIds, skipClosedContacts);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->listContactsByHCPartyAndPatientSecretFKeys: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**|  | 
 **secretFKeys** | **String**|  | 
 **planOfActionsIds** | **String**|  | [optional] 
 **skipClosedContacts** | **bool**|  | [optional] 

### Return type

[**List<ContactDto>**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listContactsDelegationsStubsByHCPartyAndPatientForeignKeys**
> List<IcureStubDto> listContactsDelegationsStubsByHCPartyAndPatientForeignKeys(hcPartyId, secretFKeys)

List contacts found By Healthcare Party and secret foreign keys.

Keys must be delimited by coma

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final hcPartyId = hcPartyId_example; // String | 
final secretFKeys = secretFKeys_example; // String | 

try {
    final result = api_instance.listContactsDelegationsStubsByHCPartyAndPatientForeignKeys(hcPartyId, secretFKeys);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->listContactsDelegationsStubsByHCPartyAndPatientForeignKeys: $e\n');
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

# **listServicesByAssociationId**
> List<ServiceDto> listServicesByAssociationId(associationId)

List services by related association id

Returns a list of services

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final associationId = associationId_example; // String | 

try {
    final result = api_instance.listServicesByAssociationId(associationId);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->listServicesByAssociationId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **associationId** | **String**|  | 

### Return type

[**List<ServiceDto>**](ServiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listServicesByHealthElementId**
> List<ServiceDto> listServicesByHealthElementId(healthElementId)

List services linked to a health element

Returns the list of services linked to the provided health element id

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final healthElementId = healthElementId_example; // String | 

try {
    final result = api_instance.listServicesByHealthElementId(healthElementId);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->listServicesByHealthElementId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **healthElementId** | **String**|  | 

### Return type

[**List<ServiceDto>**](ServiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **matchContactsBy**
> List<String> matchContactsBy(abstractFilterDtoContact)

Get ids of contacts matching the provided filter for the current user (HcParty) 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final abstractFilterDtoContact = AbstractFilterDtoContact(); // AbstractFilterDtoContact | 

try {
    final result = api_instance.matchContactsBy(abstractFilterDtoContact);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->matchContactsBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **abstractFilterDtoContact** | [**AbstractFilterDtoContact**](AbstractFilterDtoContact.md)|  | 

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyContact**
> ContactDto modifyContact(contactDto)

Modify a contact

Returns the modified contact.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final contactDto = ContactDto(); // ContactDto | 

try {
    final result = api_instance.modifyContact(contactDto);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->modifyContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactDto** | [**ContactDto**](ContactDto.md)|  | 

### Return type

[**ContactDto**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyContacts**
> List<ContactDto> modifyContacts(contactDto)

Modify a batch of contacts

Returns the modified contacts.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final contactDto = [List<ContactDto>()]; // List<ContactDto> | 

try {
    final result = api_instance.modifyContacts(contactDto);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->modifyContacts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactDto** | [**List<ContactDto>**](ContactDto.md)|  | 

### Return type

[**List<ContactDto>**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyContactsDelegations**
> List<ContactDto> modifyContactsDelegations(icureStubDto)

Update delegations in healthElements.

Keys must be delimited by coma

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final icureStubDto = [List<IcureStubDto>()]; // List<IcureStubDto> | 

try {
    final result = api_instance.modifyContactsDelegations(icureStubDto);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->modifyContactsDelegations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **icureStubDto** | [**List<IcureStubDto>**](IcureStubDto.md)|  | 

### Return type

[**List<ContactDto>**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newContactDelegations**
> ContactDto newContactDelegations(contactId, delegationDto)

Delegates a contact to a healthcare party

It delegates a contact to a healthcare party (By current healthcare party). Returns the contact with new delegations.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final contactId = contactId_example; // String | 
final delegationDto = DelegationDto(); // DelegationDto | 

try {
    final result = api_instance.newContactDelegations(contactId, delegationDto);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->newContactDelegations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | **String**|  | 
 **delegationDto** | [**DelegationDto**](DelegationDto.md)|  | 

### Return type

[**ContactDto**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setContactsDelegations**
> List<ContactDto> setContactsDelegations(icureStubDto)

Update delegations in healthElements.

Keys must be delimited by coma

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactApi();
final icureStubDto = [List<IcureStubDto>()]; // List<IcureStubDto> | 

try {
    final result = api_instance.setContactsDelegations(icureStubDto);
    print(result);
} catch (e) {
    print('Exception when calling ContactApi->setContactsDelegations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **icureStubDto** | [**List<IcureStubDto>**](IcureStubDto.md)|  | 

### Return type

[**List<ContactDto>**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

