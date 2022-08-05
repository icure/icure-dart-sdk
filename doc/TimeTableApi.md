# icure_dart_sdk.api.TimeTableApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTimeTable**](TimeTableApi.md#createtimetable) | **POST** /rest/v1/timeTable | Creates a timeTable
[**deleteTimeTable**](TimeTableApi.md#deletetimetable) | **POST** /rest/v1/timeTable/delete/batch | Deletes an timeTable
[**getTimeTable**](TimeTableApi.md#gettimetable) | **GET** /rest/v1/timeTable/{timeTableId} | Gets a timeTable
[**getTimeTablesByAgendaId**](TimeTableApi.md#gettimetablesbyagendaid) | **
POST** /rest/v1/timeTable/byAgendaId | Get TimeTables by AgendaId
[**getTimeTablesByPeriodAndAgendaId**](TimeTableApi.md#gettimetablesbyperiodandagendaid) | **
POST** /rest/v1/timeTable/byPeriodAndAgendaId | Get TimeTables by Period and AgendaId
[**modifyTimeTable**](TimeTableApi.md#modifytimetable) | **PUT** /rest/v1/timeTable | Modifies an timeTable


# **createTimeTable**
> TimeTableDto createTimeTable(timeTableDto)

Creates a timeTable

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TimeTableApi();
final timeTableDto = TimeTableDto(); // TimeTableDto |

try {
    final result = api_instance.createTimeTable(timeTableDto);
    print(result);
} catch (e) {
    print('Exception when calling TimeTableApi->createTimeTable: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeTableDto** | [**TimeTableDto**](TimeTableDto.md)|  |

### Return type

[**TimeTableDto**](TimeTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTimeTable**
> List<DocIdentifier> deleteTimeTable(listOfIdsDto)

Deletes an timeTable

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TimeTableApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto |

try {
    final result = api_instance.deleteTimeTable(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling TimeTableApi->deleteTimeTable: $e\n');
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

# **getTimeTable**
> TimeTableDto getTimeTable(timeTableId)

Gets a timeTable

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TimeTableApi();
final timeTableId = timeTableId_example; // String |

try {
    final result = api_instance.getTimeTable(timeTableId);
    print(result);
} catch (e) {
    print('Exception when calling TimeTableApi->getTimeTable: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeTableId** | **String**|  |

### Return type

[**TimeTableDto**](TimeTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTimeTablesByAgendaId**
> List<TimeTableDto> getTimeTablesByAgendaId(agendaId)

Get TimeTables by AgendaId

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TimeTableApi();
final agendaId = agendaId_example; // String |

try {
    final result = api_instance.getTimeTablesByAgendaId(agendaId);
    print(result);
} catch (e) {
    print('Exception when calling TimeTableApi->getTimeTablesByAgendaId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agendaId** | **String**|  |

### Return type

[**List<TimeTableDto>**](TimeTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTimeTablesByPeriodAndAgendaId**
> List<TimeTableDto> getTimeTablesByPeriodAndAgendaId(startDate, endDate, agendaId)

Get TimeTables by Period and AgendaId

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TimeTableApi();
final startDate = 789; // int |
final endDate = 789; // int |
final agendaId = agendaId_example; // String |

try {
    final result = api_instance.getTimeTablesByPeriodAndAgendaId(startDate, endDate, agendaId);
    print(result);
} catch (e) {
    print('Exception when calling TimeTableApi->getTimeTablesByPeriodAndAgendaId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **int**|  |
 **endDate** | **int**|  |
 **agendaId** | **String**|  |

### Return type

[**List<TimeTableDto>**](TimeTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyTimeTable**
> TimeTableDto modifyTimeTable(timeTableDto)

Modifies an timeTable

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TimeTableApi();
final timeTableDto = TimeTableDto(); // TimeTableDto |

try {
    final result = api_instance.modifyTimeTable(timeTableDto);
    print(result);
} catch (e) {
    print('Exception when calling TimeTableApi->modifyTimeTable: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeTableDto** | [**TimeTableDto**](TimeTableDto.md)|  |

### Return type

[**TimeTableDto**](TimeTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
