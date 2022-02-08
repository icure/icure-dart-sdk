# openapi.api.ArticleApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createArticle**](ArticleApi.md#createarticle) | **POST** /rest/v2/article | Creates a article
[**deleteArticles**](ArticleApi.md#deletearticles) | **POST** /rest/v2/article/delete/batch | Deletes articles
[**getArticle**](ArticleApi.md#getarticle) | **GET** /rest/v2/article/{articleId} | Gets an article
[**getArticles**](ArticleApi.md#getarticles) | **GET** /rest/v2/article | Gets all articles
[**modifyArticle**](ArticleApi.md#modifyarticle) | **PUT** /rest/v2/article | Modifies an article


# **createArticle**
> ArticleDto createArticle(articleDto)

Creates a article

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ArticleApi();
final articleDto = ArticleDto(); // ArticleDto | 

try {
    final result = api_instance.createArticle(articleDto);
    print(result);
} catch (e) {
    print('Exception when calling ArticleApi->createArticle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **articleDto** | [**ArticleDto**](ArticleDto.md)|  | 

### Return type

[**ArticleDto**](ArticleDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteArticles**
> List<DocIdentifier> deleteArticles(listOfIdsDto)

Deletes articles

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ArticleApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.deleteArticles(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling ArticleApi->deleteArticles: $e\n');
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

# **getArticle**
> ArticleDto getArticle(articleId)

Gets an article

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ArticleApi();
final articleId = articleId_example; // String | 

try {
    final result = api_instance.getArticle(articleId);
    print(result);
} catch (e) {
    print('Exception when calling ArticleApi->getArticle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **articleId** | **String**|  | 

### Return type

[**ArticleDto**](ArticleDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArticles**
> List<ArticleDto> getArticles()

Gets all articles

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ArticleApi();

try {
    final result = api_instance.getArticles();
    print(result);
} catch (e) {
    print('Exception when calling ArticleApi->getArticles: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<ArticleDto>**](ArticleDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyArticle**
> ArticleDto modifyArticle(articleDto)

Modifies an article

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ArticleApi();
final articleDto = ArticleDto(); // ArticleDto | 

try {
    final result = api_instance.modifyArticle(articleDto);
    print(result);
} catch (e) {
    print('Exception when calling ArticleApi->modifyArticle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **articleDto** | [**ArticleDto**](ArticleDto.md)|  | 

### Return type

[**ArticleDto**](ArticleDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

