# icure_dart_sdk.api.AccessLogApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAccessLog**](AccessLogApi.md#createaccesslog) | **POST** /rest/v1/accesslog | Creates an access log
[**deleteAccessLogs**](AccessLogApi.md#deleteaccesslogs) | **
POST** /rest/v1/accesslog/delete/batch | Deletes an access log
[**findAccessLogsBy**](AccessLogApi.md#findaccesslogsby) | **
GET** /rest/v1/accesslog | Get Paginated List of Access logs
[**findAccessLogsByUserAfterDate**](AccessLogApi.md#findaccesslogsbyuserafterdate) | **
GET** /rest/v1/accesslog/byUser | Get Paginated List of Access logs by user after date
[**getAccessLog**](AccessLogApi.md#getaccesslog) | **GET** /rest/v1/accesslog/{accessLogId} | Gets an access log
[**listAccessLogsByHCPartyAndPatientForeignKeys**](AccessLogApi.md#listaccesslogsbyhcpartyandpatientforeignkeys) | **
GET** /rest/v1/accesslog/byHcPartySecretForeignKeys | List access logs found By Healthcare Party and secret foreign keyelementIds.
[**modifyAccessLog**](AccessLogApi.md#modifyaccesslog) | **PUT** /rest/v1/accesslog | Modifies an access log


# **createAccessLog**
> AccessLogDto createAccessLog(accessLogDto)

Creates an access log

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = AccessLogApi();
final accessLogDto = AccessLogDto(); // AccessLogDto | 

try {
    final result = api_instance.createAccessLog(accessLogDto);
    print(result);
} catch (e) {
    print('Exception when calling AccessLogApi->createAccessLog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessLogDto** | [**AccessLogDto**](AccessLogDto.md)|  | 

### Return type

[**AccessLogDto**](AccessLogDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAccessLogs**
> List<DocIdentifier> deleteAccessLogs(listOfIdsDto)

Deletes an access log

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = AccessLogApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.deleteAccessLogs(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling AccessLogApi->deleteAccessLogs: $e\n');
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

# **findAccessLogsBy**
> PaginatedListAccessLogDto findAccessLogsBy(fromEpoch, toEpoch, startKey, startDocumentId, limit, descending)

Get Paginated List of Access logs

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = AccessLogApi();
final fromEpoch = 789; // int | 
final toEpoch = 789; // int | 
final startKey = 789; // int | 
final startDocumentId = startDocumentId_example; // String | 
final limit = 56; // int | 
final descending = true; // bool | 

try {
    final result = api_instance.findAccessLogsBy(fromEpoch, toEpoch, startKey, startDocumentId, limit, descending);
    print(result);
} catch (e) {
    print('Exception when calling AccessLogApi->findAccessLogsBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromEpoch** | **int**|  | [optional] 
 **toEpoch** | **int**|  | [optional] 
 **startKey** | **int**|  | [optional] 
 **startDocumentId** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] 
 **descending** | **bool**|  | [optional] 

### Return type

[**PaginatedListAccessLogDto**](PaginatedListAccessLogDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAccessLogsByUserAfterDate**
> PaginatedListAccessLogDto findAccessLogsByUserAfterDate(userId, accessType, startDate, startKey, startDocumentId, limit, descending)

Get Paginated List of Access logs by user after date

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = AccessLogApi();
final userId = userId_example; // String | A User ID
final accessType = accessType_example; // String | The type of access (COMPUTER or USER)
final startDate = 789; // int | The start search epoch
final startKey = startKey_example; // String | The start key for pagination
final startDocumentId = startDocumentId_example; // String | A patient document ID
final limit = 56; // int | Number of rows
final descending = true; // bool | Descending order

try {
    final result = api_instance.findAccessLogsByUserAfterDate(userId, accessType, startDate, startKey, startDocumentId, limit, descending);
    print(result);
} catch (e) {
    print('Exception when calling AccessLogApi->findAccessLogsByUserAfterDate: $e\n');
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
 **limit** | **int**| Number of rows | [optional] 
 **descending** | **bool**| Descending order | [optional] 

### Return type

[**PaginatedListAccessLogDto**](PaginatedListAccessLogDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccessLog**
> AccessLogDto getAccessLog(accessLogId)

Gets an access log

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = AccessLogApi();
final accessLogId = accessLogId_example; // String | 

try {
    final result = api_instance.getAccessLog(accessLogId);
    print(result);
} catch (e) {
    print('Exception when calling AccessLogApi->getAccessLog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessLogId** | **String**|  | 

### Return type

[**AccessLogDto**](AccessLogDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAccessLogsByHCPartyAndPatientForeignKeys**
> List<AccessLogDto> listAccessLogsByHCPartyAndPatientForeignKeys(hcPartyId, secretFKeys)

List access logs found By Healthcare Party and secret foreign keyelementIds.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = AccessLogApi();
final hcPartyId = hcPartyId_example; // String | 
final secretFKeys = secretFKeys_example; // String | 

try {
    final result = api_instance.listAccessLogsByHCPartyAndPatientForeignKeys(hcPartyId, secretFKeys);
    print(result);
} catch (e) {
    print('Exception when calling AccessLogApi->listAccessLogsByHCPartyAndPatientForeignKeys: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**|  | 
 **secretFKeys** | **String**|  | 

### Return type

[**List<AccessLogDto>**](AccessLogDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyAccessLog**
> AccessLogDto modifyAccessLog(accessLogDto)

Modifies an access log

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = AccessLogApi();
final accessLogDto = AccessLogDto(); // AccessLogDto | 

try {
    final result = api_instance.modifyAccessLog(accessLogDto);
    print(result);
} catch (e) {
    print('Exception when calling AccessLogApi->modifyAccessLog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessLogDto** | [**AccessLogDto**](AccessLogDto.md)|  | 

### Return type

[**AccessLogDto**](AccessLogDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

