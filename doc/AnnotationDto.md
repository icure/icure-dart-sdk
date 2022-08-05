# icure_dart_sdk.model.AnnotationDto

## Load the model package
```dart
import 'package:icure_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The Id of the Annotation. We encourage using either a v4 UUID or a HL7 Id. |
**author** | **String** |  | [optional]
**created** | **int** | The timestamp (unix epoch in ms) of creation of this note, will be filled automatically if missing. Not enforced by the application server. | [optional]
**modified** | **int** | The timestamp (unix epoch in ms) of the latest modification of this note, will be filled automatically if missing. Not enforced by the application server. | [optional]
**text** | **String** | Text contained in the note, written as markdown. | [optional]
**location** | **String** | Defines to which part of the corresponding information the note is related to. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
