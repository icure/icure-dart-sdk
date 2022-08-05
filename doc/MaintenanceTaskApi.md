# icure_dart_sdk.api.MaintenanceTaskApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMaintenanceTask**](MaintenanceTaskApi.md#createmaintenancetask) | **POST** /rest/v2/maintenancetask | Creates a maintenanceTask
[**deleteMaintenanceTask**](MaintenanceTaskApi.md#deletemaintenancetask) | **DELETE** /rest/v2/maintenancetask/{maintenanceTaskIds} | Delete maintenanceTasks
[**filterMaintenanceTasksBy**](MaintenanceTaskApi.md#filtermaintenancetasksby) | **POST** /rest/v2/maintenancetask/filter | Filter maintenanceTasks for the current user (HcParty)
[**getMaintenanceTask**](MaintenanceTaskApi.md#getmaintenancetask) | **GET** /rest/v2/maintenancetask/{maintenanceTaskId} | Gets a maintenanceTask
[**modifyMaintenanceTask**](MaintenanceTaskApi.md#modifymaintenancetask) | **PUT** /rest/v2/maintenancetask | Updates a maintenanceTask


# **createMaintenanceTask**
> MaintenanceTaskDto createMaintenanceTask(maintenanceTaskDto)

Creates a maintenanceTask

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MaintenanceTaskApi();
final maintenanceTaskDto = MaintenanceTaskDto(); // MaintenanceTaskDto |

try {
    final result = api_instance.createMaintenanceTask(maintenanceTaskDto);
    print(result);
} catch (e) {
    print('Exception when calling MaintenanceTaskApi->createMaintenanceTask: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maintenanceTaskDto** | [**MaintenanceTaskDto**](MaintenanceTaskDto.md)|  |

### Return type

[**MaintenanceTaskDto**](MaintenanceTaskDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMaintenanceTask**
> List<DocIdentifier> deleteMaintenanceTask(maintenanceTaskIds)

Delete maintenanceTasks

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MaintenanceTaskApi();
final maintenanceTaskIds = maintenanceTaskIds_example; // String |

try {
    final result = api_instance.deleteMaintenanceTask(maintenanceTaskIds);
    print(result);
} catch (e) {
    print('Exception when calling MaintenanceTaskApi->deleteMaintenanceTask: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maintenanceTaskIds** | **String**|  |

### Return type

[**List<DocIdentifier>**](DocIdentifier.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filterMaintenanceTasksBy**
> PaginatedListMaintenanceTaskDto filterMaintenanceTasksBy(filterChainMaintenanceTask, startDocumentId, limit)

Filter maintenanceTasks for the current user (HcParty)

Returns a list of maintenanceTasks along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MaintenanceTaskApi();
final filterChainMaintenanceTask = FilterChainMaintenanceTask(); // FilterChainMaintenanceTask |
final startDocumentId = startDocumentId_example; // String | A maintenanceTask document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.filterMaintenanceTasksBy(filterChainMaintenanceTask, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling MaintenanceTaskApi->filterMaintenanceTasksBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterChainMaintenanceTask** | [**FilterChainMaintenanceTask**](FilterChainMaintenanceTask.md)|  |
 **startDocumentId** | **String**| A maintenanceTask document ID | [optional]
 **limit** | **int**| Number of rows | [optional]

### Return type

[**PaginatedListMaintenanceTaskDto**](PaginatedListMaintenanceTaskDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMaintenanceTask**
> MaintenanceTaskDto getMaintenanceTask(maintenanceTaskId)

Gets a maintenanceTask

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MaintenanceTaskApi();
final maintenanceTaskId = maintenanceTaskId_example; // String |

try {
    final result = api_instance.getMaintenanceTask(maintenanceTaskId);
    print(result);
} catch (e) {
    print('Exception when calling MaintenanceTaskApi->getMaintenanceTask: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maintenanceTaskId** | **String**|  |

### Return type

[**MaintenanceTaskDto**](MaintenanceTaskDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyMaintenanceTask**
> MaintenanceTaskDto modifyMaintenanceTask(maintenanceTaskDto)

Updates a maintenanceTask

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MaintenanceTaskApi();
final maintenanceTaskDto = MaintenanceTaskDto(); // MaintenanceTaskDto |

try {
    final result = api_instance.modifyMaintenanceTask(maintenanceTaskDto);
    print(result);
} catch (e) {
    print('Exception when calling MaintenanceTaskApi->modifyMaintenanceTask: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maintenanceTaskDto** | [**MaintenanceTaskDto**](MaintenanceTaskDto.md)|  |

### Return type

[**MaintenanceTaskDto**](MaintenanceTaskDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
