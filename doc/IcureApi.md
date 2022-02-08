# openapi.api.IcureApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getIndexingInfo**](IcureApi.md#getindexinginfo) | **GET** /rest/v2/icure/i | Get index info
[**getProcessInfo**](IcureApi.md#getprocessinfo) | **GET** /rest/v2/icure/p | Get process info
[**getReplicationInfo**](IcureApi.md#getreplicationinfo) | **GET** /rest/v2/icure/r | Get replication info
[**getReplicatorInfo**](IcureApi.md#getreplicatorinfo) | **GET** /rest/v2/icure/r/{id} | Get replication info
[**getVersion**](IcureApi.md#getversion) | **GET** /rest/v2/icure/v | Get version
[**isReady**](IcureApi.md#isready) | **GET** /rest/v2/icure/ok | Check if a user exists
[**resolveContactsConflicts**](IcureApi.md#resolvecontactsconflicts) | **POST** /rest/v2/icure/conflicts/contact | Resolve contacts conflicts
[**resolveDocumentsConflicts**](IcureApi.md#resolvedocumentsconflicts) | **POST** /rest/v2/icure/conflicts/document | resolve documents conflicts
[**resolveFormsConflicts**](IcureApi.md#resolveformsconflicts) | **POST** /rest/v2/icure/conflicts/form | resolve forms conflicts
[**resolveHealthElementsConflicts**](IcureApi.md#resolvehealthelementsconflicts) | **POST** /rest/v2/icure/conflicts/healthelement | resolve healthcare elements conflicts
[**resolveInvoicesConflicts**](IcureApi.md#resolveinvoicesconflicts) | **POST** /rest/v2/icure/conflicts/invoice | resolve invoices conflicts
[**resolveMessagesConflicts**](IcureApi.md#resolvemessagesconflicts) | **POST** /rest/v2/icure/conflicts/message | resolve messages conflicts
[**resolvePatientsConflicts**](IcureApi.md#resolvepatientsconflicts) | **POST** /rest/v2/icure/conflicts/patient | Resolve patients conflicts
[**updateDesignDoc**](IcureApi.md#updatedesigndoc) | **POST** /rest/v2/icure/dd/{entityName} | Force update design doc


# **getIndexingInfo**
> IndexingInfoDto getIndexingInfo()

Get index info

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = IcureApi();

try {
    final result = api_instance.getIndexingInfo();
    print(result);
} catch (e) {
    print('Exception when calling IcureApi->getIndexingInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**IndexingInfoDto**](IndexingInfoDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProcessInfo**
> String getProcessInfo()

Get process info

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = IcureApi();

try {
    final result = api_instance.getProcessInfo();
    print(result);
} catch (e) {
    print('Exception when calling IcureApi->getProcessInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReplicationInfo**
> ReplicationInfoDto getReplicationInfo()

Get replication info

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = IcureApi();

try {
    final result = api_instance.getReplicationInfo();
    print(result);
} catch (e) {
    print('Exception when calling IcureApi->getReplicationInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ReplicationInfoDto**](ReplicationInfoDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReplicatorInfo**
> ReplicatorDocument getReplicatorInfo(id)

Get replication info

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = IcureApi();
final id = id_example; // String | 

try {
    final result = api_instance.getReplicatorInfo(id);
    print(result);
} catch (e) {
    print('Exception when calling IcureApi->getReplicatorInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ReplicatorDocument**](ReplicatorDocument.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVersion**
> String getVersion()

Get version

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = IcureApi();

try {
    final result = api_instance.getVersion();
    print(result);
} catch (e) {
    print('Exception when calling IcureApi->getVersion: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **isReady**
> String isReady()

Check if a user exists

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = IcureApi();

try {
    final result = api_instance.isReady();
    print(result);
} catch (e) {
    print('Exception when calling IcureApi->isReady: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resolveContactsConflicts**
> List<ContactDto> resolveContactsConflicts(limit)

Resolve contacts conflicts

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = IcureApi();
final limit = 56; // int | 

try {
    final result = api_instance.resolveContactsConflicts(limit);
    print(result);
} catch (e) {
    print('Exception when calling IcureApi->resolveContactsConflicts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] 

### Return type

[**List<ContactDto>**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resolveDocumentsConflicts**
> List<DocumentDto> resolveDocumentsConflicts(ids, limit)

resolve documents conflicts

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = IcureApi();
final ids = ids_example; // String | 
final limit = 56; // int | 

try {
    final result = api_instance.resolveDocumentsConflicts(ids, limit);
    print(result);
} catch (e) {
    print('Exception when calling IcureApi->resolveDocumentsConflicts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] 

### Return type

[**List<DocumentDto>**](DocumentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resolveFormsConflicts**
> List<FormDto> resolveFormsConflicts(limit)

resolve forms conflicts

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = IcureApi();
final limit = 56; // int | 

try {
    final result = api_instance.resolveFormsConflicts(limit);
    print(result);
} catch (e) {
    print('Exception when calling IcureApi->resolveFormsConflicts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] 

### Return type

[**List<FormDto>**](FormDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resolveHealthElementsConflicts**
> List<HealthElementDto> resolveHealthElementsConflicts(limit)

resolve healthcare elements conflicts

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = IcureApi();
final limit = 56; // int | 

try {
    final result = api_instance.resolveHealthElementsConflicts(limit);
    print(result);
} catch (e) {
    print('Exception when calling IcureApi->resolveHealthElementsConflicts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] 

### Return type

[**List<HealthElementDto>**](HealthElementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resolveInvoicesConflicts**
> List<InvoiceDto> resolveInvoicesConflicts(limit)

resolve invoices conflicts

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = IcureApi();
final limit = 56; // int | 

try {
    final result = api_instance.resolveInvoicesConflicts(limit);
    print(result);
} catch (e) {
    print('Exception when calling IcureApi->resolveInvoicesConflicts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] 

### Return type

[**List<InvoiceDto>**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resolveMessagesConflicts**
> List<MessageDto> resolveMessagesConflicts(limit)

resolve messages conflicts

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = IcureApi();
final limit = 56; // int | 

try {
    final result = api_instance.resolveMessagesConflicts(limit);
    print(result);
} catch (e) {
    print('Exception when calling IcureApi->resolveMessagesConflicts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] 

### Return type

[**List<MessageDto>**](MessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resolvePatientsConflicts**
> List<PatientDto> resolvePatientsConflicts(limit)

Resolve patients conflicts

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = IcureApi();
final limit = 56; // int | 

try {
    final result = api_instance.resolvePatientsConflicts(limit);
    print(result);
} catch (e) {
    print('Exception when calling IcureApi->resolvePatientsConflicts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] 

### Return type

[**List<PatientDto>**](PatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDesignDoc**
> bool updateDesignDoc(entityName, warmup)

Force update design doc

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = IcureApi();
final entityName = entityName_example; // String | 
final warmup = true; // bool | 

try {
    final result = api_instance.updateDesignDoc(entityName, warmup);
    print(result);
} catch (e) {
    print('Exception when calling IcureApi->updateDesignDoc: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityName** | **String**|  | 
 **warmup** | **bool**|  | [optional] 

### Return type

**bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

