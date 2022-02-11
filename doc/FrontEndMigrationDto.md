# icure_dart_sdk.model.FrontEndMigrationDto

## Load the model package
```dart
import 'package:icure_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**rev** | **String** |  | [optional] 
**deletionDate** | **int** | hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called. | [optional] 
**name** | **String** |  | [optional] 
**startDate** | **int** |  | [optional] 
**endDate** | **int** |  | [optional] 
**status** | **String** |  | [optional] 
**logs** | **String** |  | [optional] 
**userId** | **String** |  | [optional] 
**startKey** | **String** |  | [optional] 
**startKeyDocId** | **String** |  | [optional] 
**processCount** | **int** |  | [optional] 
**properties** | [**Set<PropertyStubDto>**](PropertyStubDto.md) | Extra properties for the fem. Those properties are typed (see class Property) | [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


