# icure_dart_sdk.api.UserApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assignHealthcareParty**](UserApi.md#assignhealthcareparty) | **
PUT** /rest/v1/user/current/hcparty/{healthcarePartyId} | Assign a healthcare party ID to current user
[**checkPassword**](UserApi.md#checkpassword) | **GET** /rest/v1/user/checkPassword |
[**checkTokenValidity**](UserApi.md#checktokenvalidity) | **GET** /rest/v1/user/token/{userId} | Check token validity
[**createUser**](UserApi.md#createuser) | **POST** /rest/v1/user | Create a user
[**createUserInGroup**](UserApi.md#createuseringroup) | **POST** /rest/v1/user/inGroup/{groupId} | Create a user
[**deleteUser**](UserApi.md#deleteuser) | **DELETE** /rest/v1/user/{userId} | Delete a User based on his/her ID.
[**deleteUserInGroup**](UserApi.md#deleteuseringroup) | **
DELETE** /rest/v1/user/inGroup/{groupId}/{userId} | Delete a User based on his/her ID.
[**encodePassword**](UserApi.md#encodepassword) | **GET** /rest/v1/user/encodePassword |
[**filterUsersBy**](UserApi.md#filterusersby) | **
POST** /rest/v1/user/filter | Filter users for the current user (HcParty)
[**findByHcpartyId**](UserApi.md#findbyhcpartyid) | **
GET** /rest/v1/user/byHealthcarePartyId/{id} | Get the list of users by healthcare party id
[**forgottenPassword**](UserApi.md#forgottenpassword) | **
POST** /rest/v1/user/forgottenPassword/{email} | Send a forgotten email message to an user
[**getCurrentSession**](UserApi.md#getcurrentsession) | **
GET** /rest/v1/user/session | Get Currently logged-in user session.
[**getCurrentUser**](UserApi.md#getcurrentuser) | **GET** /rest/v1/user/current | Get presently logged-in user.
[**getMatchingUsers**](UserApi.md#getmatchingusers) | **GET** /rest/v1/user/matches | Get presently logged-in user.
[**getToken**](UserApi.md#gettoken) | **
POST** /rest/v1/user/token/{userId}/{key} | Request a new temporary token for authentication
[**getUser**](UserApi.md#getuser) | **GET** /rest/v1/user/{userId} | Get a user by his ID
[**getUserByEmail**](UserApi.md#getuserbyemail) | **GET** /rest/v1/user/byEmail/{email} | Get a user by his Email/Login
[**listUsersBy**](UserApi.md#listusersby) | **GET** /rest/v1/user | List users with(out) pagination
[**listUsersInGroup**](UserApi.md#listusersingroup) | **
GET** /rest/v1/user/inGroup/{groupId} | List users with(out) pagination
[**matchUsersBy**](UserApi.md#matchusersby) | **
POST** /rest/v1/user/match | Get ids of healthcare party matching the provided filter for the current user (HcParty)
[**modifyProperties**](UserApi.md#modifyproperties) | **PUT** /rest/v1/user/{userId}/properties | Modify a User property
[**modifyUser**](UserApi.md#modifyuser) | **PUT** /rest/v1/user | Modify a user.
[**modifyUserInGroup**](UserApi.md#modifyuseringroup) | **PUT** /rest/v1/user/inGroup/{groupId} | Modify a user.


# **assignHealthcareParty**
> UserDto assignHealthcareParty(healthcarePartyId)

Assign a healthcare party ID to current user

UserDto gets returned.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = UserApi();
final healthcarePartyId = healthcarePartyId_example; // String |

try {
    final result = api_instance.assignHealthcareParty(healthcarePartyId);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->assignHealthcareParty: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **healthcarePartyId** | **String**|  |

### Return type

[**UserDto**](UserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkPassword**
> bool checkPassword(password)



### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = UserApi();
final password = password_example; // String |

try {
    final result = api_instance.checkPassword(password);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->checkPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password** | **String**|  |

### Return type

**bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkTokenValidity**
> bool checkTokenValidity(userId, token)

Check token validity

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = UserApi();
final userId = userId_example; // String |
final token = token_example; // String |

try {
    final result = api_instance.checkTokenValidity(userId, token);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->checkTokenValidity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  |
 **token** | **String**|  |

### Return type

**bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUser**
> UserDto createUser(userDto)

Create a user

Create a user. HealthcareParty ID should be set. Email or Login have to be set. If login hasn't been set, Email will be used for Login instead.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = UserApi();
final userDto = UserDto(); // UserDto |

try {
    final result = api_instance.createUser(userDto);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->createUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userDto** | [**UserDto**](UserDto.md)|  |

### Return type

[**UserDto**](UserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUserInGroup**
> UserDto createUserInGroup(groupId, userDto)

Create a user

Create a user. HealthcareParty ID should be set. Email has to be set and the Login has to be null. On server-side, Email will be used for Login.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = UserApi();
final groupId = groupId_example; // String |
final userDto = UserDto(); // UserDto |

try {
    final result = api_instance.createUserInGroup(groupId, userDto);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->createUserInGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  |
 **userDto** | [**UserDto**](UserDto.md)|  |

### Return type

[**UserDto**](UserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
> DocIdentifier deleteUser(userId)

Delete a User based on his/her ID.

Delete a User based on his/her ID. The return value is an array containing the ID of deleted user.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = UserApi();
final userId = userId_example; // String |

try {
    final result = api_instance.deleteUser(userId);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->deleteUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  |

### Return type

[**DocIdentifier**](DocIdentifier.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserInGroup**
> Object deleteUserInGroup(groupId, userId)

Delete a User based on his/her ID.

Delete a User based on his/her ID. The return value is an array containing the ID of deleted user.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = UserApi();
final groupId = groupId_example; // String |
final userId = userId_example; // String |

try {
    final result = api_instance.deleteUserInGroup(groupId, userId);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->deleteUserInGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  |
 **userId** | **String**|  |

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **encodePassword**
> String encodePassword(password)



### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = UserApi();
final password = password_example; // String |

try {
    final result = api_instance.encodePassword(password);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->encodePassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password** | **String**|  |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filterUsersBy**
> PaginatedListUserDto filterUsersBy(filterChainUser, startDocumentId, limit)

Filter users for the current user (HcParty)

Returns a list of users along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = UserApi();
final filterChainUser = FilterChainUser(); // FilterChainUser |
final startDocumentId = startDocumentId_example; // String | A User document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.filterUsersBy(filterChainUser, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->filterUsersBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterChainUser** | [**FilterChainUser**](FilterChainUser.md)|  |
 **startDocumentId** | **String**| A User document ID | [optional]
 **limit** | **int**| Number of rows | [optional]

### Return type

[**PaginatedListUserDto**](PaginatedListUserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findByHcpartyId**
> List<String> findByHcpartyId(id)

Get the list of users by healthcare party id

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = UserApi();
final id = id_example; // String |

try {
    final result = api_instance.findByHcpartyId(id);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->findByHcpartyId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  |

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forgottenPassword**
> bool forgottenPassword(email, emailTemplateDto)

Send a forgotten email message to an user

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = UserApi();
final email = email_example; // String | the email of the user
final emailTemplateDto = EmailTemplateDto(); // EmailTemplateDto |

try {
    final result = api_instance.forgottenPassword(email, emailTemplateDto);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->forgottenPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| the email of the user  |
 **emailTemplateDto** | [**EmailTemplateDto**](EmailTemplateDto.md)|  |

### Return type

**bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrentSession**
> String getCurrentSession()

Get Currently logged-in user session.

Get current user.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = UserApi();

try {
    final result = api_instance.getCurrentSession();
    print(result);
} catch (e) {
    print('Exception when calling UserApi->getCurrentSession: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrentUser**
> UserDto getCurrentUser()

Get presently logged-in user.

Get current user.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = UserApi();

try {
    final result = api_instance.getCurrentUser();
    print(result);
} catch (e) {
    print('Exception when calling UserApi->getCurrentUser: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserDto**](UserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMatchingUsers**
> List<UserGroupDto> getMatchingUsers()

Get presently logged-in user.

Get current user.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = UserApi();

try {
    final result = api_instance.getMatchingUsers();
    print(result);
} catch (e) {
    print('Exception when calling UserApi->getMatchingUsers: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UserGroupDto>**](UserGroupDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getToken**
> String getToken(userId, key, tokenValidity)

Request a new temporary token for authentication

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = UserApi();
final userId = userId_example; // String |
final key = key_example; // String | The token key. Only one instance of a token with a defined key can exist at the same time
final tokenValidity = 789; // int | The token validity in seconds

try {
    final result = api_instance.getToken(userId, key, tokenValidity);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->getToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  |
 **key** | **String**| The token key. Only one instance of a token with a defined key can exist at the same time |
 **tokenValidity** | **int**| The token validity in seconds | [optional]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
> UserDto getUser(userId)

Get a user by his ID

General information about the user

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = UserApi();
final userId = userId_example; // String |

try {
    final result = api_instance.getUser(userId);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->getUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  |

### Return type

[**UserDto**](UserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserByEmail**
> UserDto getUserByEmail(email)

Get a user by his Email/Login

General information about the user

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = UserApi();
final email = email_example; // String |

try {
    final result = api_instance.getUserByEmail(email);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->getUserByEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  |

### Return type

[**UserDto**](UserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUsersBy**
> PaginatedListUserDto listUsersBy(startKey, startDocumentId, limit)

List users with(out) pagination

Returns a list of users.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = UserApi();
final startKey = startKey_example; // String | An user email
final startDocumentId = startDocumentId_example; // String | An user document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.listUsersBy(startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->listUsersBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startKey** | **String**| An user email | [optional]
 **startDocumentId** | **String**| An user document ID | [optional]
 **limit** | **int**| Number of rows | [optional]

### Return type

[**PaginatedListUserDto**](PaginatedListUserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUsersInGroup**
> PaginatedListUserDto listUsersInGroup(groupId, startKey, startDocumentId, limit)

List users with(out) pagination

Returns a list of users.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = UserApi();
final groupId = groupId_example; // String |
final startKey = startKey_example; // String | An user login
final startDocumentId = startDocumentId_example; // String | An user document ID
final limit = 56; // int | Number of rows

try {
    final result = api_instance.listUsersInGroup(groupId, startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->listUsersInGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  |
 **startKey** | **String**| An user login | [optional]
 **startDocumentId** | **String**| An user document ID | [optional]
 **limit** | **int**| Number of rows | [optional]

### Return type

[**PaginatedListUserDto**](PaginatedListUserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **matchUsersBy**
> List<String> matchUsersBy(abstractFilterDtoUser)

Get ids of healthcare party matching the provided filter for the current user (HcParty)

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = UserApi();
final abstractFilterDtoUser = AbstractFilterDtoUser(); // AbstractFilterDtoUser |

try {
    final result = api_instance.matchUsersBy(abstractFilterDtoUser);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->matchUsersBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **abstractFilterDtoUser** | [**AbstractFilterDtoUser**](AbstractFilterDtoUser.md)|  |

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyProperties**
> UserDto modifyProperties(userId, propertyStubDto)

Modify a User property

Modify a User properties based on his/her ID. The return value is the modified user.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = UserApi();
final userId = userId_example; // String |
final propertyStubDto = [List<PropertyStubDto>()]; // List<PropertyStubDto> |

try {
    final result = api_instance.modifyProperties(userId, propertyStubDto);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->modifyProperties: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  |
 **propertyStubDto** | [**List<PropertyStubDto>**](PropertyStubDto.md)|  | [optional]

### Return type

[**UserDto**](UserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyUser**
> UserDto modifyUser(userDto)

Modify a user.

No particular return value. It's just a message.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = UserApi();
final userDto = UserDto(); // UserDto |

try {
    final result = api_instance.modifyUser(userDto);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->modifyUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userDto** | [**UserDto**](UserDto.md)|  |

### Return type

[**UserDto**](UserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyUserInGroup**
> UserDto modifyUserInGroup(groupId, userDto)

Modify a user.

No particular return value. It's just a message.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = UserApi();
final groupId = groupId_example; // String |
final userDto = UserDto(); // UserDto |

try {
    final result = api_instance.modifyUserInGroup(groupId, userDto);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->modifyUserInGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  |
 **userDto** | [**UserDto**](UserDto.md)|  |

### Return type

[**UserDto**](UserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
