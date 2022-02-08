# openapi.model.UserDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | the Id of the user. We encourage using either a v4 UUID or a HL7 Id. | 
**rev** | **String** | the revision of the user in the database, used for conflict management / optimistic locking. | [optional] 
**deletionDate** | **int** | hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called. | [optional] 
**created** | **int** |  | [optional] 
**name** | **String** | Last name of the user. This is the official last name that should be used for official administrative purposes. | [optional] 
**properties** | [**Set<PropertyStubDto>**](PropertyStubDto.md) | Extra properties for the user. Those properties are typed (see class Property) | [default to const {}]
**permissions** | [**Set<PermissionDto>**](PermissionDto.md) | If permission to modify patient data is granted or revoked | [default to const {}]
**roles** | **Set<String>** | Roles specified for the user | [default to const {}]
**type** | **String** | Authorization source for user. 'Database', 'ldap' or 'token' | [optional] 
**status** | **String** | State of user's activeness: 'Active', 'Disabled' or 'Registering' | [optional] 
**login** | **String** | Username for this user. We encourage using an email address | [optional] 
**passwordHash** | **String** | Hashed version of the password (BCrypt is used for hashing) | [optional] 
**secret** | **String** | Secret token used to verify 2fa | [optional] 
**use2fa** | **bool** | Whether the user has activated two factors authentication | [optional] 
**groupId** | **String** | id of the group (practice/hospital) the user is member of | [optional] 
**healthcarePartyId** | **String** | Id of the healthcare party if the user is a healthcare party. | [optional] 
**patientId** | **String** | Id of the patient if the user is a patient | [optional] 
**deviceId** | **String** | Id of the device if the user is a device | [optional] 
**autoDelegations** | [**Map<String, Set<String>>**](Set.md) | Delegations that are automatically generated client side when a new database object is created by this user | [default to const {}]
**createdDate** | [**DateTime**](DateTime.md) | the timestamp (unix epoch in ms) of creation of the user, will be filled automatically if missing. Not enforced by the application server. | [optional] 
**termsOfUseDate** | [**DateTime**](DateTime.md) | the timestamp (unix epoch in ms) of the latest validation of the terms of use of the application | [optional] 
**email** | **String** | email address of the user (used for token exchange or password recovery). | [optional] 
**mobilePhone** | **String** | mobile phone of the user (used for token exchange or password recovery). | [optional] 
**applicationTokens** | **Map<String, String>** |  | [default to const {}]
**authenticationTokens** | [**Map<String, AuthenticationTokenDto>**](AuthenticationTokenDto.md) | Encrypted and time-limited Authentication tokens used for inter-applications authentication | [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


