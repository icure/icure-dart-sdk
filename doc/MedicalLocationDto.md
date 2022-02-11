# icure_dart_sdk.model.MedicalLocationDto

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
**description** | **String** |  | [optional] 
**responsible** | **String** |  | [optional] 
**guardPost** | **bool** |  | [optional] 
**cbe** | **String** |  | [optional] 
**bic** | **String** |  | [optional] 
**bankAccount** | **String** |  | [optional] 
**nihii** | **String** |  | [optional] 
**ssin** | **String** |  | [optional] 
**address** | [**AddressDto**](AddressDto.md) |  | [optional] 
**agendaIds** | **Set<String>** |  | [default to const {}]
**options** | **Map<String, String>** |  | [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


