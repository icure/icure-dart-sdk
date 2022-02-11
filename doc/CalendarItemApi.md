# icure_dart_sdk.api.CalendarItemApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCalendarItem**](CalendarItemApi.md#createcalendaritem) | **POST** /rest/v2/calendarItem | Creates a calendarItem
[**deleteCalendarItem**](CalendarItemApi.md#deletecalendaritem) | **POST** /rest/v2/calendarItem/{calendarItemIds} | Deletes an calendarItem
[**deleteCalendarItems**](CalendarItemApi.md#deletecalendaritems) | **POST** /rest/v2/calendarItem/delete/batch | Deletes calendarItems
[**findCalendarItemsByHCPartyPatientForeignKeys**](CalendarItemApi.md#findcalendaritemsbyhcpartypatientforeignkeys) | **GET** /rest/v2/calendarItem/byHcPartySecretForeignKeys | Find CalendarItems by hcparty and patient
[**findCalendarItemsByRecurrenceId**](CalendarItemApi.md#findcalendaritemsbyrecurrenceid) | **GET** /rest/v2/calendarItem/byRecurrenceId | Find CalendarItems by recurrenceId
[**getCalendarItem**](CalendarItemApi.md#getcalendaritem) | **GET** /rest/v2/calendarItem/{calendarItemId} | Gets an calendarItem
[**getCalendarItems**](CalendarItemApi.md#getcalendaritems) | **GET** /rest/v2/calendarItem | Gets all calendarItems
[**getCalendarItemsByPeriodAndHcPartyId**](CalendarItemApi.md#getcalendaritemsbyperiodandhcpartyid) | **POST** /rest/v2/calendarItem/byPeriodAndHcPartyId | Get CalendarItems by Period and HcPartyId
[**getCalendarItemsWithIds**](CalendarItemApi.md#getcalendaritemswithids) | **POST** /rest/v2/calendarItem/byIds | Get calendarItems by ids
[**getCalendarsByPeriodAndAgendaId**](CalendarItemApi.md#getcalendarsbyperiodandagendaid) | **POST** /rest/v2/calendarItem/byPeriodAndAgendaId | Get CalendarItems by Period and AgendaId
[**modifyCalendarItem**](CalendarItemApi.md#modifycalendaritem) | **PUT** /rest/v2/calendarItem | Modifies an calendarItem
[**setCalendarItemsDelegations**](CalendarItemApi.md#setcalendaritemsdelegations) | **POST** /rest/v2/calendarItem/delegations | Update delegations in calendarItems


# **createCalendarItem**
> CalendarItemDto createCalendarItem(calendarItemDto)

Creates a calendarItem

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CalendarItemApi();
final calendarItemDto = CalendarItemDto(); // CalendarItemDto | 

try {
    final result = api_instance.createCalendarItem(calendarItemDto);
    print(result);
} catch (e) {
    print('Exception when calling CalendarItemApi->createCalendarItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calendarItemDto** | [**CalendarItemDto**](CalendarItemDto.md)|  | 

### Return type

[**CalendarItemDto**](CalendarItemDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCalendarItem**
> List<DocIdentifier> deleteCalendarItem(calendarItemIds)

Deletes an calendarItem

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CalendarItemApi();
final calendarItemIds = calendarItemIds_example; // String | 

try {
    final result = api_instance.deleteCalendarItem(calendarItemIds);
    print(result);
} catch (e) {
    print('Exception when calling CalendarItemApi->deleteCalendarItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calendarItemIds** | **String**|  | 

### Return type

[**List<DocIdentifier>**](DocIdentifier.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCalendarItems**
> List<DocIdentifier> deleteCalendarItems(listOfIdsDto)

Deletes calendarItems

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CalendarItemApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.deleteCalendarItems(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling CalendarItemApi->deleteCalendarItems: $e\n');
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

# **findCalendarItemsByHCPartyPatientForeignKeys**
> List<CalendarItemDto> findCalendarItemsByHCPartyPatientForeignKeys(hcPartyId, secretFKeys)

Find CalendarItems by hcparty and patient

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CalendarItemApi();
final hcPartyId = hcPartyId_example; // String | 
final secretFKeys = secretFKeys_example; // String | 

try {
    final result = api_instance.findCalendarItemsByHCPartyPatientForeignKeys(hcPartyId, secretFKeys);
    print(result);
} catch (e) {
    print('Exception when calling CalendarItemApi->findCalendarItemsByHCPartyPatientForeignKeys: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcPartyId** | **String**|  | 
 **secretFKeys** | **String**|  | 

### Return type

[**List<CalendarItemDto>**](CalendarItemDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findCalendarItemsByRecurrenceId**
> List<CalendarItemDto> findCalendarItemsByRecurrenceId(recurrenceId)

Find CalendarItems by recurrenceId

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CalendarItemApi();
final recurrenceId = recurrenceId_example; // String | 

try {
    final result = api_instance.findCalendarItemsByRecurrenceId(recurrenceId);
    print(result);
} catch (e) {
    print('Exception when calling CalendarItemApi->findCalendarItemsByRecurrenceId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recurrenceId** | **String**|  | 

### Return type

[**List<CalendarItemDto>**](CalendarItemDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCalendarItem**
> CalendarItemDto getCalendarItem(calendarItemId)

Gets an calendarItem

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CalendarItemApi();
final calendarItemId = calendarItemId_example; // String | 

try {
    final result = api_instance.getCalendarItem(calendarItemId);
    print(result);
} catch (e) {
    print('Exception when calling CalendarItemApi->getCalendarItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calendarItemId** | **String**|  | 

### Return type

[**CalendarItemDto**](CalendarItemDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCalendarItems**
> List<CalendarItemDto> getCalendarItems()

Gets all calendarItems

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CalendarItemApi();

try {
    final result = api_instance.getCalendarItems();
    print(result);
} catch (e) {
    print('Exception when calling CalendarItemApi->getCalendarItems: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CalendarItemDto>**](CalendarItemDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCalendarItemsByPeriodAndHcPartyId**
> List<CalendarItemDto> getCalendarItemsByPeriodAndHcPartyId(startDate, endDate, hcPartyId)

Get CalendarItems by Period and HcPartyId

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CalendarItemApi();
final startDate = 789; // int | 
final endDate = 789; // int | 
final hcPartyId = hcPartyId_example; // String | 

try {
    final result = api_instance.getCalendarItemsByPeriodAndHcPartyId(startDate, endDate, hcPartyId);
    print(result);
} catch (e) {
    print('Exception when calling CalendarItemApi->getCalendarItemsByPeriodAndHcPartyId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **int**|  | 
 **endDate** | **int**|  | 
 **hcPartyId** | **String**|  | 

### Return type

[**List<CalendarItemDto>**](CalendarItemDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCalendarItemsWithIds**
> List<CalendarItemDto> getCalendarItemsWithIds(listOfIdsDto)

Get calendarItems by ids

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CalendarItemApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.getCalendarItemsWithIds(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling CalendarItemApi->getCalendarItemsWithIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | [optional] 

### Return type

[**List<CalendarItemDto>**](CalendarItemDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCalendarsByPeriodAndAgendaId**
> List<CalendarItemDto> getCalendarsByPeriodAndAgendaId(startDate, endDate, agendaId)

Get CalendarItems by Period and AgendaId

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CalendarItemApi();
final startDate = 789; // int | 
final endDate = 789; // int | 
final agendaId = agendaId_example; // String | 

try {
    final result = api_instance.getCalendarsByPeriodAndAgendaId(startDate, endDate, agendaId);
    print(result);
} catch (e) {
    print('Exception when calling CalendarItemApi->getCalendarsByPeriodAndAgendaId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **int**|  | 
 **endDate** | **int**|  | 
 **agendaId** | **String**|  | 

### Return type

[**List<CalendarItemDto>**](CalendarItemDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyCalendarItem**
> CalendarItemDto modifyCalendarItem(calendarItemDto)

Modifies an calendarItem

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CalendarItemApi();
final calendarItemDto = CalendarItemDto(); // CalendarItemDto | 

try {
    final result = api_instance.modifyCalendarItem(calendarItemDto);
    print(result);
} catch (e) {
    print('Exception when calling CalendarItemApi->modifyCalendarItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calendarItemDto** | [**CalendarItemDto**](CalendarItemDto.md)|  | 

### Return type

[**CalendarItemDto**](CalendarItemDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setCalendarItemsDelegations**
> List<CalendarItemDto> setCalendarItemsDelegations(icureStubDto)

Update delegations in calendarItems

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = CalendarItemApi();
final icureStubDto = [List<IcureStubDto>()]; // List<IcureStubDto> | 

try {
    final result = api_instance.setCalendarItemsDelegations(icureStubDto);
    print(result);
} catch (e) {
    print('Exception when calling CalendarItemApi->setCalendarItemsDelegations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **icureStubDto** | [**List<IcureStubDto>**](IcureStubDto.md)|  | 

### Return type

[**List<CalendarItemDto>**](CalendarItemDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

