# icure_dart_sdk.model.EntityTemplateDto

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
**userId** | **String** |  | [optional]
**descr** | **String** |  | [optional]
**keywords** | **Set<String>** |  | [optional] [default to const {}]
**entityType** | **String** |  | [optional]
**subType** | **String** |  | [optional]
**defaultTemplate** | **bool** |  | [optional]
**entity** | [**List<Map<String, Object>>**](Map.md) |  | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
