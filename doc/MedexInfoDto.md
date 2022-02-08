# openapi.model.MedexInfoDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**beginDate** | **int** |  | 
**endDate** | **int** |  | 
**author** | [**HealthcarePartyDto**](HealthcarePartyDto.md) |  | [optional] 
**patient** | [**PatientDto**](PatientDto.md) |  | [optional] 
**patientLanguage** | **String** |  | [default to '"fr"']
**incapacityType** | **String** |  | [default to '"incapacity"']
**incapacityReason** | **String** |  | [default to '"sickness"']
**outOfHomeAllowed** | **bool** |  | 
**certificateDate** | **int** |  | [optional] 
**contentDate** | **int** |  | [optional] 
**diagnosisICPC** | **String** |  | [optional] 
**diagnosisICD** | **String** |  | [optional] 
**diagnosisDescr** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


