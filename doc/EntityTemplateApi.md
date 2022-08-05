# icure_dart_sdk.api.EntityTemplateApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEntityTemplate**](EntityTemplateApi.md#createentitytemplate) | **
POST** /rest/v1/entitytemplate | Create a EntityTemplate
[**createEntityTemplates**](EntityTemplateApi.md#createentitytemplates) | **
POST** /rest/v1/entitytemplate/batch | Create a batch of entityTemplates
[**deleteEntityTemplate**](EntityTemplateApi.md#deleteentitytemplate) | **
POST** /rest/v1/entitytemplate/delete/batch | Delete entity templates
[**findAllEntityTemplatesByKeyword**](EntityTemplateApi.md#findallentitytemplatesbykeyword) | **
GET** /rest/v1/entitytemplate/findAll/{type}/keyword/{keyword} | Finding entityTemplates by entityTemplate, type and version with pagination.
[**getEntityTemplate**](EntityTemplateApi.md#getentitytemplate) | **
GET** /rest/v1/entitytemplate/{entityTemplateId} | Get a entityTemplate
[**getEntityTemplates**](EntityTemplateApi.md#getentitytemplates) | **
POST** /rest/v1/entitytemplate/byIds | Get a list of entityTemplates by ids
[**listAllEntityTemplatesBy**](EntityTemplateApi.md#listallentitytemplatesby) | **
GET** /rest/v1/entitytemplate/findAll/{type} | Finding entityTemplates by entityTemplate, type and version with pagination.
[**listEntityTemplatesBy**](EntityTemplateApi.md#listentitytemplatesby) | **
GET** /rest/v1/entitytemplate/find/{userId}/{type} | Finding entityTemplates by userId, entityTemplate, type and version with pagination.
[**listEntityTemplatesByKeyword**](EntityTemplateApi.md#listentitytemplatesbykeyword) | **
GET** /rest/v1/entitytemplate/find/{userId}/{type}/keyword/{keyword} | Finding entityTemplates by userId, type and keyword.
[**modifyEntityTemplate**](EntityTemplateApi.md#modifyentitytemplate) | **
PUT** /rest/v1/entitytemplate | Modify a entityTemplate
[**modifyEntityTemplates**](EntityTemplateApi.md#modifyentitytemplates) | **
PUT** /rest/v1/entitytemplate/batch | Modify a batch of entityTemplates


# **createEntityTemplate**
> EntityTemplateDto createEntityTemplate(entityTemplateDto)

Create a EntityTemplate

Type, EntityTemplate and Version are required.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = EntityTemplateApi();
final entityTemplateDto = EntityTemplateDto(); // EntityTemplateDto |

try {
    final result = api_instance.createEntityTemplate(entityTemplateDto);
    print(result);
} catch (e) {
    print('Exception when calling EntityTemplateApi->createEntityTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTemplateDto** | [**EntityTemplateDto**](EntityTemplateDto.md)|  |

### Return type

[**EntityTemplateDto**](EntityTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEntityTemplates**
> List<EntityTemplateDto> createEntityTemplates(entityTemplateDto)

Create a batch of entityTemplates

Returns the modified entityTemplates.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = EntityTemplateApi();
final entityTemplateDto = [List<EntityTemplateDto>()]; // List<EntityTemplateDto> |

try {
    final result = api_instance.createEntityTemplates(entityTemplateDto);
    print(result);
} catch (e) {
    print('Exception when calling EntityTemplateApi->createEntityTemplates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTemplateDto** | [**List<EntityTemplateDto>**](EntityTemplateDto.md)|  |

### Return type

[**List<EntityTemplateDto>**](EntityTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEntityTemplate**
> List<DocIdentifier> deleteEntityTemplate(listOfIdsDto)

Delete entity templates

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = EntityTemplateApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto |

try {
    final result = api_instance.deleteEntityTemplate(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling EntityTemplateApi->deleteEntityTemplate: $e\n');
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

# **findAllEntityTemplatesByKeyword**
> List<EntityTemplateDto> findAllEntityTemplatesByKeyword(type, keyword, includeEntities)

Finding entityTemplates by entityTemplate, type and version with pagination.

Returns a list of entityTemplates matched with given input.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = EntityTemplateApi();
final type = type_example; // String |
final keyword = keyword_example; // String |
final includeEntities = true; // bool |

try {
    final result = api_instance.findAllEntityTemplatesByKeyword(type, keyword, includeEntities);
    print(result);
} catch (e) {
    print('Exception when calling EntityTemplateApi->findAllEntityTemplatesByKeyword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**|  |
 **keyword** | **String**|  |
 **includeEntities** | **bool**|  | [optional]

### Return type

[**List<EntityTemplateDto>**](EntityTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityTemplate**
> EntityTemplateDto getEntityTemplate(entityTemplateId)

Get a entityTemplate

Get a entityTemplate based on ID or (entityTemplate,type,version) as query strings. (entityTemplate,type,version) is unique.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = EntityTemplateApi();
final entityTemplateId = entityTemplateId_example; // String | EntityTemplate id

try {
    final result = api_instance.getEntityTemplate(entityTemplateId);
    print(result);
} catch (e) {
    print('Exception when calling EntityTemplateApi->getEntityTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTemplateId** | **String**| EntityTemplate id |

### Return type

[**EntityTemplateDto**](EntityTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityTemplates**
> List<EntityTemplateDto> getEntityTemplates(listOfIdsDto)

Get a list of entityTemplates by ids

Keys must be delimited by coma

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = EntityTemplateApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto |

try {
    final result = api_instance.getEntityTemplates(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling EntityTemplateApi->getEntityTemplates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  |

### Return type

[**List<EntityTemplateDto>**](EntityTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAllEntityTemplatesBy**
> List<EntityTemplateDto> listAllEntityTemplatesBy(type, searchString, includeEntities)

Finding entityTemplates by entityTemplate, type and version with pagination.

Returns a list of entityTemplates matched with given input.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = EntityTemplateApi();
final type = type_example; // String |
final searchString = searchString_example; // String |
final includeEntities = true; // bool |

try {
    final result = api_instance.listAllEntityTemplatesBy(type, searchString, includeEntities);
    print(result);
} catch (e) {
    print('Exception when calling EntityTemplateApi->listAllEntityTemplatesBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**|  |
 **searchString** | **String**|  | [optional]
 **includeEntities** | **bool**|  | [optional]

### Return type

[**List<EntityTemplateDto>**](EntityTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listEntityTemplatesBy**
> List<EntityTemplateDto> listEntityTemplatesBy(userId, type, searchString, includeEntities)

Finding entityTemplates by userId, entityTemplate, type and version with pagination.

Returns a list of entityTemplates matched with given input.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = EntityTemplateApi();
final userId = userId_example; // String |
final type = type_example; // String |
final searchString = searchString_example; // String |
final includeEntities = true; // bool |

try {
    final result = api_instance.listEntityTemplatesBy(userId, type, searchString, includeEntities);
    print(result);
} catch (e) {
    print('Exception when calling EntityTemplateApi->listEntityTemplatesBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  |
 **type** | **String**|  |
 **searchString** | **String**|  | [optional]
 **includeEntities** | **bool**|  | [optional]

### Return type

[**List<EntityTemplateDto>**](EntityTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listEntityTemplatesByKeyword**
> List<EntityTemplateDto> listEntityTemplatesByKeyword(userId, type, keyword, includeEntities)

Finding entityTemplates by userId, type and keyword.

Returns a list of entityTemplates matched with given input.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = EntityTemplateApi();
final userId = userId_example; // String |
final type = type_example; // String |
final keyword = keyword_example; // String |
final includeEntities = true; // bool |

try {
    final result = api_instance.listEntityTemplatesByKeyword(userId, type, keyword, includeEntities);
    print(result);
} catch (e) {
    print('Exception when calling EntityTemplateApi->listEntityTemplatesByKeyword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  |
 **type** | **String**|  |
 **keyword** | **String**|  |
 **includeEntities** | **bool**|  | [optional]

### Return type

[**List<EntityTemplateDto>**](EntityTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyEntityTemplate**
> EntityTemplateDto modifyEntityTemplate(entityTemplateDto)

Modify a entityTemplate

Modification of (type, entityTemplate, version) is not allowed.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = EntityTemplateApi();
final entityTemplateDto = EntityTemplateDto(); // EntityTemplateDto |

try {
    final result = api_instance.modifyEntityTemplate(entityTemplateDto);
    print(result);
} catch (e) {
    print('Exception when calling EntityTemplateApi->modifyEntityTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTemplateDto** | [**EntityTemplateDto**](EntityTemplateDto.md)|  |

### Return type

[**EntityTemplateDto**](EntityTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyEntityTemplates**
> List<EntityTemplateDto> modifyEntityTemplates(entityTemplateDto)

Modify a batch of entityTemplates

Returns the modified entityTemplates.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = EntityTemplateApi();
final entityTemplateDto = [List<EntityTemplateDto>()]; // List<EntityTemplateDto> |

try {
    final result = api_instance.modifyEntityTemplates(entityTemplateDto);
    print(result);
} catch (e) {
    print('Exception when calling EntityTemplateApi->modifyEntityTemplates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTemplateDto** | [**List<EntityTemplateDto>**](EntityTemplateDto.md)|  |

### Return type

[**List<EntityTemplateDto>**](EntityTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
