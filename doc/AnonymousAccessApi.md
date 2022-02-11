# icure_dart_sdk.api.AnonymousAccessApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAvailabilitiesByPeriodAndCalendarItemTypeId**](AnonymousAccessApi.md#getavailabilitiesbyperiodandcalendaritemtypeid) | **GET** /rest/v2/aa/available/inGroup/{groupId}/forUser/{userId}/type/{getCalendarItemTypeId} | Get Availabilities for HCP and appointmentType
[**listAppointmentTypesForUser**](AnonymousAccessApi.md#listappointmenttypesforuser) | **GET** /rest/v2/aa/appointmentType/inGroup/{groupId}/forUser/{userId} | List Calendar Item types for a provided group id and user id
[**listHealthcarePartiesInGroup**](AnonymousAccessApi.md#listhealthcarepartiesingroup) | **GET** /rest/v2/aa/hcparty/inGroup/{groupId} | List healthcare parties for a provided group id


# **getAvailabilitiesByPeriodAndCalendarItemTypeId**
> List<int> getAvailabilitiesByPeriodAndCalendarItemTypeId(groupId, userId, getCalendarItemTypeId, startDate, endDate, hcpId, limit)

Get Availabilities for HCP and appointmentType

The start of the slot is returned in YYYYDDMMHHmmss format and only slots belonging to public time tables are returned.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = AnonymousAccessApi();
final groupId = groupId_example; // String | 
final userId = userId_example; // String | 
final getCalendarItemTypeId = getCalendarItemTypeId_example; // String | 
final startDate = 789; // int | 
final endDate = 789; // int | 
final hcpId = hcpId_example; // String | 
final limit = 56; // int | 

try {
    final result = api_instance.getAvailabilitiesByPeriodAndCalendarItemTypeId(groupId, userId, getCalendarItemTypeId, startDate, endDate, hcpId, limit);
    print(result);
} catch (e) {
    print('Exception when calling AnonymousAccessApi->getAvailabilitiesByPeriodAndCalendarItemTypeId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | 
 **userId** | **String**|  | 
 **getCalendarItemTypeId** | **String**|  | 
 **startDate** | **int**|  | 
 **endDate** | **int**|  | 
 **hcpId** | **String**|  | 
 **limit** | **int**|  | [optional] 

### Return type

**List<int>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAppointmentTypesForUser**
> List<CalendarItemTypeDto> listAppointmentTypesForUser(groupId, userId, startDate, endDate)

List Calendar Item types for a provided group id and user id

Returns a list of Calendar Item types. In order to be returned, the Calendar Item Type must be linked to a time table enclosed in an Agenda for which an anonymous right has been set (a Right with read permission and null user)

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = AnonymousAccessApi();
final groupId = groupId_example; // String | Healthcare parties group id
final userId = userId_example; // String | Healthcare party user id
final startDate = 789; // int | 
final endDate = 789; // int | 

try {
    final result = api_instance.listAppointmentTypesForUser(groupId, userId, startDate, endDate);
    print(result);
} catch (e) {
    print('Exception when calling AnonymousAccessApi->listAppointmentTypesForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Healthcare parties group id | 
 **userId** | **String**| Healthcare party user id | 
 **startDate** | **int**|  | 
 **endDate** | **int**|  | 

### Return type

[**List<CalendarItemTypeDto>**](CalendarItemTypeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listHealthcarePartiesInGroup**
> List<UserDto> listHealthcarePartiesInGroup(groupId)

List healthcare parties for a provided group id

Returns a list of Users/healthcare parties contained in the group owning the providing id. In order to be returned, a healthcare party needs to be linked to a user an this user must have a property 'org.taktik.icure.public' set to a boolean true.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = AnonymousAccessApi();
final groupId = groupId_example; // String | Healthcare parties group id

try {
    final result = api_instance.listHealthcarePartiesInGroup(groupId);
    print(result);
} catch (e) {
    print('Exception when calling AnonymousAccessApi->listHealthcarePartiesInGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Healthcare parties group id | 

### Return type

[**List<UserDto>**](UserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

