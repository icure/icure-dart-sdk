# icure_dart_sdk.api.KeywordApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createKeyword**](KeywordApi.md#createkeyword) | **POST** /rest/v1/keyword | Create a keyword with the current user
[**deleteKeywords**](KeywordApi.md#deletekeywords) | **POST** /rest/v1/keyword/delete/batch | Delete keywords.
[**getKeyword**](KeywordApi.md#getkeyword) | **GET** /rest/v1/keyword/{keywordId} | Get a keyword
[**getKeywords**](KeywordApi.md#getkeywords) | **GET** /rest/v1/keyword | Gets all keywords
[**getKeywordsByUser**](KeywordApi.md#getkeywordsbyuser) | **
GET** /rest/v1/keyword/byUser/{userId} | Get keywords by user
[**modifyKeyword**](KeywordApi.md#modifykeyword) | **PUT** /rest/v1/keyword | Modify a keyword


# **createKeyword**
> KeywordDto createKeyword(keywordDto)

Create a keyword with the current user

Returns an instance of created keyword.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = KeywordApi();
final keywordDto = KeywordDto(); // KeywordDto | 

try {
    final result = api_instance.createKeyword(keywordDto);
    print(result);
} catch (e) {
    print('Exception when calling KeywordApi->createKeyword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywordDto** | [**KeywordDto**](KeywordDto.md)|  | 

### Return type

[**KeywordDto**](KeywordDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteKeywords**
> List<DocIdentifier> deleteKeywords(listOfIdsDto)

Delete keywords.

Response is a set containing the ID's of deleted keywords.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = KeywordApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.deleteKeywords(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling KeywordApi->deleteKeywords: $e\n');
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

# **getKeyword**
> KeywordDto getKeyword(keywordId)

Get a keyword

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = KeywordApi();
final keywordId = keywordId_example; // String | 

try {
    final result = api_instance.getKeyword(keywordId);
    print(result);
} catch (e) {
    print('Exception when calling KeywordApi->getKeyword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywordId** | **String**|  | 

### Return type

[**KeywordDto**](KeywordDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getKeywords**
> List<KeywordDto> getKeywords()

Gets all keywords

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = KeywordApi();

try {
    final result = api_instance.getKeywords();
    print(result);
} catch (e) {
    print('Exception when calling KeywordApi->getKeywords: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<KeywordDto>**](KeywordDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getKeywordsByUser**
> List<KeywordDto> getKeywordsByUser(userId)

Get keywords by user

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = KeywordApi();
final userId = userId_example; // String | 

try {
    final result = api_instance.getKeywordsByUser(userId);
    print(result);
} catch (e) {
    print('Exception when calling KeywordApi->getKeywordsByUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**List<KeywordDto>**](KeywordDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyKeyword**
> KeywordDto modifyKeyword(keywordDto)

Modify a keyword

Returns the modified keyword.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = KeywordApi();
final keywordDto = KeywordDto(); // KeywordDto | 

try {
    final result = api_instance.modifyKeyword(keywordDto);
    print(result);
} catch (e) {
    print('Exception when calling KeywordApi->modifyKeyword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywordDto** | [**KeywordDto**](KeywordDto.md)|  | 

### Return type

[**KeywordDto**](KeywordDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

