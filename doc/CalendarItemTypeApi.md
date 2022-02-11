# icure_dart_sdk.api.CalendarItemTypeApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCalendarItemType**](CalendarItemTypeApi.md#createcalendaritemtype) | **POST** /rest/v2/calendarItemType | Creates a calendarItemType
[**deleteCalendarItemTypes**](CalendarItemTypeApi.md#deletecalendaritemtypes) | **POST** /rest/v2/calendarItemType/delete/batch | Deletes calendarItemTypes
[**getCalendarItemType**](CalendarItemTypeApi.md#getcalendaritemtype) | **GET** /rest/v2/calendarItemType/{calendarItemTypeId} | Gets a calendarItemType
[**getCalendarItemTypes**](CalendarItemTypeApi.md#getcalendaritemtypes) | **GET** /rest/v2/calendarItemType | Gets all calendarItemTypes
[**getCalendarItemTypesIncludeDeleted**](CalendarItemTypeApi.md#getcalendaritemtypesincludedeleted) | **GET** /rest/v2/calendarItemType/includeDeleted | Gets all calendarItemTypes include deleted
[**modifyCalendarItemType**](CalendarItemTypeApi.md#modifycalendaritemtype) | **PUT** /rest/v2/calendarItemType | Modifies an calendarItemType


# **createCalendarItemType**
> CalendarItemTypeDto createCalendarItemType(calendarItemTypeDto)

Creates a calendarItemType

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CalendarItemTypeApi();
final calendarItemTypeDto = CalendarItemTypeDto(); // CalendarItemTypeDto | 

try {
    final result = api_instance.createCalendarItemType(calendarItemTypeDto);
    print(result);
} catch (e) {
    print('Exception when calling CalendarItemTypeApi->createCalendarItemType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calendarItemTypeDto** | [**CalendarItemTypeDto**](CalendarItemTypeDto.md)|  | 

### Return type

[**CalendarItemTypeDto**](CalendarItemTypeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCalendarItemTypes**
> List<DocIdentifier> deleteCalendarItemTypes(listOfIdsDto)

Deletes calendarItemTypes

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CalendarItemTypeApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.deleteCalendarItemTypes(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling CalendarItemTypeApi->deleteCalendarItemTypes: $e\n');
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

# **getCalendarItemType**
> CalendarItemTypeDto getCalendarItemType(calendarItemTypeId)

Gets a calendarItemType

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CalendarItemTypeApi();
final calendarItemTypeId = calendarItemTypeId_example; // String | 

try {
    final result = api_instance.getCalendarItemType(calendarItemTypeId);
    print(result);
} catch (e) {
    print('Exception when calling CalendarItemTypeApi->getCalendarItemType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calendarItemTypeId** | **String**|  | 

### Return type

[**CalendarItemTypeDto**](CalendarItemTypeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCalendarItemTypes**
> List<CalendarItemTypeDto> getCalendarItemTypes()

Gets all calendarItemTypes

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CalendarItemTypeApi();

try {
    final result = api_instance.getCalendarItemTypes();
    print(result);
} catch (e) {
    print('Exception when calling CalendarItemTypeApi->getCalendarItemTypes: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CalendarItemTypeDto>**](CalendarItemTypeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCalendarItemTypesIncludeDeleted**
> List<CalendarItemTypeDto> getCalendarItemTypesIncludeDeleted()

Gets all calendarItemTypes include deleted

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CalendarItemTypeApi();

try {
    final result = api_instance.getCalendarItemTypesIncludeDeleted();
    print(result);
} catch (e) {
    print('Exception when calling CalendarItemTypeApi->getCalendarItemTypesIncludeDeleted: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CalendarItemTypeDto>**](CalendarItemTypeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyCalendarItemType**
> CalendarItemTypeDto modifyCalendarItemType(calendarItemTypeDto)

Modifies an calendarItemType

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CalendarItemTypeApi();
final calendarItemTypeDto = CalendarItemTypeDto(); // CalendarItemTypeDto | 

try {
    final result = api_instance.modifyCalendarItemType(calendarItemTypeDto);
    print(result);
} catch (e) {
    print('Exception when calling CalendarItemTypeApi->modifyCalendarItemType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calendarItemTypeDto** | [**CalendarItemTypeDto**](CalendarItemTypeDto.md)|  | 

### Return type

[**CalendarItemTypeDto**](CalendarItemTypeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

