# openapi.api.HealthcarePartyApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createHealthcareParty**](HealthcarePartyApi.md#createhealthcareparty) | **POST** /rest/v2/hcparty | Create a healthcare party
[**createHealthcarePartyInGroup**](HealthcarePartyApi.md#createhealthcarepartyingroup) | **POST** /rest/v2/hcparty/inGroup/{groupId} | Create a healthcare party
[**deleteHealthcareParties**](HealthcarePartyApi.md#deletehealthcareparties) | **POST** /rest/v2/hcparty/delete/batch | Delete healthcare parties
[**deleteHealthcarePartiesInGroup**](HealthcarePartyApi.md#deletehealthcarepartiesingroup) | **POST** /rest/v2/hcparty/delete/batch/inGroup/{groupId} | Delete a healthcare party
[**filterHealthPartiesBy**](HealthcarePartyApi.md#filterhealthpartiesby) | **POST** /rest/v2/hcparty/filter | Filter healthcare parties for the current user (HcParty)
[**findHealthcarePartiesBy**](HealthcarePartyApi.md#findhealthcarepartiesby) | **GET** /rest/v2/hcparty | List healthcare parties with(out) pagination
[**findHealthcarePartiesByName**](HealthcarePartyApi.md#findhealthcarepartiesbyname) | **GET** /rest/v2/hcparty/byName | Find healthcare parties by name with(out) pagination
[**findHealthcarePartiesBySpecialityAndPostCode**](HealthcarePartyApi.md#findhealthcarepartiesbyspecialityandpostcode) | **GET** /rest/v2/hcparty/bySpecialityAndPostCode/{type}/{spec}/{firstCode}/to/{lastCode} | Find healthcare parties by name with(out) pagination
[**findHealthcarePartiesBySsinOrNihii**](HealthcarePartyApi.md#findhealthcarepartiesbyssinornihii) | **GET** /rest/v2/hcparty/byNihiiOrSsin/{searchValue} | Find healthcare parties by nihii or ssin with(out) pagination
[**getCurrentHealthcareParty**](HealthcarePartyApi.md#getcurrenthealthcareparty) | **GET** /rest/v2/hcparty/current | Get the current healthcare party if logged in.
[**getHcPartyKeysForDelegate**](HealthcarePartyApi.md#gethcpartykeysfordelegate) | **GET** /rest/v2/hcparty/byKeys/{healthcarePartyId} | Get the HcParty encrypted AES keys indexed by owner
[**getHealthcareParties**](HealthcarePartyApi.md#gethealthcareparties) | **POST** /rest/v2/hcparty/byIds | Get healthcareParties by their IDs
[**getHealthcareParty**](HealthcarePartyApi.md#gethealthcareparty) | **GET** /rest/v2/hcparty/{healthcarePartyId} | Get a healthcareParty by his ID
[**getPublicKey**](HealthcarePartyApi.md#getpublickey) | **GET** /rest/v2/hcparty/{healthcarePartyId}/publicKey | Get public key of a healthcare party
[**listHealthcarePartiesByName**](HealthcarePartyApi.md#listhealthcarepartiesbyname) | **GET** /rest/v2/hcparty/byNameStrict/{name} | Find healthcare parties by name with(out) pagination
[**listHealthcarePartiesByParentId**](HealthcarePartyApi.md#listhealthcarepartiesbyparentid) | **GET** /rest/v2/hcparty/{parentId}/children | Find children of an healthcare parties
[**matchHealthcarePartiesBy**](HealthcarePartyApi.md#matchhealthcarepartiesby) | **POST** /rest/v2/hcparty/match | Get ids of healthcare party matching the provided filter for the current user (HcParty) 
[**modifyHealthcareParty**](HealthcarePartyApi.md#modifyhealthcareparty) | **PUT** /rest/v2/hcparty | Modify a Healthcare Party.
[**modifyHealthcarePartyInGroup**](HealthcarePartyApi.md#modifyhealthcarepartyingroup) | **PUT** /rest/v2/hcparty/inGroup/{groupId} | Modify a Healthcare Party.


# **createHealthcareParty**
> HealthcarePartyDto createHealthcareParty(healthcarePartyDto)

Create a healthcare party

One of Name or Last name+First name, Nihii, and Public key are required.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HealthcarePartyApi();
final healthcarePartyDto = HealthcarePartyDto(); // HealthcarePartyDto | 

try {
    final result = api_instance.createHealthcareParty(healthcarePartyDto);
    print(result);
} catch (e) {
    print('Exception when calling HealthcarePartyApi->createHealthcareParty: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **healthcarePartyDto** | [**HealthcarePartyDto**](HealthcarePartyDto.md)|  | 

### Return type

[**HealthcarePartyDto**](HealthcarePartyDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createHealthcarePartyInGroup**
> HealthcarePartyDto createHealthcarePartyInGroup(groupId, healthcarePartyDto)

Create a healthcare party

One of Name or Last name+First name, Nihii, and Public key are required.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HealthcarePartyApi();
final groupId = groupId_example; // String | 
final healthcarePartyDto = HealthcarePartyDto(); // HealthcarePartyDto | 

try {
    final result = api_instance.createHealthcarePartyInGroup(groupId, healthcarePartyDto);
    print(result);
} catch (e) {
    print('Exception when calling HealthcarePartyApi->createHealthcarePartyInGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | 
 **healthcarePartyDto** | [**HealthcarePartyDto**](HealthcarePartyDto.md)|  | 

### Return type

[**HealthcarePartyDto**](HealthcarePartyDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteHealthcareParties**
> List<DocIdentifier> deleteHealthcareParties(listOfIdsDto)

Delete healthcare parties

Deleting healthcareParties. Response is an array containing the id of deleted healthcare parties.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HealthcarePartyApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.deleteHealthcareParties(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling HealthcarePartyApi->deleteHealthcareParties: $e\n');
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

# **deleteHealthcarePartiesInGroup**
> List<DocIdentifier> deleteHealthcarePartiesInGroup(groupId, listOfIdsDto)

Delete a healthcare party

Deleting a healthcareParty. Response is an array containing the id of deleted healthcare party.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HealthcarePartyApi();
final groupId = groupId_example; // String | 
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.deleteHealthcarePartiesInGroup(groupId, listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling HealthcarePartyApi->deleteHealthcarePartiesInGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | 
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<DocIdentifier>**](DocIdentifier.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filterHealthPartiesBy**
> PaginatedListHealthcarePartyDto filterHealthPartiesBy(filterChainHealthcareParty, startDocumentId, limit)

Filter healthcare parties for the current user (HcParty)

Returns a list of healthcare party along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HealthcarePartyApi();
final filterChainHealthcareParty = FilterChainHealthcareParty(); // FilterChainHealthcareParty | 
final startDocumentId = startDocumentId_example; // String | A HealthcareParty document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.filterHealthPartiesBy(filterChainHealthcareParty, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling HealthcarePartyApi->filterHealthPartiesBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterChainHealthcareParty** | [**FilterChainHealthcareParty**](FilterChainHealthcareParty.md)|  | 
 **startDocumentId** | **String**| A HealthcareParty document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListHealthcarePartyDto**](PaginatedListHealthcarePartyDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findHealthcarePartiesBy**
> PaginatedListHealthcarePartyDto findHealthcarePartiesBy(startKey, startDocumentId, limit, desc)

List healthcare parties with(out) pagination

Returns a list of healthcare parties.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HealthcarePartyApi();
final startKey = startKey_example; // String | A healthcare party Last name
final startDocumentId = startDocumentId_example; // String | A healthcare party document ID
final limit = 56; // int | Number of rows
final desc = true; // bool | Descending

try {
    final result = api_instance.findHealthcarePartiesBy(startKey, startDocumentId, limit, desc);
    print(result);
} catch (e) {
    print('Exception when calling HealthcarePartyApi->findHealthcarePartiesBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startKey** | **String**| A healthcare party Last name | [optional] 
 **startDocumentId** | **String**| A healthcare party document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 
 **desc** | **bool**| Descending | [optional] 

### Return type

[**PaginatedListHealthcarePartyDto**](PaginatedListHealthcarePartyDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findHealthcarePartiesByName**
> PaginatedListHealthcarePartyDto findHealthcarePartiesByName(name, startKey, startDocumentId, limit, desc)

Find healthcare parties by name with(out) pagination

Returns a list of healthcare parties.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HealthcarePartyApi();
final name = name_example; // String | The Last name search value
final startKey = startKey_example; // String | A healthcare party Last name
final startDocumentId = startDocumentId_example; // String | A healthcare party document ID
final limit = 56; // int | Number of rows
final desc = true; // bool | Descending

try {
    final result = api_instance.findHealthcarePartiesByName(name, startKey, startDocumentId, limit, desc);
    print(result);
} catch (e) {
    print('Exception when calling HealthcarePartyApi->findHealthcarePartiesByName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The Last name search value | [optional] 
 **startKey** | **String**| A healthcare party Last name | [optional] 
 **startDocumentId** | **String**| A healthcare party document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 
 **desc** | **bool**| Descending | [optional] 

### Return type

[**PaginatedListHealthcarePartyDto**](PaginatedListHealthcarePartyDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findHealthcarePartiesBySpecialityAndPostCode**
> PaginatedListHealthcarePartyDto findHealthcarePartiesBySpecialityAndPostCode(type, spec, firstCode, lastCode, limit)

Find healthcare parties by name with(out) pagination

Returns a list of healthcare parties.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HealthcarePartyApi();
final type = type_example; // String | The type of the HCP (persphysician)
final spec = spec_example; // String | The speciality of the HCP
final firstCode = firstCode_example; // String | The first postCode for the HCP
final lastCode = lastCode_example; // String | The last postCode for the HCP
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findHealthcarePartiesBySpecialityAndPostCode(type, spec, firstCode, lastCode, limit);
    print(result);
} catch (e) {
    print('Exception when calling HealthcarePartyApi->findHealthcarePartiesBySpecialityAndPostCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The type of the HCP (persphysician) | 
 **spec** | **String**| The speciality of the HCP | 
 **firstCode** | **String**| The first postCode for the HCP | 
 **lastCode** | **String**| The last postCode for the HCP | 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListHealthcarePartyDto**](PaginatedListHealthcarePartyDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findHealthcarePartiesBySsinOrNihii**
> PaginatedListHealthcarePartyDto findHealthcarePartiesBySsinOrNihii(searchValue, startKey, startDocumentId, limit, desc)

Find healthcare parties by nihii or ssin with(out) pagination

Returns a list of healthcare parties.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HealthcarePartyApi();
final searchValue = searchValue_example; // String | 
final startKey = startKey_example; // String | A healthcare party Last name
final startDocumentId = startDocumentId_example; // String | A healthcare party document ID
final limit = 56; // int | Number of rows
final desc = true; // bool | Descending

try {
    final result = api_instance.findHealthcarePartiesBySsinOrNihii(searchValue, startKey, startDocumentId, limit, desc);
    print(result);
} catch (e) {
    print('Exception when calling HealthcarePartyApi->findHealthcarePartiesBySsinOrNihii: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchValue** | **String**|  | 
 **startKey** | **String**| A healthcare party Last name | [optional] 
 **startDocumentId** | **String**| A healthcare party document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 
 **desc** | **bool**| Descending | [optional] 

### Return type

[**PaginatedListHealthcarePartyDto**](PaginatedListHealthcarePartyDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrentHealthcareParty**
> HealthcarePartyDto getCurrentHealthcareParty()

Get the current healthcare party if logged in.

General information about the current healthcare Party

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HealthcarePartyApi();

try {
    final result = api_instance.getCurrentHealthcareParty();
    print(result);
} catch (e) {
    print('Exception when calling HealthcarePartyApi->getCurrentHealthcareParty: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HealthcarePartyDto**](HealthcarePartyDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHcPartyKeysForDelegate**
> Map<String, String> getHcPartyKeysForDelegate(healthcarePartyId)

Get the HcParty encrypted AES keys indexed by owner

(key, value) of the map is as follows: (ID of the owner of the encrypted AES key, encrypted AES key)

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HealthcarePartyApi();
final healthcarePartyId = healthcarePartyId_example; // String | 

try {
    final result = api_instance.getHcPartyKeysForDelegate(healthcarePartyId);
    print(result);
} catch (e) {
    print('Exception when calling HealthcarePartyApi->getHcPartyKeysForDelegate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **healthcarePartyId** | **String**|  | 

### Return type

**Map<String, String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHealthcareParties**
> List<HealthcarePartyDto> getHealthcareParties(listOfIdsDto)

Get healthcareParties by their IDs

General information about the healthcare Party

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HealthcarePartyApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.getHealthcareParties(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling HealthcarePartyApi->getHealthcareParties: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<HealthcarePartyDto>**](HealthcarePartyDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHealthcareParty**
> HealthcarePartyDto getHealthcareParty(healthcarePartyId)

Get a healthcareParty by his ID

General information about the healthcare Party

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HealthcarePartyApi();
final healthcarePartyId = healthcarePartyId_example; // String | 

try {
    final result = api_instance.getHealthcareParty(healthcarePartyId);
    print(result);
} catch (e) {
    print('Exception when calling HealthcarePartyApi->getHealthcareParty: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **healthcarePartyId** | **String**|  | 

### Return type

[**HealthcarePartyDto**](HealthcarePartyDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPublicKey**
> PublicKeyDto getPublicKey(healthcarePartyId)

Get public key of a healthcare party

Returns the public key of a healthcare party in Hex

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HealthcarePartyApi();
final healthcarePartyId = healthcarePartyId_example; // String | 

try {
    final result = api_instance.getPublicKey(healthcarePartyId);
    print(result);
} catch (e) {
    print('Exception when calling HealthcarePartyApi->getPublicKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **healthcarePartyId** | **String**|  | 

### Return type

[**PublicKeyDto**](PublicKeyDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listHealthcarePartiesByName**
> List<HealthcarePartyDto> listHealthcarePartiesByName(name)

Find healthcare parties by name with(out) pagination

Returns a list of healthcare parties.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HealthcarePartyApi();
final name = name_example; // String | The Last name search value

try {
    final result = api_instance.listHealthcarePartiesByName(name);
    print(result);
} catch (e) {
    print('Exception when calling HealthcarePartyApi->listHealthcarePartiesByName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The Last name search value | 

### Return type

[**List<HealthcarePartyDto>**](HealthcarePartyDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listHealthcarePartiesByParentId**
> List<HealthcarePartyDto> listHealthcarePartiesByParentId(parentId)

Find children of an healthcare parties

Return a list of children hcp.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HealthcarePartyApi();
final parentId = parentId_example; // String | 

try {
    final result = api_instance.listHealthcarePartiesByParentId(parentId);
    print(result);
} catch (e) {
    print('Exception when calling HealthcarePartyApi->listHealthcarePartiesByParentId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parentId** | **String**|  | 

### Return type

[**List<HealthcarePartyDto>**](HealthcarePartyDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **matchHealthcarePartiesBy**
> List<String> matchHealthcarePartiesBy(abstractFilterDtoHealthcareParty)

Get ids of healthcare party matching the provided filter for the current user (HcParty) 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HealthcarePartyApi();
final abstractFilterDtoHealthcareParty = AbstractFilterDtoHealthcareParty(); // AbstractFilterDtoHealthcareParty | 

try {
    final result = api_instance.matchHealthcarePartiesBy(abstractFilterDtoHealthcareParty);
    print(result);
} catch (e) {
    print('Exception when calling HealthcarePartyApi->matchHealthcarePartiesBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **abstractFilterDtoHealthcareParty** | [**AbstractFilterDtoHealthcareParty**](AbstractFilterDtoHealthcareParty.md)|  | 

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyHealthcareParty**
> HealthcarePartyDto modifyHealthcareParty(healthcarePartyDto)

Modify a Healthcare Party.

No particular return value. It's just a message.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HealthcarePartyApi();
final healthcarePartyDto = HealthcarePartyDto(); // HealthcarePartyDto | 

try {
    final result = api_instance.modifyHealthcareParty(healthcarePartyDto);
    print(result);
} catch (e) {
    print('Exception when calling HealthcarePartyApi->modifyHealthcareParty: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **healthcarePartyDto** | [**HealthcarePartyDto**](HealthcarePartyDto.md)|  | 

### Return type

[**HealthcarePartyDto**](HealthcarePartyDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyHealthcarePartyInGroup**
> HealthcarePartyDto modifyHealthcarePartyInGroup(groupId, healthcarePartyDto)

Modify a Healthcare Party.

No particular return value. It's just a message.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HealthcarePartyApi();
final groupId = groupId_example; // String | 
final healthcarePartyDto = HealthcarePartyDto(); // HealthcarePartyDto | 

try {
    final result = api_instance.modifyHealthcarePartyInGroup(groupId, healthcarePartyDto);
    print(result);
} catch (e) {
    print('Exception when calling HealthcarePartyApi->modifyHealthcarePartyInGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | 
 **healthcarePartyDto** | [**HealthcarePartyDto**](HealthcarePartyDto.md)|  | 

### Return type

[**HealthcarePartyDto**](HealthcarePartyDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

