# icure_dart_sdk.model.GroupDto

## Load the model package
```dart
import 'package:icure_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The id of the group. We encourage using either a v4 UUID or a HL7 Id. |
**rev** | **String** | The revision of the group in the database, used for conflict management / optimistic locking. | [optional]
**deletionDate** | **int** | hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called. | [optional]
**name** | **String** | Username for the group | [optional]
**password** | **String** | Password for the group access | [optional]
**servers** | **List<String>** | List of servers accessible to the group | [optional] [default to const []]
**superAdmin** | **bool** | Whether the group has a super admin permission, originally set to no access. |
**properties** | [**Set<PropertyStubDto>**](PropertyStubDto.md) | Extra properties for the user. Those properties are typed (see class Property) | [default to const {}]
**superGroup** | **String** |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
