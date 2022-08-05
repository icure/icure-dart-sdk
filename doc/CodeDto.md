# icure_dart_sdk.model.CodeDto

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
**context** | **String** |  | [optional]
**type** | **String** |  | [optional]
**code** | **String** |  | [optional]
**version** | **String** |  | [optional]
**label** | **Map<String, String>** |  | [optional] [default to const {}]
**author** | **String** |  | [optional]
**regions** | **Set<String>** |  | [default to const {}]
**periodicity** | [**Set<PeriodicityDto>**](PeriodicityDto.md) |  | [default to const {}]
**level** | **int** |  | [optional]
**links** | **Set<String>** |  | [default to const {}]
**qualifiedLinks** | [**Map<String, List<String>>**](List.md) |  | [default to const {}]
**flags** | **Set<String>** |  | [default to const {}]
**searchTerms** | [**Map<String, Set<String>>**](Set.md) |  | [default to const {}]
**data** | **String** |  | [optional]
**appendices** | **Map<String, String>** |  | [default to const {}]
**disabled** | **bool** |  | [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
