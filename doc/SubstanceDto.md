# icure_dart_sdk.model.SubstanceDto

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
**code** | **String** |  | [optional]
**chemicalForm** | **String** |  | [optional]
**name** | [**SamTextDto**](SamTextDto.md) |  | [optional]
**note** | [**SamTextDto**](SamTextDto.md) |  | [optional]
**standardSubstances** | [**List<StandardSubstanceDto>**](StandardSubstanceDto.md) |  | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
