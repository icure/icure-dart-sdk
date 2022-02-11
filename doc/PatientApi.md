# icure_dart_sdk.api.PatientApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**countOfPatients**](PatientApi.md#countofpatients) | **GET** /rest/v2/patient/hcParty/{hcPartyId}/count | Get count of patients for a specific HcParty or for the current HcParty 
[**createPatient**](PatientApi.md#createpatient) | **POST** /rest/v2/patient | Create a patient
[**createPatients**](PatientApi.md#createpatients) | **POST** /rest/v2/patient/batch | Create patients in bulk
[**deletePatients**](PatientApi.md#deletepatients) | **POST** /rest/v2/patient/delete/batch | Delete patients.
[**filterPatientsBy**](PatientApi.md#filterpatientsby) | **POST** /rest/v2/patient/filter | Filter patients for the current user (HcParty) 
[**findDeletedPatients**](PatientApi.md#finddeletedpatients) | **GET** /rest/v2/patient/deleted/byDate | Find deleted patients
[**findDuplicatesByName**](PatientApi.md#findduplicatesbyname) | **POST** /rest/v2/patient/duplicates/name | Provides a paginated list of patients with duplicate name for an hecparty
[**findDuplicatesBySsin**](PatientApi.md#findduplicatesbyssin) | **POST** /rest/v2/patient/duplicates/ssin | Provides a paginated list of patients with duplicate ssin for an hecparty
[**findPatientsByAccessLogUserAfterDate**](PatientApi.md#findpatientsbyaccessloguserafterdate) | **GET** /rest/v2/patient/byAccess/{userId} | Get Paginated List of Patients sorted by Access logs descending
[**findPatientsByHealthcareParty**](PatientApi.md#findpatientsbyhealthcareparty) | **GET** /rest/v2/patient | List patients for a specific HcParty
[**findPatientsByNameBirthSsinAuto**](PatientApi.md#findpatientsbynamebirthssinauto) | **GET** /rest/v2/patient/byNameBirthSsinAuto | Find patients for the current user (HcParty) 
[**findPatientsIdsByHealthcareParty**](PatientApi.md#findpatientsidsbyhealthcareparty) | **GET** /rest/v2/patient/byHcPartyId | List patients by pages for a specific HcParty
[**findPatientsModifiedAfter**](PatientApi.md#findpatientsmodifiedafter) | **GET** /rest/v2/patient/modifiedAfter/{date} | List patients that have been modified after the provided date
[**fuzzySearch**](PatientApi.md#fuzzysearch) | **GET** /rest/v2/patient/fuzzy | Filter patients for the current user (HcParty) 
[**getPatient**](PatientApi.md#getpatient) | **GET** /rest/v2/patient/{patientId} | Get patient
[**getPatientByExternalId**](PatientApi.md#getpatientbyexternalid) | **GET** /rest/v2/patient/byExternalId/{externalId} | Get the patient having the provided externalId
[**getPatientByHealthcarepartyAndIdentifier**](PatientApi.md#getpatientbyhealthcarepartyandidentifier) | **GET** /rest/v2/patient/{hcPartyId}/{id} | Get patient by identifier
[**getPatientHcPartyKeysForDelegate**](PatientApi.md#getpatienthcpartykeysfordelegate) | **GET** /rest/v2/patient/{patientId}/keys | Get the patient (identified by patientId) hcparty keys. Those keys are AES keys (encrypted) used to share information between HCPs and a patient.
[**getPatients**](PatientApi.md#getpatients) | **POST** /rest/v2/patient/byIds | Get patients by id
[**listDeletedPatientsByName**](PatientApi.md#listdeletedpatientsbyname) | **GET** /rest/v2/patient/deleted/by_name | Find deleted patients
[**listOfMergesAfter**](PatientApi.md#listofmergesafter) | **GET** /rest/v2/patient/merges/{date} | List patients that have been merged towards another patient 
[**matchPatientsBy**](PatientApi.md#matchpatientsby) | **POST** /rest/v2/patient/match | Get ids of patients matching the provided filter for the current user (HcParty) 
[**mergeInto**](PatientApi.md#mergeinto) | **PUT** /rest/v2/patient/mergeInto/{toId}/from/{fromIds} | Merge a series of patients into another patient
[**modifyPatient**](PatientApi.md#modifypatient) | **PUT** /rest/v2/patient | Modify a patient
[**modifyPatientReferral**](PatientApi.md#modifypatientreferral) | **PUT** /rest/v2/patient/{patientId}/referral/{referralId} | Set a patient referral doctor
[**modifyPatients**](PatientApi.md#modifypatients) | **PUT** /rest/v2/patient/batch | Modify patients in bulk
[**newPatientDelegations**](PatientApi.md#newpatientdelegations) | **POST** /rest/v2/patient/{patientId}/delegate | Delegates a patients to a healthcare party
[**registerPatient**](PatientApi.md#registerpatient) | **POST** /rest/v2/patient/register/forHcp/{hcPartyId}/inGroup/{groupId} | Register a patient
[**undeletePatient**](PatientApi.md#undeletepatient) | **PUT** /rest/v2/patient/undelete/{patientIds} | undelete previously deleted patients


# **countOfPatients**
> ContentDto countOfPatients(hcPartyId)

Get count of patients for a specific HcParty or for the current HcParty 

Returns the count of patients

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final hcPartyId = hcPartyId_example; // String | Healthcare party id

try {
    final result = api_instance.countOfPatients(hcPartyId);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->countOfPatients: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**| Healthcare party id | 

### Return type

[**ContentDto**](ContentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPatient**
> PatientDto createPatient(patientDto)

Create a patient

Name, last name, date of birth, and gender are required. After creation of the patient and obtaining the ID, you need to create an initial delegation.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final patientDto = PatientDto(); // PatientDto | 

try {
    final result = api_instance.createPatient(patientDto);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->createPatient: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientDto** | [**PatientDto**](PatientDto.md)|  | 

### Return type

[**PatientDto**](PatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPatients**
> List<IdWithRevDto> createPatients(patientDto)

Create patients in bulk

Returns the id and _rev of created patients

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final patientDto = [List<PatientDto>()]; // List<PatientDto> | 

try {
    final result = api_instance.createPatients(patientDto);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->createPatients: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientDto** | [**List<PatientDto>**](PatientDto.md)|  | 

### Return type

[**List<IdWithRevDto>**](IdWithRevDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePatients**
> List<DocIdentifier> deletePatients(listOfIdsDto)

Delete patients.

Response is an array containing the ID of deleted patient..

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.deletePatients(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->deletePatients: $e\n');
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

# **filterPatientsBy**
> PaginatedListPatientDto filterPatientsBy(filterChainPatient, startKey, startDocumentId, limit, skip, sort, desc)

Filter patients for the current user (HcParty) 

Returns a list of patients along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final filterChainPatient = FilterChainPatient(); // FilterChainPatient | 
final startKey = startKey_example; // String | The start key for pagination, depends on the filters used
final startDocumentId = startDocumentId_example; // String | A patient document ID
final limit = 56; // int | Number of rows
final skip = 56; // int | Skip rows
final sort = sort_example; // String | Sort key
final desc = true; // bool | Descending

try {
    final result = api_instance.filterPatientsBy(filterChainPatient, startKey, startDocumentId, limit, skip, sort, desc);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->filterPatientsBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterChainPatient** | [**FilterChainPatient**](FilterChainPatient.md)|  | 
 **startKey** | **String**| The start key for pagination, depends on the filters used | [optional] 
 **startDocumentId** | **String**| A patient document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 
 **skip** | **int**| Skip rows | [optional] 
 **sort** | **String**| Sort key | [optional] 
 **desc** | **bool**| Descending | [optional] 

### Return type

[**PaginatedListPatientDto**](PaginatedListPatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findDeletedPatients**
> PaginatedListPatientDto findDeletedPatients(startDate, endDate, desc, startDocumentId, limit)

Find deleted patients

Returns a list of deleted patients, within the specified time period, if any.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final startDate = 789; // int | Filter deletions after this date (unix epoch), included
final endDate = 789; // int | Filter deletions before this date (unix epoch), included
final desc = true; // bool | Descending
final startDocumentId = startDocumentId_example; // String | A patient document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findDeletedPatients(startDate, endDate, desc, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->findDeletedPatients: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **int**| Filter deletions after this date (unix epoch), included | [optional] 
 **endDate** | **int**| Filter deletions before this date (unix epoch), included | [optional] 
 **desc** | **bool**| Descending | [optional] 
 **startDocumentId** | **String**| A patient document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListPatientDto**](PaginatedListPatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findDuplicatesByName**
> PaginatedListPatientDto findDuplicatesByName(hcPartyId, startKey, startDocumentId, limit)

Provides a paginated list of patients with duplicate name for an hecparty

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final hcPartyId = hcPartyId_example; // String | Healthcare party id
final startKey = startKey_example; // String | The start key for pagination, depends on the filters used
final startDocumentId = startDocumentId_example; // String | A patient document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findDuplicatesByName(hcPartyId, startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->findDuplicatesByName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**| Healthcare party id | 
 **startKey** | **String**| The start key for pagination, depends on the filters used | [optional] 
 **startDocumentId** | **String**| A patient document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListPatientDto**](PaginatedListPatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findDuplicatesBySsin**
> PaginatedListPatientDto findDuplicatesBySsin(hcPartyId, startKey, startDocumentId, limit)

Provides a paginated list of patients with duplicate ssin for an hecparty

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final hcPartyId = hcPartyId_example; // String | Healthcare party id
final startKey = startKey_example; // String | The start key for pagination, depends on the filters used
final startDocumentId = startDocumentId_example; // String | A patient document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findDuplicatesBySsin(hcPartyId, startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->findDuplicatesBySsin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**| Healthcare party id | 
 **startKey** | **String**| The start key for pagination, depends on the filters used | [optional] 
 **startDocumentId** | **String**| A patient document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListPatientDto**](PaginatedListPatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findPatientsByAccessLogUserAfterDate**
> PaginatedListPatientDto findPatientsByAccessLogUserAfterDate(userId, accessType, startDate, startKey, startDocumentId, limit)

Get Paginated List of Patients sorted by Access logs descending

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final userId = userId_example; // String | A User ID
final accessType = accessType_example; // String | The type of access (COMPUTER or USER)
final startDate = 789; // int | The start search epoch
final startKey = startKey_example; // String | The start key for pagination
final startDocumentId = startDocumentId_example; // String | A patient document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findPatientsByAccessLogUserAfterDate(userId, accessType, startDate, startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->findPatientsByAccessLogUserAfterDate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| A User ID | 
 **accessType** | **String**| The type of access (COMPUTER or USER) | [optional] 
 **startDate** | **int**| The start search epoch | [optional] 
 **startKey** | **String**| The start key for pagination | [optional] 
 **startDocumentId** | **String**| A patient document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] [default to 1000]

### Return type

[**PaginatedListPatientDto**](PaginatedListPatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findPatientsByHealthcareParty**
> PaginatedListPatientDto findPatientsByHealthcareParty(hcPartyId, sortField, startKey, startDocumentId, limit, sortDirection)

List patients for a specific HcParty

Returns a list of patients along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final hcPartyId = hcPartyId_example; // String | Healthcare party id
final sortField = sortField_example; // String | Optional value for sorting results by a given field ('name', 'ssin', 'dateOfBirth'). Specifying this deactivates filtering
final startKey = startKey_example; // String | The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
final startDocumentId = startDocumentId_example; // String | A patient document ID
final limit = 56; // int | Number of rows
final sortDirection = sortDirection_example; // String | Optional value for providing a sorting direction ('asc', 'desc'). Set to 'asc' by default.

try {
    final result = api_instance.findPatientsByHealthcareParty(hcPartyId, sortField, startKey, startDocumentId, limit, sortDirection);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->findPatientsByHealthcareParty: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**| Healthcare party id | [optional] 
 **sortField** | **String**| Optional value for sorting results by a given field ('name', 'ssin', 'dateOfBirth'). Specifying this deactivates filtering | [optional] 
 **startKey** | **String**| The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey | [optional] 
 **startDocumentId** | **String**| A patient document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 
 **sortDirection** | **String**| Optional value for providing a sorting direction ('asc', 'desc'). Set to 'asc' by default. | [optional] [default to 'asc']

### Return type

[**PaginatedListPatientDto**](PaginatedListPatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findPatientsByNameBirthSsinAuto**
> PaginatedListPatientDto findPatientsByNameBirthSsinAuto(healthcarePartyId, filterValue, startKey, startDocumentId, limit, sortDirection)

Find patients for the current user (HcParty) 

Returns a list of patients along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final healthcarePartyId = healthcarePartyId_example; // String | HealthcareParty Id, if unset will user user's hcpId
final filterValue = filterValue_example; // String | Optional value for filtering results
final startKey = startKey_example; // String | The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
final startDocumentId = startDocumentId_example; // String | A patient document ID
final limit = 56; // int | Number of rows
final sortDirection = sortDirection_example; // String | Optional value for providing a sorting direction ('asc', 'desc'). Set to 'asc' by default.

try {
    final result = api_instance.findPatientsByNameBirthSsinAuto(healthcarePartyId, filterValue, startKey, startDocumentId, limit, sortDirection);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->findPatientsByNameBirthSsinAuto: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **healthcarePartyId** | **String**| HealthcareParty Id, if unset will user user's hcpId | [optional] 
 **filterValue** | **String**| Optional value for filtering results | [optional] 
 **startKey** | **String**| The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey | [optional] 
 **startDocumentId** | **String**| A patient document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 
 **sortDirection** | **String**| Optional value for providing a sorting direction ('asc', 'desc'). Set to 'asc' by default. | [optional] [default to 'asc']

### Return type

[**PaginatedListPatientDto**](PaginatedListPatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findPatientsIdsByHealthcareParty**
> PaginatedListString findPatientsIdsByHealthcareParty(hcPartyId, startKey, startDocumentId, limit)

List patients by pages for a specific HcParty

Returns a list of patients along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final hcPartyId = hcPartyId_example; // String | Healthcare party id
final startKey = startKey_example; // String | The page first id
final startDocumentId = startDocumentId_example; // String | A patient document ID
final limit = 56; // int | Page size

try {
    final result = api_instance.findPatientsIdsByHealthcareParty(hcPartyId, startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->findPatientsIdsByHealthcareParty: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**| Healthcare party id | 
 **startKey** | **String**| The page first id | [optional] 
 **startDocumentId** | **String**| A patient document ID | [optional] 
 **limit** | **int**| Page size | [optional] 

### Return type

[**PaginatedListString**](PaginatedListString.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findPatientsModifiedAfter**
> PaginatedListPatientDto findPatientsModifiedAfter(date, startKey, startDocumentId, limit)

List patients that have been modified after the provided date

Returns a list of patients that have been modified after the provided date

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final date = 789; // int | 
final startKey = 789; // int | The start key for pagination the date of the first element of the new page
final startDocumentId = startDocumentId_example; // String | A patient document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findPatientsModifiedAfter(date, startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->findPatientsModifiedAfter: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **int**|  | 
 **startKey** | **int**| The start key for pagination the date of the first element of the new page | [optional] 
 **startDocumentId** | **String**| A patient document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListPatientDto**](PaginatedListPatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fuzzySearch**
> List<PatientDto> fuzzySearch(firstName, lastName, dateOfBirth)

Filter patients for the current user (HcParty) 

Returns a list of patients

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final firstName = firstName_example; // String | The first name
final lastName = lastName_example; // String | The last name
final dateOfBirth = 56; // int | The date of birth

try {
    final result = api_instance.fuzzySearch(firstName, lastName, dateOfBirth);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->fuzzySearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstName** | **String**| The first name | [optional] 
 **lastName** | **String**| The last name | [optional] 
 **dateOfBirth** | **int**| The date of birth | [optional] 

### Return type

[**List<PatientDto>**](PatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPatient**
> PatientDto getPatient(patientId)

Get patient

It gets patient administrative data.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final patientId = patientId_example; // String | 

try {
    final result = api_instance.getPatient(patientId);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->getPatient: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 

### Return type

[**PatientDto**](PatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPatientByExternalId**
> PatientDto getPatientByExternalId(externalId)

Get the patient having the provided externalId

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final externalId = externalId_example; // String | A external ID

try {
    final result = api_instance.getPatientByExternalId(externalId);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->getPatientByExternalId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalId** | **String**| A external ID | 

### Return type

[**PatientDto**](PatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPatientByHealthcarepartyAndIdentifier**
> PatientDto getPatientByHealthcarepartyAndIdentifier(hcPartyId, id, system)

Get patient by identifier

It gets patient administrative data based on the identifier (root & extension) parameters.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final hcPartyId = hcPartyId_example; // String | 
final id = id_example; // String | 
final system = system_example; // String | 

try {
    final result = api_instance.getPatientByHealthcarepartyAndIdentifier(hcPartyId, id, system);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->getPatientByHealthcarepartyAndIdentifier: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**|  | 
 **id** | **String**|  | 
 **system** | **String**|  | [optional] 

### Return type

[**PatientDto**](PatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPatientHcPartyKeysForDelegate**
> String getPatientHcPartyKeysForDelegate(patientId)

Get the patient (identified by patientId) hcparty keys. Those keys are AES keys (encrypted) used to share information between HCPs and a patient.

This endpoint is used to recover all keys that have already been created and that can be used to share information with this patient. It returns a map with the following structure: ID of the owner of the encrypted AES key -> encrypted AES key. The returned encrypted AES keys will have to be decrypted using the patient's private key.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final patientId = patientId_example; // String | The patient Id for which information is shared

try {
    final result = api_instance.getPatientHcPartyKeysForDelegate(patientId);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->getPatientHcPartyKeysForDelegate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**| The patient Id for which information is shared | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPatients**
> List<PatientDto> getPatients(listOfIdsDto)

Get patients by id

It gets patient administrative data.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.getPatients(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->getPatients: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<PatientDto>**](PatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDeletedPatientsByName**
> List<PatientDto> listDeletedPatientsByName(firstName, lastName)

Find deleted patients

Returns a list of deleted patients, by name and/or firstname prefix, if any.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final firstName = firstName_example; // String | First name prefix
final lastName = lastName_example; // String | Last name prefix

try {
    final result = api_instance.listDeletedPatientsByName(firstName, lastName);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->listDeletedPatientsByName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstName** | **String**| First name prefix | [optional] 
 **lastName** | **String**| Last name prefix | [optional] 

### Return type

[**List<PatientDto>**](PatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOfMergesAfter**
> List<PatientDto> listOfMergesAfter(date)

List patients that have been merged towards another patient 

Returns a list of patients that have been merged after the provided date

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final date = 789; // int | 

try {
    final result = api_instance.listOfMergesAfter(date);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->listOfMergesAfter: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **int**|  | 

### Return type

[**List<PatientDto>**](PatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **matchPatientsBy**
> List<String> matchPatientsBy(abstractFilterDtoPatient)

Get ids of patients matching the provided filter for the current user (HcParty) 

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final abstractFilterDtoPatient = AbstractFilterDtoPatient(); // AbstractFilterDtoPatient | 

try {
    final result = api_instance.matchPatientsBy(abstractFilterDtoPatient);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->matchPatientsBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **abstractFilterDtoPatient** | [**AbstractFilterDtoPatient**](AbstractFilterDtoPatient.md)|  | 

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mergeInto**
> PatientDto mergeInto(toId, fromIds)

Merge a series of patients into another patient

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final toId = toId_example; // String | 
final fromIds = fromIds_example; // String | 

try {
    final result = api_instance.mergeInto(toId, fromIds);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->mergeInto: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **toId** | **String**|  | 
 **fromIds** | **String**|  | 

### Return type

[**PatientDto**](PatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyPatient**
> PatientDto modifyPatient(patientDto)

Modify a patient

No particular return value. It's just a message.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final patientDto = PatientDto(); // PatientDto | 

try {
    final result = api_instance.modifyPatient(patientDto);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->modifyPatient: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientDto** | [**PatientDto**](PatientDto.md)|  | 

### Return type

[**PatientDto**](PatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyPatientReferral**
> PatientDto modifyPatientReferral(patientId, referralId, start, end)

Set a patient referral doctor

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final patientId = patientId_example; // String | 
final referralId = referralId_example; // String | The referal id. Accepts 'none' for referral removal.
final start = 789; // int | Optional value for start of referral
final end = 789; // int | Optional value for end of referral

try {
    final result = api_instance.modifyPatientReferral(patientId, referralId, start, end);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->modifyPatientReferral: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 
 **referralId** | **String**| The referal id. Accepts 'none' for referral removal. | 
 **start** | **int**| Optional value for start of referral | [optional] 
 **end** | **int**| Optional value for end of referral | [optional] 

### Return type

[**PatientDto**](PatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyPatients**
> List<IdWithRevDto> modifyPatients(patientDto)

Modify patients in bulk

Returns the id and _rev of modified patients

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final patientDto = [List<PatientDto>()]; // List<PatientDto> | 

try {
    final result = api_instance.modifyPatients(patientDto);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->modifyPatients: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientDto** | [**List<PatientDto>**](PatientDto.md)|  | 

### Return type

[**List<IdWithRevDto>**](IdWithRevDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newPatientDelegations**
> PatientDto newPatientDelegations(patientId, delegationDto)

Delegates a patients to a healthcare party

It delegates a patient to a healthcare party (By current healthcare party). A modified patient with new delegation gets returned.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final patientId = patientId_example; // String | 
final delegationDto = [List<DelegationDto>()]; // List<DelegationDto> | 

try {
    final result = api_instance.newPatientDelegations(patientId, delegationDto);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->newPatientDelegations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 
 **delegationDto** | [**List<DelegationDto>**](DelegationDto.md)|  | 

### Return type

[**PatientDto**](PatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerPatient**
> PatientRegistrationSuccessDto registerPatient(hcPartyId, groupId, patientDto, token, useShortToken)

Register a patient

Register a new patient into the system

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final hcPartyId = hcPartyId_example; // String | 
final groupId = groupId_example; // String | 
final patientDto = PatientDto(); // PatientDto | 
final token = token_example; // String | 
final useShortToken = true; // bool | 

try {
    final result = api_instance.registerPatient(hcPartyId, groupId, patientDto, token, useShortToken);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->registerPatient: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**|  | 
 **groupId** | **String**|  | 
 **patientDto** | [**PatientDto**](PatientDto.md)|  | 
 **token** | **String**|  | [optional] 
 **useShortToken** | **bool**|  | [optional] 

### Return type

[**PatientRegistrationSuccessDto**](PatientRegistrationSuccessDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **undeletePatient**
> List<DocIdentifier> undeletePatient(patientIds)

undelete previously deleted patients

Response is an array containing the ID of undeleted patient..

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PatientApi();
final patientIds = patientIds_example; // String | 

try {
    final result = api_instance.undeletePatient(patientIds);
    print(result);
} catch (e) {
    print('Exception when calling PatientApi->undeletePatient: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientIds** | **String**|  | 

### Return type

[**List<DocIdentifier>**](DocIdentifier.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

