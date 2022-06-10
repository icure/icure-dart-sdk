# icure_dart_sdk.api.CodeApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCode**](CodeApi.md#createcode) | **POST** /rest/v1/code | Create a Code
[**filterCodesBy**](CodeApi.md#filtercodesby) | **POST** /rest/v1/code/filter | Filter codes
[**findCodesByLabel**](CodeApi.md#findcodesbylabel) | **
GET** /rest/v1/code/byLabel | Finding codes by code, type and version with pagination.
[**findCodesByLink**](CodeApi.md#findcodesbylink) | **
GET** /rest/v1/code/byLink/{linkType} | Finding codes by code, type and version with pagination.
[**findCodesByType**](CodeApi.md#findcodesbytype) | **
GET** /rest/v1/code | Finding codes by code, type and version with pagination.
[**getCode**](CodeApi.md#getcode) | **GET** /rest/v1/code/{codeId} | Get a code
[**getCodeWithParts**](CodeApi.md#getcodewithparts) | **GET** /rest/v1/code/{type}/{code}/{version} | Get a code
[**getCodes**](CodeApi.md#getcodes) | **POST** /rest/v1/code/byIds | Get a list of codes by ids
[**importCodes**](CodeApi.md#importcodes) | **POST** /rest/v1/code/{codeType} | Import codes
[**listCodeTypesBy**](CodeApi.md#listcodetypesby) | **GET** /rest/v1/code/codetype/byRegionType | Finding code types.
[**listCodesByRegionTypeCodeVersion**](CodeApi.md#listcodesbyregiontypecodeversion) | **
GET** /rest/v1/code/byRegionTypeCode | Finding codes by code, type and version
[**listTagTypesBy**](CodeApi.md#listtagtypesby) | **GET** /rest/v1/code/tagtype/byRegionType | Finding tag types.
[**matchCodesBy**](CodeApi.md#matchcodesby) | **
POST** /rest/v1/code/match | Get ids of code matching the provided filter for the current user (HcParty)
[**modifyCode**](CodeApi.md#modifycode) | **PUT** /rest/v1/code | Modify a code


# **createCode**
> CodeDto createCode(codeDto)

Create a Code

Type, Code and Version are required.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CodeApi();
final codeDto = CodeDto(); // CodeDto | 

try {
    final result = api_instance.createCode(codeDto);
    print(result);
} catch (e) {
    print('Exception when calling CodeApi->createCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codeDto** | [**CodeDto**](CodeDto.md)|  | 

### Return type

[**CodeDto**](CodeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filterCodesBy**
> PaginatedListCodeDto filterCodesBy(startKey, startDocumentId, limit, skip, sort, desc, filterChainCode)

Filter codes 

Returns a list of codes along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CodeApi();
final startKey = startKey_example; // String | The start key for pagination, depends on the filters used
final startDocumentId = startDocumentId_example; // String | A patient document ID
final limit = 56; // int | Number of rows
final skip = 56; // int | Skip rows
final sort = sort_example; // String | Sort key
final desc = true; // bool | Descending
final filterChainCode = FilterChainCode(); // FilterChainCode | 

try {
    final result = api_instance.filterCodesBy(startKey, startDocumentId, limit, skip, sort, desc, filterChainCode);
    print(result);
} catch (e) {
    print('Exception when calling CodeApi->filterCodesBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startKey** | **String**| The start key for pagination, depends on the filters used | [optional] 
 **startDocumentId** | **String**| A patient document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 
 **skip** | **int**| Skip rows | [optional] 
 **sort** | **String**| Sort key | [optional] 
 **desc** | **bool**| Descending | [optional] 
 **filterChainCode** | [**FilterChainCode**](FilterChainCode.md)|  | [optional] 

### Return type

[**PaginatedListCodeDto**](PaginatedListCodeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findCodesByLabel**
> PaginatedListCodeDto findCodesByLabel(region, types, language, label, startKey, startDocumentId, limit)

Finding codes by code, type and version with pagination.

Returns a list of codes matched with given input. If several types are provided, pagination is not supported

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CodeApi();
final region = region_example; // String | 
final types = types_example; // String | 
final language = language_example; // String | 
final label = label_example; // String | 
final startKey = startKey_example; // String | The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
final startDocumentId = startDocumentId_example; // String | A code document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findCodesByLabel(region, types, language, label, startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling CodeApi->findCodesByLabel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**|  | [optional] 
 **types** | **String**|  | [optional] 
 **language** | **String**|  | [optional] 
 **label** | **String**|  | [optional] 
 **startKey** | **String**| The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey | [optional] 
 **startDocumentId** | **String**| A code document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListCodeDto**](PaginatedListCodeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findCodesByLink**
> PaginatedListCodeDto findCodesByLink(linkType, linkedId, startKey, startDocumentId, limit)

Finding codes by code, type and version with pagination.

Returns a list of codes matched with given input.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CodeApi();
final linkType = linkType_example; // String | 
final linkedId = linkedId_example; // String | 
final startKey = startKey_example; // String | The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
final startDocumentId = startDocumentId_example; // String | A code document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findCodesByLink(linkType, linkedId, startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling CodeApi->findCodesByLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkType** | **String**|  | 
 **linkedId** | **String**|  | [optional] 
 **startKey** | **String**| The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey | [optional] 
 **startDocumentId** | **String**| A code document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListCodeDto**](PaginatedListCodeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findCodesByType**
> PaginatedListCodeDto findCodesByType(region, type, code, version, startKey, startDocumentId, limit)

Finding codes by code, type and version with pagination.

Returns a list of codes matched with given input.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CodeApi();
final region = region_example; // String | 
final type = type_example; // String | 
final code = code_example; // String | 
final version = version_example; // String | 
final startKey = startKey_example; // String | The start key for pagination
final startDocumentId = startDocumentId_example; // String | A code document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findCodesByType(region, type, code, version, startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling CodeApi->findCodesByType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**|  | [optional] 
 **type** | **String**|  | [optional] 
 **code** | **String**|  | [optional] 
 **version** | **String**|  | [optional] 
 **startKey** | **String**| The start key for pagination | [optional] 
 **startDocumentId** | **String**| A code document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListCodeDto**](PaginatedListCodeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCode**
> CodeDto getCode(codeId)

Get a code

Get a code based on ID or (code,type,version) as query strings. (code,type,version) is unique.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CodeApi();
final codeId = codeId_example; // String | Code id

try {
    final result = api_instance.getCode(codeId);
    print(result);
} catch (e) {
    print('Exception when calling CodeApi->getCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codeId** | **String**| Code id | 

### Return type

[**CodeDto**](CodeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCodeWithParts**
> CodeDto getCodeWithParts(type, code, version)

Get a code

Get a code based on ID or (code,type,version) as query strings. (code,type,version) is unique.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CodeApi();
final type = type_example; // String | Code type
final code = code_example; // String | Code code
final version = version_example; // String | Code version

try {
    final result = api_instance.getCodeWithParts(type, code, version);
    print(result);
} catch (e) {
    print('Exception when calling CodeApi->getCodeWithParts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Code type | 
 **code** | **String**| Code code | 
 **version** | **String**| Code version | 

### Return type

[**CodeDto**](CodeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCodes**
> List<CodeDto> getCodes(listOfIdsDto)

Get a list of codes by ids

Keys must be delimited by coma

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CodeApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.getCodes(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling CodeApi->getCodes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<CodeDto>**](CodeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importCodes**
> Object importCodes(codeType)

Import codes

Import codes from the resources XML file depending on the passed pathVariable

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CodeApi();
final codeType = codeType_example; // String | 

try {
    final result = api_instance.importCodes(codeType);
    print(result);
} catch (e) {
    print('Exception when calling CodeApi->importCodes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codeType** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCodeTypesBy**
> List<String> listCodeTypesBy(region, type)

Finding code types.

Returns a list of code types matched with given input.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CodeApi();
final region = region_example; // String | Code region
final type = type_example; // String | Code type

try {
    final result = api_instance.listCodeTypesBy(region, type);
    print(result);
} catch (e) {
    print('Exception when calling CodeApi->listCodeTypesBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Code region | [optional] 
 **type** | **String**| Code type | [optional] 

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCodesByRegionTypeCodeVersion**
> List<CodeDto> listCodesByRegionTypeCodeVersion(region, type, code, version)

Finding codes by code, type and version

Returns a list of codes matched with given input.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CodeApi();
final region = region_example; // String | Code region
final type = type_example; // String | Code type
final code = code_example; // String | Code code
final version = version_example; // String | Code version

try {
    final result = api_instance.listCodesByRegionTypeCodeVersion(region, type, code, version);
    print(result);
} catch (e) {
    print('Exception when calling CodeApi->listCodesByRegionTypeCodeVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Code region | [optional] 
 **type** | **String**| Code type | [optional] 
 **code** | **String**| Code code | [optional] 
 **version** | **String**| Code version | [optional] 

### Return type

[**List<CodeDto>**](CodeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTagTypesBy**
> List<String> listTagTypesBy(region, type)

Finding tag types.

Returns a list of tag types matched with given input.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CodeApi();
final region = region_example; // String | Code region
final type = type_example; // String | Code type

try {
    final result = api_instance.listTagTypesBy(region, type);
    print(result);
} catch (e) {
    print('Exception when calling CodeApi->listTagTypesBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Code region | [optional] 
 **type** | **String**| Code type | [optional] 

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **matchCodesBy**
> List<String> matchCodesBy(abstractFilterDtoCode)

Get ids of code matching the provided filter for the current user (HcParty) 

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CodeApi();
final abstractFilterDtoCode = AbstractFilterDtoCode(); // AbstractFilterDtoCode | 

try {
    final result = api_instance.matchCodesBy(abstractFilterDtoCode);
    print(result);
} catch (e) {
    print('Exception when calling CodeApi->matchCodesBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **abstractFilterDtoCode** | [**AbstractFilterDtoCode**](AbstractFilterDtoCode.md)|  | 

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyCode**
> CodeDto modifyCode(codeDto)

Modify a code

Modification of (type, code, version) is not allowed.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CodeApi();
final codeDto = CodeDto(); // CodeDto | 

try {
    final result = api_instance.modifyCode(codeDto);
    print(result);
} catch (e) {
    print('Exception when calling CodeApi->modifyCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codeDto** | [**CodeDto**](CodeDto.md)|  | 

### Return type

[**CodeDto**](CodeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

