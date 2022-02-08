# openapi.model.SumehrExportInfoDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**secretForeignKeys** | **List<String>** |  | [default to const []]
**excludedIds** | **List<String>** |  | [default to const []]
**recipient** | [**HealthcarePartyDto**](HealthcarePartyDto.md) |  | [optional] 
**softwareName** | **String** |  | [optional] 
**softwareVersion** | **String** |  | [optional] 
**comment** | **String** |  | [default to '""']
**includeIrrelevantInformation** | **bool** |  | [optional] 
**services** | [**List<ServiceDto>**](ServiceDto.md) |  | [optional] [default to const []]
**healthElements** | [**List<HealthElementDto>**](HealthElementDto.md) |  | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


