# openapi.api.InvoiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appendCodes**](InvoiceApi.md#appendcodes) | **POST** /rest/v2/invoice/byauthor/{userId}/append/{type}/{sentMediumType} | Gets all invoices for author at date
[**createInvoice**](InvoiceApi.md#createinvoice) | **POST** /rest/v2/invoice | Creates an invoice
[**createInvoices**](InvoiceApi.md#createinvoices) | **POST** /rest/v2/invoice/batch | Create a batch of invoices
[**deleteInvoice**](InvoiceApi.md#deleteinvoice) | **DELETE** /rest/v2/invoice/{invoiceId} | Deletes an invoice
[**filterInvoicesBy**](InvoiceApi.md#filterinvoicesby) | **POST** /rest/v2/invoice/filter | Filter invoices for the current user (HcParty)
[**findInvoicesByAuthor**](InvoiceApi.md#findinvoicesbyauthor) | **GET** /rest/v2/invoice/byauthor/{hcPartyId} | Gets all invoices for author at date
[**getInvoice**](InvoiceApi.md#getinvoice) | **GET** /rest/v2/invoice/{invoiceId} | Gets an invoice
[**getInvoices**](InvoiceApi.md#getinvoices) | **POST** /rest/v2/invoice/byIds | Gets an invoice
[**getTarificationsCodesOccurences**](InvoiceApi.md#gettarificationscodesoccurences) | **GET** /rest/v2/invoice/codes/{minOccurences} | Get the list of all used tarifications frequencies in invoices
[**listAllHcpsByStatus**](InvoiceApi.md#listallhcpsbystatus) | **POST** /rest/v2/invoice/allHcpsByStatus/{status} | Gets all invoices per status
[**listInvoicesByContactIds**](InvoiceApi.md#listinvoicesbycontactids) | **POST** /rest/v2/invoice/byContacts | Gets all invoices for author at date
[**listInvoicesByHCPartyAndPatientForeignKeys**](InvoiceApi.md#listinvoicesbyhcpartyandpatientforeignkeys) | **GET** /rest/v2/invoice/byHcPartySecretForeignKeys | List invoices found By Healthcare Party and secret foreign patient keys.
[**listInvoicesByHcPartyAndGroupId**](InvoiceApi.md#listinvoicesbyhcpartyandgroupid) | **GET** /rest/v2/invoice/byHcPartyGroupId/{hcPartyId}/{groupId} | List invoices by groupId
[**listInvoicesByHcPartySentMediumTypeInvoiceTypeSentDate**](InvoiceApi.md#listinvoicesbyhcpartysentmediumtypeinvoicetypesentdate) | **GET** /rest/v2/invoice/byHcParty/{hcPartyId}/mediumType/{sentMediumType}/invoiceType/{invoiceType}/sent/{sent} | List invoices by type, sent or unsent
[**listInvoicesByHcpartySendingModeStatusDate**](InvoiceApi.md#listinvoicesbyhcpartysendingmodestatusdate) | **GET** /rest/v2/invoice/byHcpartySendingModeStatusDate/{hcPartyId} | Get all invoices by author, by sending mode, by status and by date
[**listInvoicesByIds**](InvoiceApi.md#listinvoicesbyids) | **GET** /rest/v2/invoice/byIds/{invoiceIds} | Gets all invoices for author at date
[**listInvoicesByRecipientsIds**](InvoiceApi.md#listinvoicesbyrecipientsids) | **GET** /rest/v2/invoice/to/{recipientIds} | Gets all invoices for author at date
[**listInvoicesByServiceIds**](InvoiceApi.md#listinvoicesbyserviceids) | **GET** /rest/v2/invoice/byServiceIds/{serviceIds} | Gets all invoices for author at date
[**listInvoicesDelegationsStubsByHCPartyAndPatientForeignKeys**](InvoiceApi.md#listinvoicesdelegationsstubsbyhcpartyandpatientforeignkeys) | **GET** /rest/v2/invoice/byHcPartySecretForeignKeys/delegations | List helement stubs found By Healthcare Party and secret foreign keys.
[**listToInsurances**](InvoiceApi.md#listtoinsurances) | **GET** /rest/v2/invoice/toInsurances | Gets all invoices for author at date
[**listToInsurancesUnsent**](InvoiceApi.md#listtoinsurancesunsent) | **GET** /rest/v2/invoice/toInsurances/unsent | Gets all invoices for author at date
[**listToPatients**](InvoiceApi.md#listtopatients) | **GET** /rest/v2/invoice/toPatients | Gets all invoices for author at date
[**listToPatientsUnsent**](InvoiceApi.md#listtopatientsunsent) | **GET** /rest/v2/invoice/toPatients/unsent | Gets all invoices for author at date
[**mergeTo**](InvoiceApi.md#mergeto) | **POST** /rest/v2/invoice/mergeTo/{invoiceId} | Gets all invoices for author at date
[**modifyInvoice**](InvoiceApi.md#modifyinvoice) | **PUT** /rest/v2/invoice | Modifies an invoice
[**modifyInvoices**](InvoiceApi.md#modifyinvoices) | **PUT** /rest/v2/invoice/batch | Modify a batch of invoices
[**newInvoiceDelegations**](InvoiceApi.md#newinvoicedelegations) | **PUT** /rest/v2/invoice/{invoiceId}/delegate | Adds a delegation to a invoice
[**reassignInvoice**](InvoiceApi.md#reassigninvoice) | **POST** /rest/v2/invoice/reassign | Modifies an invoice
[**removeCodes**](InvoiceApi.md#removecodes) | **POST** /rest/v2/invoice/byauthor/{userId}/service/{serviceId} | Remove an invoice of an user
[**setInvoicesDelegations**](InvoiceApi.md#setinvoicesdelegations) | **POST** /rest/v2/invoice/delegations | Update delegations in healthElements.
[**validate**](InvoiceApi.md#validate) | **POST** /rest/v2/invoice/validate/{invoiceId} | Gets all invoices for author at date


# **appendCodes**
> List<InvoiceDto> appendCodes(userId, type, sentMediumType, secretFKeys, invoicingCodeDto, insuranceId, invoiceId, gracePeriod)

Gets all invoices for author at date

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final userId = userId_example; // String | 
final type = type_example; // String | 
final sentMediumType = sentMediumType_example; // String | 
final secretFKeys = secretFKeys_example; // String | 
final invoicingCodeDto = [List<InvoicingCodeDto>()]; // List<InvoicingCodeDto> | 
final insuranceId = insuranceId_example; // String | 
final invoiceId = invoiceId_example; // String | 
final gracePeriod = 56; // int | 

try {
    final result = api_instance.appendCodes(userId, type, sentMediumType, secretFKeys, invoicingCodeDto, insuranceId, invoiceId, gracePeriod);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->appendCodes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **type** | **String**|  | 
 **sentMediumType** | **String**|  | 
 **secretFKeys** | **String**|  | 
 **invoicingCodeDto** | [**List<InvoicingCodeDto>**](InvoicingCodeDto.md)|  | 
 **insuranceId** | **String**|  | [optional] 
 **invoiceId** | **String**|  | [optional] 
 **gracePeriod** | **int**|  | [optional] 

### Return type

[**List<InvoiceDto>**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createInvoice**
> InvoiceDto createInvoice(invoiceDto)

Creates an invoice

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final invoiceDto = InvoiceDto(); // InvoiceDto | 

try {
    final result = api_instance.createInvoice(invoiceDto);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->createInvoice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceDto** | [**InvoiceDto**](InvoiceDto.md)|  | 

### Return type

[**InvoiceDto**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createInvoices**
> List<InvoiceDto> createInvoices(invoiceDto)

Create a batch of invoices

Returns the created invoices.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final invoiceDto = [List<InvoiceDto>()]; // List<InvoiceDto> | 

try {
    final result = api_instance.createInvoices(invoiceDto);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->createInvoices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceDto** | [**List<InvoiceDto>**](InvoiceDto.md)|  | 

### Return type

[**List<InvoiceDto>**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInvoice**
> DocIdentifier deleteInvoice(invoiceId)

Deletes an invoice

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final invoiceId = invoiceId_example; // String | 

try {
    final result = api_instance.deleteInvoice(invoiceId);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->deleteInvoice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceId** | **String**|  | 

### Return type

[**DocIdentifier**](DocIdentifier.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filterInvoicesBy**
> List<InvoiceDto> filterInvoicesBy(filterChainInvoice)

Filter invoices for the current user (HcParty)

Returns a list of invoices along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final filterChainInvoice = FilterChainInvoice(); // FilterChainInvoice | 

try {
    final result = api_instance.filterInvoicesBy(filterChainInvoice);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->filterInvoicesBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterChainInvoice** | [**FilterChainInvoice**](FilterChainInvoice.md)|  | 

### Return type

[**List<InvoiceDto>**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findInvoicesByAuthor**
> PaginatedListInvoiceDto findInvoicesByAuthor(hcPartyId, fromDate, toDate, startKey, startDocumentId, limit)

Gets all invoices for author at date

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final hcPartyId = hcPartyId_example; // String | 
final fromDate = 789; // int | 
final toDate = 789; // int | 
final startKey = startKey_example; // String | The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
final startDocumentId = startDocumentId_example; // String | A patient document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findInvoicesByAuthor(hcPartyId, fromDate, toDate, startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->findInvoicesByAuthor: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**|  | 
 **fromDate** | **int**|  | [optional] 
 **toDate** | **int**|  | [optional] 
 **startKey** | **String**| The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey | [optional] 
 **startDocumentId** | **String**| A patient document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListInvoiceDto**](PaginatedListInvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvoice**
> InvoiceDto getInvoice(invoiceId)

Gets an invoice

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final invoiceId = invoiceId_example; // String | 

try {
    final result = api_instance.getInvoice(invoiceId);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->getInvoice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceId** | **String**|  | 

### Return type

[**InvoiceDto**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvoices**
> List<InvoiceDto> getInvoices(listOfIdsDto)

Gets an invoice

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.getInvoices(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->getInvoices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<InvoiceDto>**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTarificationsCodesOccurences**
> List<LabelledOccurenceDto> getTarificationsCodesOccurences(minOccurences)

Get the list of all used tarifications frequencies in invoices

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final minOccurences = 789; // int | 

try {
    final result = api_instance.getTarificationsCodesOccurences(minOccurences);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->getTarificationsCodesOccurences: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minOccurences** | **int**|  | 

### Return type

[**List<LabelledOccurenceDto>**](LabelledOccurenceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAllHcpsByStatus**
> List<InvoiceDto> listAllHcpsByStatus(status, listOfIdsDto, from, to)

Gets all invoices per status

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final status = status_example; // String | 
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 
final from = 789; // int | 
final to = 789; // int | 

try {
    final result = api_instance.listAllHcpsByStatus(status, listOfIdsDto, from, to);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->listAllHcpsByStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**|  | 
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 
 **from** | **int**|  | [optional] 
 **to** | **int**|  | [optional] 

### Return type

[**List<InvoiceDto>**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInvoicesByContactIds**
> List<InvoiceDto> listInvoicesByContactIds(listOfIdsDto)

Gets all invoices for author at date

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.listInvoicesByContactIds(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->listInvoicesByContactIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<InvoiceDto>**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInvoicesByHCPartyAndPatientForeignKeys**
> List<InvoiceDto> listInvoicesByHCPartyAndPatientForeignKeys(hcPartyId, secretFKeys)

List invoices found By Healthcare Party and secret foreign patient keys.

Keys have to delimited by coma

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final hcPartyId = hcPartyId_example; // String | 
final secretFKeys = secretFKeys_example; // String | 

try {
    final result = api_instance.listInvoicesByHCPartyAndPatientForeignKeys(hcPartyId, secretFKeys);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->listInvoicesByHCPartyAndPatientForeignKeys: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**|  | 
 **secretFKeys** | **String**|  | 

### Return type

[**List<InvoiceDto>**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInvoicesByHcPartyAndGroupId**
> List<InvoiceDto> listInvoicesByHcPartyAndGroupId(hcPartyId, groupId)

List invoices by groupId

Keys have to delimited by coma

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final hcPartyId = hcPartyId_example; // String | 
final groupId = groupId_example; // String | 

try {
    final result = api_instance.listInvoicesByHcPartyAndGroupId(hcPartyId, groupId);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->listInvoicesByHcPartyAndGroupId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**|  | 
 **groupId** | **String**|  | 

### Return type

[**List<InvoiceDto>**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInvoicesByHcPartySentMediumTypeInvoiceTypeSentDate**
> List<InvoiceDto> listInvoicesByHcPartySentMediumTypeInvoiceTypeSentDate(hcPartyId, sentMediumType, invoiceType, sent, from, to)

List invoices by type, sent or unsent

Keys have to delimited by coma

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final hcPartyId = hcPartyId_example; // String | 
final sentMediumType = sentMediumType_example; // String | 
final invoiceType = invoiceType_example; // String | 
final sent = true; // bool | 
final from = 789; // int | 
final to = 789; // int | 

try {
    final result = api_instance.listInvoicesByHcPartySentMediumTypeInvoiceTypeSentDate(hcPartyId, sentMediumType, invoiceType, sent, from, to);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->listInvoicesByHcPartySentMediumTypeInvoiceTypeSentDate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**|  | 
 **sentMediumType** | **String**|  | 
 **invoiceType** | **String**|  | 
 **sent** | **bool**|  | 
 **from** | **int**|  | [optional] 
 **to** | **int**|  | [optional] 

### Return type

[**List<InvoiceDto>**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInvoicesByHcpartySendingModeStatusDate**
> List<InvoiceDto> listInvoicesByHcpartySendingModeStatusDate(hcPartyId, sendingMode, status, from, to)

Get all invoices by author, by sending mode, by status and by date

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final hcPartyId = hcPartyId_example; // String | 
final sendingMode = sendingMode_example; // String | 
final status = status_example; // String | 
final from = 789; // int | 
final to = 789; // int | 

try {
    final result = api_instance.listInvoicesByHcpartySendingModeStatusDate(hcPartyId, sendingMode, status, from, to);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->listInvoicesByHcpartySendingModeStatusDate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**|  | 
 **sendingMode** | **String**|  | [optional] 
 **status** | **String**|  | [optional] 
 **from** | **int**|  | [optional] 
 **to** | **int**|  | [optional] 

### Return type

[**List<InvoiceDto>**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInvoicesByIds**
> List<InvoiceDto> listInvoicesByIds(invoiceIds)

Gets all invoices for author at date

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final invoiceIds = invoiceIds_example; // String | 

try {
    final result = api_instance.listInvoicesByIds(invoiceIds);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->listInvoicesByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceIds** | **String**|  | 

### Return type

[**List<InvoiceDto>**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInvoicesByRecipientsIds**
> List<InvoiceDto> listInvoicesByRecipientsIds(recipientIds)

Gets all invoices for author at date

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final recipientIds = recipientIds_example; // String | 

try {
    final result = api_instance.listInvoicesByRecipientsIds(recipientIds);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->listInvoicesByRecipientsIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recipientIds** | **String**|  | 

### Return type

[**List<InvoiceDto>**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInvoicesByServiceIds**
> List<InvoiceDto> listInvoicesByServiceIds(serviceIds)

Gets all invoices for author at date

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final serviceIds = serviceIds_example; // String | 

try {
    final result = api_instance.listInvoicesByServiceIds(serviceIds);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->listInvoicesByServiceIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceIds** | **String**|  | 

### Return type

[**List<InvoiceDto>**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInvoicesDelegationsStubsByHCPartyAndPatientForeignKeys**
> List<IcureStubDto> listInvoicesDelegationsStubsByHCPartyAndPatientForeignKeys(hcPartyId, secretFKeys)

List helement stubs found By Healthcare Party and secret foreign keys.

Keys must be delimited by coma

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final hcPartyId = hcPartyId_example; // String | 
final secretFKeys = secretFKeys_example; // String | 

try {
    final result = api_instance.listInvoicesDelegationsStubsByHCPartyAndPatientForeignKeys(hcPartyId, secretFKeys);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->listInvoicesDelegationsStubsByHCPartyAndPatientForeignKeys: $e\n');
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

# **listToInsurances**
> List<InvoiceDto> listToInsurances(userIds)

Gets all invoices for author at date

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final userIds = userIds_example; // String | 

try {
    final result = api_instance.listToInsurances(userIds);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->listToInsurances: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userIds** | **String**|  | [optional] 

### Return type

[**List<InvoiceDto>**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listToInsurancesUnsent**
> List<InvoiceDto> listToInsurancesUnsent(userIds)

Gets all invoices for author at date

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final userIds = userIds_example; // String | 

try {
    final result = api_instance.listToInsurancesUnsent(userIds);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->listToInsurancesUnsent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userIds** | **String**|  | [optional] 

### Return type

[**List<InvoiceDto>**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listToPatients**
> List<InvoiceDto> listToPatients(hcPartyId)

Gets all invoices for author at date

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final hcPartyId = hcPartyId_example; // String | 

try {
    final result = api_instance.listToPatients(hcPartyId);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->listToPatients: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**|  | [optional] 

### Return type

[**List<InvoiceDto>**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listToPatientsUnsent**
> List<InvoiceDto> listToPatientsUnsent(hcPartyId)

Gets all invoices for author at date

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final hcPartyId = hcPartyId_example; // String | 

try {
    final result = api_instance.listToPatientsUnsent(hcPartyId);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->listToPatientsUnsent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**|  | [optional] 

### Return type

[**List<InvoiceDto>**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mergeTo**
> InvoiceDto mergeTo(invoiceId, listOfIdsDto)

Gets all invoices for author at date

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final invoiceId = invoiceId_example; // String | 
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.mergeTo(invoiceId, listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->mergeTo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceId** | **String**|  | 
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**InvoiceDto**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyInvoice**
> InvoiceDto modifyInvoice(invoiceDto)

Modifies an invoice

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final invoiceDto = InvoiceDto(); // InvoiceDto | 

try {
    final result = api_instance.modifyInvoice(invoiceDto);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->modifyInvoice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceDto** | [**InvoiceDto**](InvoiceDto.md)|  | 

### Return type

[**InvoiceDto**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyInvoices**
> List<InvoiceDto> modifyInvoices(invoiceDto)

Modify a batch of invoices

Returns the modified invoices.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final invoiceDto = [List<InvoiceDto>()]; // List<InvoiceDto> | 

try {
    final result = api_instance.modifyInvoices(invoiceDto);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->modifyInvoices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceDto** | [**List<InvoiceDto>**](InvoiceDto.md)|  | 

### Return type

[**List<InvoiceDto>**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newInvoiceDelegations**
> InvoiceDto newInvoiceDelegations(invoiceId, delegationDto)

Adds a delegation to a invoice

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final invoiceId = invoiceId_example; // String | 
final delegationDto = [List<DelegationDto>()]; // List<DelegationDto> | 

try {
    final result = api_instance.newInvoiceDelegations(invoiceId, delegationDto);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->newInvoiceDelegations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceId** | **String**|  | 
 **delegationDto** | [**List<DelegationDto>**](DelegationDto.md)|  | 

### Return type

[**InvoiceDto**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reassignInvoice**
> InvoiceDto reassignInvoice(invoiceDto)

Modifies an invoice

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final invoiceDto = InvoiceDto(); // InvoiceDto | 

try {
    final result = api_instance.reassignInvoice(invoiceDto);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->reassignInvoice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceDto** | [**InvoiceDto**](InvoiceDto.md)|  | 

### Return type

[**InvoiceDto**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeCodes**
> List<InvoiceDto> removeCodes(userId, serviceId, secretFKeys, requestBody)

Remove an invoice of an user

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final userId = userId_example; // String | 
final serviceId = serviceId_example; // String | 
final secretFKeys = secretFKeys_example; // String | 
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.removeCodes(userId, serviceId, secretFKeys, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->removeCodes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **serviceId** | **String**|  | 
 **secretFKeys** | **String**|  | 
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**List<InvoiceDto>**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setInvoicesDelegations**
> List<IcureStubDto> setInvoicesDelegations(icureStubDto)

Update delegations in healthElements.

Keys must be delimited by coma

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final icureStubDto = [List<IcureStubDto>()]; // List<IcureStubDto> | 

try {
    final result = api_instance.setInvoicesDelegations(icureStubDto);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->setInvoicesDelegations: $e\n');
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

# **validate**
> InvoiceDto validate(invoiceId, scheme, forcedValue)

Gets all invoices for author at date

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = InvoiceApi();
final invoiceId = invoiceId_example; // String | 
final scheme = scheme_example; // String | 
final forcedValue = forcedValue_example; // String | 

try {
    final result = api_instance.validate(invoiceId, scheme, forcedValue);
    print(result);
} catch (e) {
    print('Exception when calling InvoiceApi->validate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceId** | **String**|  | 
 **scheme** | **String**|  | 
 **forcedValue** | **String**|  | 

### Return type

[**InvoiceDto**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

