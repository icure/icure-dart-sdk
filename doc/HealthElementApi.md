# icure_dart_sdk.api.HealthElementApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createHealthElement**](HealthElementApi.md#createhealthelement) | **
POST** /rest/v1/helement | Create a health element with the current user
[**createHealthElements**](HealthElementApi.md#createhealthelements) | **
POST** /rest/v1/helement/batch | Create a batch of healthcare elements
[**deleteHealthElements**](HealthElementApi.md#deletehealthelements) | **
POST** /rest/v1/helement/delete/batch | Delete health elements.
[**filterHealthElementsBy**](HealthElementApi.md#filterhealthelementsby) | **
POST** /rest/v1/helement/filter | Filter health elements for the current user (HcParty)
[**getHealthElement**](HealthElementApi.md#gethealthelement) | **
GET** /rest/v1/helement/{healthElementId} | Get a health element
[**getHealthElements**](HealthElementApi.md#gethealthelements) | **
POST** /rest/v1/helement/byIds | Get healthElements by batch
[**
listHealthElementsByHCPartyAndPatientForeignKeys**](HealthElementApi.md#listhealthelementsbyhcpartyandpatientforeignkeys) | **
GET** /rest/v1/helement/byHcPartySecretForeignKeys | List health elements found By Healthcare Party and secret foreign keyelementIds.
[**
listHealthElementsDelegationsStubsByHCPartyAndPatientForeignKeys**](HealthElementApi.md#listhealthelementsdelegationsstubsbyhcpartyandpatientforeignkeys) | **
GET** /rest/v1/helement/byHcPartySecretForeignKeys/delegations | List helement stubs found By Healthcare Party and secret foreign keys.
[**matchHealthElementsBy**](HealthElementApi.md#matchhealthelementsby) | **
POST** /rest/v1/helement/match | Get ids of health element matching the provided filter for the current user (HcParty)
[**modifyHealthElement**](HealthElementApi.md#modifyhealthelement) | **PUT** /rest/v1/helement | Modify a health element
[**modifyHealthElements**](HealthElementApi.md#modifyhealthelements) | **
PUT** /rest/v1/helement/batch | Modify a batch of health elements
[**newHealthElementDelegations**](HealthElementApi.md#newhealthelementdelegations) | **
POST** /rest/v1/helement/{healthElementId}/delegate | Delegates a health element to a healthcare party
[**setHealthElementsDelegations**](HealthElementApi.md#sethealthelementsdelegations) | **
POST** /rest/v1/helement/delegations | Update delegations in healthElements.


# **createHealthElement**
> HealthElementDto createHealthElement(healthElementDto)

Create a health element with the current user

Returns an instance of created health element.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = HealthElementApi();
final healthElementDto = HealthElementDto(); // HealthElementDto |

try {
    final result = api_instance.createHealthElement(healthElementDto);
    print(result);
} catch (e) {
    print('Exception when calling HealthElementApi->createHealthElement: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **healthElementDto** | [**HealthElementDto**](HealthElementDto.md)|  |

### Return type

[**HealthElementDto**](HealthElementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createHealthElements**
> List<HealthElementDto> createHealthElements(healthElementDto)

Create a batch of healthcare elements

Returns the created healthcare elements.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = HealthElementApi();
final healthElementDto = [List<HealthElementDto>()]; // List<HealthElementDto> |

try {
    final result = api_instance.createHealthElements(healthElementDto);
    print(result);
} catch (e) {
    print('Exception when calling HealthElementApi->createHealthElements: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **healthElementDto** | [**List<HealthElementDto>**](HealthElementDto.md)|  |

### Return type

[**List<HealthElementDto>**](HealthElementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteHealthElements**
> List<DocIdentifier> deleteHealthElements(listOfIdsDto)

Delete health elements.

Response is a set containing the ID's of deleted health elements.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = HealthElementApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto |

try {
    final result = api_instance.deleteHealthElements(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling HealthElementApi->deleteHealthElements: $e\n');
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

# **filterHealthElementsBy**
> PaginatedListHealthElementDto filterHealthElementsBy(filterChainHealthElement, startDocumentId, limit)

Filter health elements for the current user (HcParty)

Returns a list of health elements along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = HealthElementApi();
final filterChainHealthElement = FilterChainHealthElement(); // FilterChainHealthElement |
final startDocumentId = startDocumentId_example; // String | A HealthElement document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.filterHealthElementsBy(filterChainHealthElement, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling HealthElementApi->filterHealthElementsBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterChainHealthElement** | [**FilterChainHealthElement**](FilterChainHealthElement.md)|  |
 **startDocumentId** | **String**| A HealthElement document ID | [optional]
 **limit** | **int**| Number of rows | [optional]

### Return type

[**PaginatedListHealthElementDto**](PaginatedListHealthElementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHealthElement**
> HealthElementDto getHealthElement(healthElementId)

Get a health element

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = HealthElementApi();
final healthElementId = healthElementId_example; // String |

try {
    final result = api_instance.getHealthElement(healthElementId);
    print(result);
} catch (e) {
    print('Exception when calling HealthElementApi->getHealthElement: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **healthElementId** | **String**|  |

### Return type

[**HealthElementDto**](HealthElementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHealthElements**
> List<HealthElementDto> getHealthElements(listOfIdsDto)

Get healthElements by batch

Get a list of healthElement by ids/keys.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = HealthElementApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto |

try {
    final result = api_instance.getHealthElements(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling HealthElementApi->getHealthElements: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  |

### Return type

[**List<HealthElementDto>**](HealthElementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listHealthElementsByHCPartyAndPatientForeignKeys**
> List<HealthElementDto> listHealthElementsByHCPartyAndPatientForeignKeys(hcPartyId, secretFKeys)

List health elements found By Healthcare Party and secret foreign keyelementIds.

Keys hast to delimited by coma

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = HealthElementApi();
final hcPartyId = hcPartyId_example; // String |
final secretFKeys = secretFKeys_example; // String |

try {
    final result = api_instance.listHealthElementsByHCPartyAndPatientForeignKeys(hcPartyId, secretFKeys);
    print(result);
} catch (e) {
    print('Exception when calling HealthElementApi->listHealthElementsByHCPartyAndPatientForeignKeys: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**|  |
 **secretFKeys** | **String**|  |

### Return type

[**List<HealthElementDto>**](HealthElementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listHealthElementsDelegationsStubsByHCPartyAndPatientForeignKeys**
> List<IcureStubDto> listHealthElementsDelegationsStubsByHCPartyAndPatientForeignKeys(hcPartyId, secretFKeys)

List helement stubs found By Healthcare Party and secret foreign keys.

Keys must be delimited by coma

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = HealthElementApi();
final hcPartyId = hcPartyId_example; // String |
final secretFKeys = secretFKeys_example; // String |

try {
    final result = api_instance.listHealthElementsDelegationsStubsByHCPartyAndPatientForeignKeys(hcPartyId, secretFKeys);
    print(result);
} catch (e) {
    print('Exception when calling HealthElementApi->listHealthElementsDelegationsStubsByHCPartyAndPatientForeignKeys: $e\n');
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

# **matchHealthElementsBy**
> List<String> matchHealthElementsBy(abstractFilterDtoHealthElement)

Get ids of health element matching the provided filter for the current user (HcParty)

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = HealthElementApi();
final abstractFilterDtoHealthElement = AbstractFilterDtoHealthElement(); // AbstractFilterDtoHealthElement |

try {
    final result = api_instance.matchHealthElementsBy(abstractFilterDtoHealthElement);
    print(result);
} catch (e) {
    print('Exception when calling HealthElementApi->matchHealthElementsBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **abstractFilterDtoHealthElement** | [**AbstractFilterDtoHealthElement**](AbstractFilterDtoHealthElement.md)|  |

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyHealthElement**
> HealthElementDto modifyHealthElement(healthElementDto)

Modify a health element

Returns the modified health element.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = HealthElementApi();
final healthElementDto = HealthElementDto(); // HealthElementDto |

try {
    final result = api_instance.modifyHealthElement(healthElementDto);
    print(result);
} catch (e) {
    print('Exception when calling HealthElementApi->modifyHealthElement: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **healthElementDto** | [**HealthElementDto**](HealthElementDto.md)|  |

### Return type

[**HealthElementDto**](HealthElementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyHealthElements**
> List<HealthElementDto> modifyHealthElements(healthElementDto)

Modify a batch of health elements

Returns the modified health elements.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = HealthElementApi();
final healthElementDto = [List<HealthElementDto>()]; // List<HealthElementDto> |

try {
    final result = api_instance.modifyHealthElements(healthElementDto);
    print(result);
} catch (e) {
    print('Exception when calling HealthElementApi->modifyHealthElements: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **healthElementDto** | [**List<HealthElementDto>**](HealthElementDto.md)|  |

### Return type

[**List<HealthElementDto>**](HealthElementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newHealthElementDelegations**
> HealthElementDto newHealthElementDelegations(healthElementId, delegationDto)

Delegates a health element to a healthcare party

It delegates a health element to a healthcare party (By current healthcare party). Returns the element with new delegations.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = HealthElementApi();
final healthElementId = healthElementId_example; // String |
final delegationDto = [List<DelegationDto>()]; // List<DelegationDto> |

try {
    final result = api_instance.newHealthElementDelegations(healthElementId, delegationDto);
    print(result);
} catch (e) {
    print('Exception when calling HealthElementApi->newHealthElementDelegations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **healthElementId** | **String**|  |
 **delegationDto** | [**List<DelegationDto>**](DelegationDto.md)|  |

### Return type

[**HealthElementDto**](HealthElementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setHealthElementsDelegations**
> List<HealthElementDto> setHealthElementsDelegations(icureStubDto)

Update delegations in healthElements.

Keys must be delimited by coma

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = HealthElementApi();
final icureStubDto = [List<IcureStubDto>()]; // List<IcureStubDto> |

try {
    final result = api_instance.setHealthElementsDelegations(icureStubDto);
    print(result);
} catch (e) {
    print('Exception when calling HealthElementApi->setHealthElementsDelegations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **icureStubDto** | [**List<IcureStubDto>**](IcureStubDto.md)|  |

### Return type

[**List<HealthElementDto>**](HealthElementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
