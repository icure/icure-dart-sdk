# icure_dart_sdk.model.CalendarItemTypeDto

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
**color** | **String** |  | [optional]
**duration** | **int** |  | [default to 0]
**externalRef** | **String** |  | [optional]
**mikronoId** | **String** |  | [optional]
**docIds** | **Set<String>** |  | [default to const {}]
**otherInfos** | **Map<String, String>** |  | [default to const {}]
**subjectByLanguage** | **Map<String, String>** |  | [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
