# icure_dart_sdk.api.Besamv2Api

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findAmpsByDmppCode**](Besamv2Api.md#findampsbydmppcode) | **GET** /rest/v2/be_samv2/amp/byDmppCode/{dmppCode} | Finding AMPs by dmpp code
[**findPaginatedAmpsByAtc**](Besamv2Api.md#findpaginatedampsbyatc) | **GET** /rest/v2/be_samv2/vmp/byAtc/{atcCode} | Finding AMPs by atc code with pagination.
[**findPaginatedAmpsByGroupCode**](Besamv2Api.md#findpaginatedampsbygroupcode) | **GET** /rest/v2/be_samv2/amp/byGroupCode/{vmpgCode} | Finding AMPs by group with pagination.
[**findPaginatedAmpsByGroupId**](Besamv2Api.md#findpaginatedampsbygroupid) | **GET** /rest/v2/be_samv2/amp/byGroupId/{vmpgId} | Finding AMPs by group with pagination.
[**findPaginatedAmpsByLabel**](Besamv2Api.md#findpaginatedampsbylabel) | **GET** /rest/v2/be_samv2/amp | Finding AMPs by label with pagination.
[**findPaginatedAmpsByVmpCode**](Besamv2Api.md#findpaginatedampsbyvmpcode) | **GET** /rest/v2/be_samv2/amp/byVmpCode/{vmpCode} | Finding AMPs by vmp code with pagination.
[**findPaginatedAmpsByVmpId**](Besamv2Api.md#findpaginatedampsbyvmpid) | **GET** /rest/v2/be_samv2/amp/byVmpId/{vmpId} | Finding AMPs by vmp id with pagination.
[**findPaginatedNmpsByLabel**](Besamv2Api.md#findpaginatednmpsbylabel) | **GET** /rest/v2/be_samv2/nmp | Finding NMPs by label with pagination.
[**findPaginatedVmpGroupsByLabel**](Besamv2Api.md#findpaginatedvmpgroupsbylabel) | **GET** /rest/v2/be_samv2/vmpgroup | Finding VMP groups by language label with pagination.
[**findPaginatedVmpGroupsByVmpGroupCode**](Besamv2Api.md#findpaginatedvmpgroupsbyvmpgroupcode) | **GET** /rest/v2/be_samv2/vmpgroup/byGroupCode/{vmpgCode} | Finding VMP groups by cmpgCode with pagination.
[**findPaginatedVmpsByGroupCode**](Besamv2Api.md#findpaginatedvmpsbygroupcode) | **GET** /rest/v2/be_samv2/vmp/byGroupCode/{vmpgCode} | Finding VMPs by group with pagination.
[**findPaginatedVmpsByGroupId**](Besamv2Api.md#findpaginatedvmpsbygroupid) | **GET** /rest/v2/be_samv2/vmp/byGroupId/{vmpgId} | Finding VMPs by group with pagination.
[**findPaginatedVmpsByLabel**](Besamv2Api.md#findpaginatedvmpsbylabel) | **GET** /rest/v2/be_samv2/vmp | Finding VMPs by label with pagination.
[**findPaginatedVmpsByVmpCode**](Besamv2Api.md#findpaginatedvmpsbyvmpcode) | **GET** /rest/v2/be_samv2/vmp/byVmpCode/{vmpCode} | Finding VMPs by group with pagination.
[**getSamVersion**](Besamv2Api.md#getsamversion) | **GET** /rest/v2/be_samv2/v | Get Samv2 version.
[**listAmpsByDmppCodes**](Besamv2Api.md#listampsbydmppcodes) | **POST** /rest/v2/be_samv2/amp/byDmppCodes | Finding AMPs by dmpp code
[**listAmpsByGroupCodes**](Besamv2Api.md#listampsbygroupcodes) | **POST** /rest/v2/be_samv2/amp/byGroupCodes | Finding AMPs by group.
[**listAmpsByGroupIds**](Besamv2Api.md#listampsbygroupids) | **POST** /rest/v2/be_samv2/amp/byGroupIds | Finding AMPs by group.
[**listAmpsByVmpCodes**](Besamv2Api.md#listampsbyvmpcodes) | **POST** /rest/v2/be_samv2/amp/byVmpCodes | Finding AMPs by vmp code.
[**listAmpsByVmpIds**](Besamv2Api.md#listampsbyvmpids) | **POST** /rest/v2/be_samv2/amp/byVmpIds | Finding AMPs by vmp id.
[**listNmpsByCnks**](Besamv2Api.md#listnmpsbycnks) | **POST** /rest/v2/be_samv2/nmp/byCnks | Finding NMPs by cnk id.
[**listPharmaceuticalForms**](Besamv2Api.md#listpharmaceuticalforms) | **GET** /rest/v2/be_samv2/pharmaform | List all pharmaceutical forms.
[**listSubstances**](Besamv2Api.md#listsubstances) | **GET** /rest/v2/be_samv2/substance | List all substances.
[**listVmpGroupsByVmpGroupCodes**](Besamv2Api.md#listvmpgroupsbyvmpgroupcodes) | **POST** /rest/v2/be_samv2/vmpgroup/byGroupCodes | Finding AMPs by group.
[**listVmpsByGroupIds**](Besamv2Api.md#listvmpsbygroupids) | **POST** /rest/v2/be_samv2/vmp/byGroupIds | Finding VMPs by group.
[**listVmpsByVmpCodes**](Besamv2Api.md#listvmpsbyvmpcodes) | **POST** /rest/v2/be_samv2/vmp/byVmpCodes | Finding VMPs by group.


# **findAmpsByDmppCode**
> List<AmpDto> findAmpsByDmppCode(dmppCode)

Finding AMPs by dmpp code

Returns a list of amps matched with given input. If several types are provided, paginantion is not supported

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();
final dmppCode = dmppCode_example; // String | dmppCode

try {
    final result = api_instance.findAmpsByDmppCode(dmppCode);
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->findAmpsByDmppCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dmppCode** | **String**| dmppCode | 

### Return type

[**List<AmpDto>**](AmpDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findPaginatedAmpsByAtc**
> PaginatedListAmpDto findPaginatedAmpsByAtc(atcCode, startKey, startDocumentId, limit)

Finding AMPs by atc code with pagination.

Returns a list of codes matched with given input. If several types are provided, paginantion is not supported

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();
final atcCode = atcCode_example; // String | atcCode
final startKey = startKey_example; // String | The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
final startDocumentId = startDocumentId_example; // String | A amp document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findPaginatedAmpsByAtc(atcCode, startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->findPaginatedAmpsByAtc: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **atcCode** | **String**| atcCode | 
 **startKey** | **String**| The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey | [optional] 
 **startDocumentId** | **String**| A amp document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListAmpDto**](PaginatedListAmpDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findPaginatedAmpsByGroupCode**
> PaginatedListAmpDto findPaginatedAmpsByGroupCode(vmpgCode, startKey, startDocumentId, limit)

Finding AMPs by group with pagination.

Returns a list of codes matched with given input. If several types are provided, paginantion is not supported

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();
final vmpgCode = vmpgCode_example; // String | vmpgCode
final startKey = startKey_example; // String | The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
final startDocumentId = startDocumentId_example; // String | A vmp document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findPaginatedAmpsByGroupCode(vmpgCode, startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->findPaginatedAmpsByGroupCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vmpgCode** | **String**| vmpgCode | 
 **startKey** | **String**| The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey | [optional] 
 **startDocumentId** | **String**| A vmp document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListAmpDto**](PaginatedListAmpDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findPaginatedAmpsByGroupId**
> PaginatedListAmpDto findPaginatedAmpsByGroupId(vmpgId, startKey, startDocumentId, limit)

Finding AMPs by group with pagination.

Returns a list of codes matched with given input. If several types are provided, paginantion is not supported

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();
final vmpgId = vmpgId_example; // String | vmpgCode
final startKey = startKey_example; // String | The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
final startDocumentId = startDocumentId_example; // String | A vmp document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findPaginatedAmpsByGroupId(vmpgId, startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->findPaginatedAmpsByGroupId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vmpgId** | **String**| vmpgCode | 
 **startKey** | **String**| The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey | [optional] 
 **startDocumentId** | **String**| A vmp document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListAmpDto**](PaginatedListAmpDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findPaginatedAmpsByLabel**
> PaginatedListAmpDto findPaginatedAmpsByLabel(language, label, startKey, startDocumentId, limit)

Finding AMPs by label with pagination.

Returns a list of codes matched with given input. If several types are provided, paginantion is not supported

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();
final language = language_example; // String | language
final label = label_example; // String | label
final startKey = startKey_example; // String | The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
final startDocumentId = startDocumentId_example; // String | An amp document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findPaginatedAmpsByLabel(language, label, startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->findPaginatedAmpsByLabel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | **String**| language | [optional] 
 **label** | **String**| label | [optional] 
 **startKey** | **String**| The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey | [optional] 
 **startDocumentId** | **String**| An amp document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListAmpDto**](PaginatedListAmpDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findPaginatedAmpsByVmpCode**
> PaginatedListAmpDto findPaginatedAmpsByVmpCode(vmpCode, startKey, startDocumentId, limit)

Finding AMPs by vmp code with pagination.

Returns a list of codes matched with given input. If several types are provided, paginantion is not supported

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();
final vmpCode = vmpCode_example; // String | vmpCode
final startKey = startKey_example; // String | The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
final startDocumentId = startDocumentId_example; // String | A amp document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findPaginatedAmpsByVmpCode(vmpCode, startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->findPaginatedAmpsByVmpCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vmpCode** | **String**| vmpCode | 
 **startKey** | **String**| The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey | [optional] 
 **startDocumentId** | **String**| A amp document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListAmpDto**](PaginatedListAmpDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findPaginatedAmpsByVmpId**
> PaginatedListAmpDto findPaginatedAmpsByVmpId(vmpId, startKey, startDocumentId, limit)

Finding AMPs by vmp id with pagination.

Returns a list of codes matched with given input. If several types are provided, paginantion is not supported

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();
final vmpId = vmpId_example; // String | vmpgCode
final startKey = startKey_example; // String | The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
final startDocumentId = startDocumentId_example; // String | A amp document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findPaginatedAmpsByVmpId(vmpId, startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->findPaginatedAmpsByVmpId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vmpId** | **String**| vmpgCode | 
 **startKey** | **String**| The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey | [optional] 
 **startDocumentId** | **String**| A amp document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListAmpDto**](PaginatedListAmpDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findPaginatedNmpsByLabel**
> PaginatedListNmpDto findPaginatedNmpsByLabel(language, label, startKey, startDocumentId, limit)

Finding NMPs by label with pagination.

Returns a paginated list of NMPs by matching label. Matches occur per word

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();
final language = language_example; // String | language
final label = label_example; // String | label
final startKey = startKey_example; // String | The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
final startDocumentId = startDocumentId_example; // String | A vmp document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findPaginatedNmpsByLabel(language, label, startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->findPaginatedNmpsByLabel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | **String**| language | [optional] 
 **label** | **String**| label | [optional] 
 **startKey** | **String**| The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey | [optional] 
 **startDocumentId** | **String**| A vmp document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListNmpDto**](PaginatedListNmpDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findPaginatedVmpGroupsByLabel**
> PaginatedListVmpGroupDto findPaginatedVmpGroupsByLabel(language, label, startKey, startDocumentId, limit)

Finding VMP groups by language label with pagination.

Returns a list of codes matched with given input. If several types are provided, paginantion is not supported

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();
final language = language_example; // String | language
final label = label_example; // String | label
final startKey = startKey_example; // String | The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
final startDocumentId = startDocumentId_example; // String | A vmpgroup document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findPaginatedVmpGroupsByLabel(language, label, startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->findPaginatedVmpGroupsByLabel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | **String**| language | [optional] 
 **label** | **String**| label | [optional] 
 **startKey** | **String**| The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey | [optional] 
 **startDocumentId** | **String**| A vmpgroup document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListVmpGroupDto**](PaginatedListVmpGroupDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findPaginatedVmpGroupsByVmpGroupCode**
> PaginatedListVmpGroupDto findPaginatedVmpGroupsByVmpGroupCode(vmpgCode, startKey, startDocumentId, limit)

Finding VMP groups by cmpgCode with pagination.

Returns a list of codes matched with given input. If several types are provided, paginantion is not supported

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();
final vmpgCode = vmpgCode_example; // String | vmpgCode
final startKey = startKey_example; // String | The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
final startDocumentId = startDocumentId_example; // String | A vmpgroup document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findPaginatedVmpGroupsByVmpGroupCode(vmpgCode, startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->findPaginatedVmpGroupsByVmpGroupCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vmpgCode** | **String**| vmpgCode | 
 **startKey** | **String**| The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey | [optional] 
 **startDocumentId** | **String**| A vmpgroup document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListVmpGroupDto**](PaginatedListVmpGroupDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findPaginatedVmpsByGroupCode**
> PaginatedListVmpDto findPaginatedVmpsByGroupCode(vmpgCode, startKey, startDocumentId, limit)

Finding VMPs by group with pagination.

Returns a list of codes matched with given input. If several types are provided, paginantion is not supported

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();
final vmpgCode = vmpgCode_example; // String | vmpgCode
final startKey = startKey_example; // String | The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
final startDocumentId = startDocumentId_example; // String | A vmp document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findPaginatedVmpsByGroupCode(vmpgCode, startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->findPaginatedVmpsByGroupCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vmpgCode** | **String**| vmpgCode | 
 **startKey** | **String**| The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey | [optional] 
 **startDocumentId** | **String**| A vmp document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListVmpDto**](PaginatedListVmpDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findPaginatedVmpsByGroupId**
> PaginatedListVmpDto findPaginatedVmpsByGroupId(vmpgId, startKey, startDocumentId, limit)

Finding VMPs by group with pagination.

Returns a list of codes matched with given input. If several types are provided, paginantion is not supported

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();
final vmpgId = vmpgId_example; // String | vmpgId
final startKey = startKey_example; // String | The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
final startDocumentId = startDocumentId_example; // String | A vmp document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findPaginatedVmpsByGroupId(vmpgId, startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->findPaginatedVmpsByGroupId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vmpgId** | **String**| vmpgId | 
 **startKey** | **String**| The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey | [optional] 
 **startDocumentId** | **String**| A vmp document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListVmpDto**](PaginatedListVmpDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findPaginatedVmpsByLabel**
> PaginatedListVmpDto findPaginatedVmpsByLabel(language, label, startKey, startDocumentId, limit)

Finding VMPs by label with pagination.

Returns a paginated list of VMPs by matching label. Matches occur per word

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();
final language = language_example; // String | language
final label = label_example; // String | label
final startKey = startKey_example; // String | The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
final startDocumentId = startDocumentId_example; // String | A vmp document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findPaginatedVmpsByLabel(language, label, startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->findPaginatedVmpsByLabel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | **String**| language | [optional] 
 **label** | **String**| label | [optional] 
 **startKey** | **String**| The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey | [optional] 
 **startDocumentId** | **String**| A vmp document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListVmpDto**](PaginatedListVmpDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findPaginatedVmpsByVmpCode**
> PaginatedListVmpDto findPaginatedVmpsByVmpCode(vmpCode, startKey, startDocumentId, limit)

Finding VMPs by group with pagination.

Returns a list of codes matched with given input. If several types are provided, paginantion is not supported

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();
final vmpCode = vmpCode_example; // String | vmpCode
final startKey = startKey_example; // String | The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
final startDocumentId = startDocumentId_example; // String | A vmp document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.findPaginatedVmpsByVmpCode(vmpCode, startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->findPaginatedVmpsByVmpCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vmpCode** | **String**| vmpCode | 
 **startKey** | **String**| The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey | [optional] 
 **startDocumentId** | **String**| A vmp document ID | [optional] 
 **limit** | **int**| Number of rows | [optional] 

### Return type

[**PaginatedListVmpDto**](PaginatedListVmpDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSamVersion**
> SamVersionDto getSamVersion()

Get Samv2 version.

Returns a list of codes matched with given input. If several types are provided, paginantion is not supported

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();

try {
    final result = api_instance.getSamVersion();
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->getSamVersion: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SamVersionDto**](SamVersionDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAmpsByDmppCodes**
> List<AmpDto> listAmpsByDmppCodes(listOfIdsDto)

Finding AMPs by dmpp code

Returns a list of amps matched with given input. If several types are provided, paginantion is not supported

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.listAmpsByDmppCodes(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->listAmpsByDmppCodes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<AmpDto>**](AmpDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAmpsByGroupCodes**
> List<AmpDto> listAmpsByGroupCodes(listOfIdsDto)

Finding AMPs by group.

Returns a list of codes matched with given input. If several types are provided, paginantion is not supported

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.listAmpsByGroupCodes(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->listAmpsByGroupCodes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<AmpDto>**](AmpDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAmpsByGroupIds**
> List<AmpDto> listAmpsByGroupIds(listOfIdsDto)

Finding AMPs by group.

Returns a list of codes matched with given input. If several types are provided, paginantion is not supported

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.listAmpsByGroupIds(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->listAmpsByGroupIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<AmpDto>**](AmpDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAmpsByVmpCodes**
> List<AmpDto> listAmpsByVmpCodes(listOfIdsDto)

Finding AMPs by vmp code.

Returns a list of codes matched with given input. If several types are provided, paginantion is not supported

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.listAmpsByVmpCodes(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->listAmpsByVmpCodes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<AmpDto>**](AmpDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAmpsByVmpIds**
> List<AmpDto> listAmpsByVmpIds(listOfIdsDto)

Finding AMPs by vmp id.

Returns a list of codes matched with given input. If several types are provided, paginantion is not supported

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.listAmpsByVmpIds(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->listAmpsByVmpIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<AmpDto>**](AmpDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listNmpsByCnks**
> List<NmpDto> listNmpsByCnks(listOfIdsDto)

Finding NMPs by cnk id.

Returns a list of codes matched with given input. If several types are provided, paginantion is not supported

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.listNmpsByCnks(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->listNmpsByCnks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<NmpDto>**](NmpDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPharmaceuticalForms**
> List<PharmaceuticalFormDto> listPharmaceuticalForms()

List all pharmaceutical forms.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();

try {
    final result = api_instance.listPharmaceuticalForms();
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->listPharmaceuticalForms: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<PharmaceuticalFormDto>**](PharmaceuticalFormDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSubstances**
> List<SubstanceDto> listSubstances()

List all substances.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();

try {
    final result = api_instance.listSubstances();
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->listSubstances: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SubstanceDto>**](SubstanceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listVmpGroupsByVmpGroupCodes**
> List<VmpGroupDto> listVmpGroupsByVmpGroupCodes(listOfIdsDto)

Finding AMPs by group.

Returns a list of group codes matched with given input. If several types are provided, paginantion is not supported

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.listVmpGroupsByVmpGroupCodes(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->listVmpGroupsByVmpGroupCodes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<VmpGroupDto>**](VmpGroupDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listVmpsByGroupIds**
> List<VmpDto> listVmpsByGroupIds(listOfIdsDto)

Finding VMPs by group.

Returns a list of codes matched with given input. If several types are provided, paginantion is not supported

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.listVmpsByGroupIds(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->listVmpsByGroupIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<VmpDto>**](VmpDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listVmpsByVmpCodes**
> List<VmpDto> listVmpsByVmpCodes(listOfIdsDto)

Finding VMPs by group.

Returns a list of codes matched with given input. If several types are provided, paginantion is not supported

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = Besamv2Api();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.listVmpsByVmpCodes(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling Besamv2Api->listVmpsByVmpCodes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<VmpDto>**](VmpDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

