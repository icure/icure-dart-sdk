# icure_dart_sdk.api.GroupApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGroup**](GroupApi.md#creategroup) | **POST** /rest/v1/group/{id} | Create a group
[**getGroup**](GroupApi.md#getgroup) | **GET** /rest/v1/group/{id} | Get a group by id
[**getReplicationInfo1**](GroupApi.md#getreplicationinfo1) | **GET** /rest/v1/group/{id}/r | Get index info
[**initDesignDocs**](GroupApi.md#initdesigndocs) | **PUT** /rest/v1/group/{id}/dd | Init design docs
[**listGroups**](GroupApi.md#listgroups) | **GET** /rest/v1/group | List groups
[**modifyGroupName**](GroupApi.md#modifygroupname) | **PUT** /rest/v1/group/{id}/name/{name} | Update group name
[**modifyGroupProperties**](GroupApi.md#modifygroupproperties) | **
PUT** /rest/v1/group/{id}/properties | Update group properties
[**registerNewGroupAdministrator**](GroupApi.md#registernewgroupadministrator) | **
POST** /rest/v1/group/register/trial | Create a group
[**resetStorage**](GroupApi.md#resetstorage) | **POST** /rest/v1/group/{id}/reset/storage | Reset storage for group
[**setGroupPassword**](GroupApi.md#setgrouppassword) | **PUT** /rest/v1/group/{id}/password | Set group password
[**solveConflicts**](GroupApi.md#solveconflicts) | **POST** /rest/v1/group/{id}/conflicts | Solve conflicts for group


# **createGroup**
> GroupDto createGroup(id, name, password, databaseInitialisationDto, server, q, n)

Create a group

Create a new group and associated dbs.  The created group will be manageable by the users that belong to the same group as the one that called createGroup. Several tasks can be executed during the group creation like DB replications towards the created DBs, users creation and healthcare parties creation

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = GroupApi();
final id = id_example; // String | The id of the group, also used for subsequent authentication against the db (can only contain digits, letters, - and _)
final name = name_example; // String | The name of the group
final password = password_example; // String | The password of the group (can only contain digits, letters, - and _)
final databaseInitialisationDto = DatabaseInitialisationDto(); // DatabaseInitialisationDto | 
final server = server_example; // String | The server on which the group dbs will be created
final q = 56; // int | The number of shards for patient and healthdata dbs : 3-8 is a recommended range of value
final n = 56; // int | The number of replications for dbs : 3 is a recommended value

try {
    final result = api_instance.createGroup(id, name, password, databaseInitialisationDto, server, q, n);
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->createGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the group, also used for subsequent authentication against the db (can only contain digits, letters, - and _) | 
 **name** | **String**| The name of the group | 
 **password** | **String**| The password of the group (can only contain digits, letters, - and _) | 
 **databaseInitialisationDto** | [**DatabaseInitialisationDto**](DatabaseInitialisationDto.md)|  | 
 **server** | **String**| The server on which the group dbs will be created | [optional] 
 **q** | **int**| The number of shards for patient and healthdata dbs : 3-8 is a recommended range of value | [optional] 
 **n** | **int**| The number of replications for dbs : 3 is a recommended value | [optional] 

### Return type

[**GroupDto**](GroupDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroup**
> GroupDto getGroup(id)

Get a group by id

Get a group by id

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = GroupApi();
final id = id_example; // String | The id of the group

try {
    final result = api_instance.getGroup(id);
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->getGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the group | 

### Return type

[**GroupDto**](GroupDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReplicationInfo1**
> ReplicationInfoDto getReplicationInfo1(id)

Get index info

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = GroupApi();
final id = id_example; // String | The id of the group

try {
    final result = api_instance.getReplicationInfo1(id);
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->getReplicationInfo1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the group | 

### Return type

[**ReplicationInfoDto**](ReplicationInfoDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initDesignDocs**
> Object initDesignDocs(id, clazz, warmup)

Init design docs

Init design docs for provided group

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = GroupApi();
final id = id_example; // String | The id of the group
final clazz = clazz_example; // String | The class of the design doc
final warmup = true; // bool | Warmup the design doc

try {
    final result = api_instance.initDesignDocs(id, clazz, warmup);
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->initDesignDocs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the group | 
 **clazz** | **String**| The class of the design doc | [optional] 
 **warmup** | **bool**| Warmup the design doc | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGroups**
> List<GroupDto> listGroups()

List groups

List existing groups

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = GroupApi();

try {
    final result = api_instance.listGroups();
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->listGroups: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<GroupDto>**](GroupDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyGroupName**
> GroupDto modifyGroupName(id, name)

Update group name

Update existing group name

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = GroupApi();
final id = id_example; // String | The id of the group
final name = name_example; // String | The new name for the group

try {
    final result = api_instance.modifyGroupName(id, name);
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->modifyGroupName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the group | 
 **name** | **String**| The new name for the group | 

### Return type

[**GroupDto**](GroupDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyGroupProperties**
> GroupDto modifyGroupProperties(id, listOfPropertiesDto)

Update group properties

Update existing group properties

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = GroupApi();
final id = id_example; // String | The id of the group
final listOfPropertiesDto = ListOfPropertiesDto(); // ListOfPropertiesDto | 

try {
    final result = api_instance.modifyGroupProperties(id, listOfPropertiesDto);
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->modifyGroupProperties: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the group | 
 **listOfPropertiesDto** | [**ListOfPropertiesDto**](ListOfPropertiesDto.md)|  | 

### Return type

[**GroupDto**](GroupDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerNewGroupAdministrator**
> RegistrationSuccessDto registerNewGroupAdministrator(registrationInformationDto)

Create a group

Create a new group and associated dbs.  The created group will be manageable by the users that belong to the same group as the one that called createGroup. Several tasks can be executed during the group creation like DB replications towards the created DBs, users creation and healthcare parties creation

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = GroupApi();
final registrationInformationDto = RegistrationInformationDto(); // RegistrationInformationDto | 

try {
    final result = api_instance.registerNewGroupAdministrator(registrationInformationDto);
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->registerNewGroupAdministrator: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registrationInformationDto** | [**RegistrationInformationDto**](RegistrationInformationDto.md)|  | 

### Return type

[**RegistrationSuccessDto**](RegistrationSuccessDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetStorage**
> Object resetStorage(id, listOfIdsDto, q, n)

Reset storage for group

Reset storage

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = GroupApi();
final id = id_example; // String | The id of the group
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 
final q = 56; // int | The number of shards for patient and healthdata dbs : 3-8 is a recommended range of value
final n = 56; // int | The number of replications for dbs : 3 is a recommended value

try {
    final result = api_instance.resetStorage(id, listOfIdsDto, q, n);
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->resetStorage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the group | 
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 
 **q** | **int**| The number of shards for patient and healthdata dbs : 3-8 is a recommended range of value | [optional] 
 **n** | **int**| The number of replications for dbs : 3 is a recommended value | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setGroupPassword**
> GroupDto setGroupPassword(id, password)

Set group password

Update password for provided group

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = GroupApi();
final id = id_example; // String | The id of the group
final password = password_example; // String | The new password for the group (can only contain digits, letters, - and _)

try {
    final result = api_instance.setGroupPassword(id, password);
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->setGroupPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the group | 
 **password** | **String**| The new password for the group (can only contain digits, letters, - and _) | 

### Return type

[**GroupDto**](GroupDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solveConflicts**
> List<IdWithRevDto> solveConflicts(id, limit, warmup)

Solve conflicts for group

Solve conflicts for group

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = GroupApi();
final id = id_example; // String | The id of the group
final limit = 56; // int | Solve at most limit conflicts
final warmup = true; // bool | Warmup the design doc

try {
    final result = api_instance.solveConflicts(id, limit, warmup);
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->solveConflicts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the group | 
 **limit** | **int**| Solve at most limit conflicts | [optional] 
 **warmup** | **bool**| Warmup the design doc | [optional] 

### Return type

[**List<IdWithRevDto>**](IdWithRevDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

