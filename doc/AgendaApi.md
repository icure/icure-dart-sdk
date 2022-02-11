# icure_dart_sdk.api.AgendaApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAgenda**](AgendaApi.md#createagenda) | **POST** /rest/v2/agenda | Creates a agenda
[**deleteAgendas**](AgendaApi.md#deleteagendas) | **POST** /rest/v2/agenda/delete/batch | Deletes agendas
[**getAgenda**](AgendaApi.md#getagenda) | **GET** /rest/v2/agenda/{agendaId} | Gets an agenda
[**getAgendas**](AgendaApi.md#getagendas) | **GET** /rest/v2/agenda | Gets all agendas
[**getAgendasForUser**](AgendaApi.md#getagendasforuser) | **GET** /rest/v2/agenda/byUser | Gets all agendas for user
[**getReadableAgendasForUser**](AgendaApi.md#getreadableagendasforuser) | **GET** /rest/v2/agenda/readableForUser | Gets readable agendas for user
[**modifyAgenda**](AgendaApi.md#modifyagenda) | **PUT** /rest/v2/agenda | Modifies an agenda


# **createAgenda**
> AgendaDto createAgenda(agendaDto)

Creates a agenda

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = AgendaApi();
final agendaDto = AgendaDto(); // AgendaDto | 

try {
    final result = api_instance.createAgenda(agendaDto);
    print(result);
} catch (e) {
    print('Exception when calling AgendaApi->createAgenda: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agendaDto** | [**AgendaDto**](AgendaDto.md)|  | 

### Return type

[**AgendaDto**](AgendaDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAgendas**
> List<DocIdentifier> deleteAgendas(listOfIdsDto)

Deletes agendas

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = AgendaApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.deleteAgendas(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling AgendaApi->deleteAgendas: $e\n');
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

# **getAgenda**
> AgendaDto getAgenda(agendaId)

Gets an agenda

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = AgendaApi();
final agendaId = agendaId_example; // String | 

try {
    final result = api_instance.getAgenda(agendaId);
    print(result);
} catch (e) {
    print('Exception when calling AgendaApi->getAgenda: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agendaId** | **String**|  | 

### Return type

[**AgendaDto**](AgendaDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgendas**
> List<AgendaDto> getAgendas()

Gets all agendas

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = AgendaApi();

try {
    final result = api_instance.getAgendas();
    print(result);
} catch (e) {
    print('Exception when calling AgendaApi->getAgendas: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<AgendaDto>**](AgendaDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgendasForUser**
> AgendaDto getAgendasForUser(userId)

Gets all agendas for user

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = AgendaApi();
final userId = userId_example; // String | 

try {
    final result = api_instance.getAgendasForUser(userId);
    print(result);
} catch (e) {
    print('Exception when calling AgendaApi->getAgendasForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**AgendaDto**](AgendaDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReadableAgendasForUser**
> List<AgendaDto> getReadableAgendasForUser(userId)

Gets readable agendas for user

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = AgendaApi();
final userId = userId_example; // String | 

try {
    final result = api_instance.getReadableAgendasForUser(userId);
    print(result);
} catch (e) {
    print('Exception when calling AgendaApi->getReadableAgendasForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**List<AgendaDto>**](AgendaDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyAgenda**
> AgendaDto modifyAgenda(agendaDto)

Modifies an agenda

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = AgendaApi();
final agendaDto = AgendaDto(); // AgendaDto | 

try {
    final result = api_instance.modifyAgenda(agendaDto);
    print(result);
} catch (e) {
    print('Exception when calling AgendaApi->modifyAgenda: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agendaDto** | [**AgendaDto**](AgendaDto.md)|  | 

### Return type

[**AgendaDto**](AgendaDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

