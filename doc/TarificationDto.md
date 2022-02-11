# icure_dart_sdk.model.TarificationDto

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
**label** | **Map<String, String>** |  | [optional] [default to const {}]
**context** | **String** |  | [optional] 
**type** | **String** |  | [optional] 
**code** | **String** |  | [optional] 
**version** | **String** |  | [optional] 
**author** | **String** |  | [optional] 
**regions** | **Set<String>** |  | [default to const {}]
**periodicity** | [**List<PeriodicityDto>**](PeriodicityDto.md) |  | [default to const []]
**level** | **int** |  | [optional] 
**links** | **List<String>** |  | [default to const []]
**qualifiedLinks** | [**Map<String, List<String>>**](List.md) |  | [default to const {}]
**flags** | **Set<String>** |  | [default to const {}]
**searchTerms** | [**Map<String, Set<String>>**](Set.md) |  | [default to const {}]
**data** | **String** |  | [optional] 
**appendices** | **Map<String, String>** |  | [default to const {}]
**disabled** | **bool** |  | 
**valorisations** | [**Set<ValorisationDto>**](ValorisationDto.md) |  | [default to const {}]
**category** | **Map<String, String>** |  | [default to const {}]
**consultationCode** | **bool** |  | [optional] 
**hasRelatedCode** | **bool** |  | [optional] 
**needsPrescriber** | **bool** |  | [optional] 
**relatedCodes** | **Set<String>** |  | [default to const {}]
**ngroup** | **String** |  | [optional] 
**letterValues** | [**List<LetterValueDto>**](LetterValueDto.md) |  | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


