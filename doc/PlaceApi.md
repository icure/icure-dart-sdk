# icure_dart_sdk.api.PlaceApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPlace**](PlaceApi.md#createplace) | **POST** /rest/v1/place | Creates a place
[**deletePlaces**](PlaceApi.md#deleteplaces) | **POST** /rest/v1/place/delete/batch | Deletes places
[**getPlace**](PlaceApi.md#getplace) | **GET** /rest/v1/place/{placeId} | Gets an place
[**getPlaces**](PlaceApi.md#getplaces) | **GET** /rest/v1/place | Gets all places
[**modifyPlace**](PlaceApi.md#modifyplace) | **PUT** /rest/v1/place | Modifies an place


# **createPlace**
> PlaceDto createPlace(placeDto)

Creates a place

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PlaceApi();
final placeDto = PlaceDto(); // PlaceDto | 

try {
    final result = api_instance.createPlace(placeDto);
    print(result);
} catch (e) {
    print('Exception when calling PlaceApi->createPlace: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **placeDto** | [**PlaceDto**](PlaceDto.md)|  | 

### Return type

[**PlaceDto**](PlaceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePlaces**
> List<DocIdentifier> deletePlaces(listOfIdsDto)

Deletes places

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PlaceApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.deletePlaces(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling PlaceApi->deletePlaces: $e\n');
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

# **getPlace**
> PlaceDto getPlace(placeId)

Gets an place

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PlaceApi();
final placeId = placeId_example; // String | 

try {
    final result = api_instance.getPlace(placeId);
    print(result);
} catch (e) {
    print('Exception when calling PlaceApi->getPlace: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **placeId** | **String**|  | 

### Return type

[**PlaceDto**](PlaceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlaces**
> List<PlaceDto> getPlaces()

Gets all places

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PlaceApi();

try {
    final result = api_instance.getPlaces();
    print(result);
} catch (e) {
    print('Exception when calling PlaceApi->getPlaces: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<PlaceDto>**](PlaceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyPlace**
> PlaceDto modifyPlace(placeDto)

Modifies an place

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = PlaceApi();
final placeDto = PlaceDto(); // PlaceDto | 

try {
    final result = api_instance.modifyPlace(placeDto);
    print(result);
} catch (e) {
    print('Exception when calling PlaceApi->modifyPlace: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **placeDto** | [**PlaceDto**](PlaceDto.md)|  | 

### Return type

[**PlaceDto**](PlaceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

