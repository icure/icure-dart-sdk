# openapi.model.AmpDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**rev** | **String** |  | [optional] 
**deletionDate** | **int** | hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called. | [optional] 
**from** | **int** |  | [optional] 
**to** | **int** |  | [optional] 
**code** | **String** |  | [optional] 
**vmp** | [**VmpStubDto**](VmpStubDto.md) |  | [optional] 
**officialName** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**name** | [**SamTextDto**](SamTextDto.md) |  | [optional] 
**blackTriangle** | **bool** |  | 
**medicineType** | **String** |  | [optional] 
**company** | [**CompanyDto**](CompanyDto.md) |  | [optional] 
**abbreviatedName** | [**SamTextDto**](SamTextDto.md) |  | [optional] 
**proprietarySuffix** | [**SamTextDto**](SamTextDto.md) |  | [optional] 
**prescriptionName** | [**SamTextDto**](SamTextDto.md) |  | [optional] 
**ampps** | [**List<AmppDto>**](AmppDto.md) |  | [default to const []]
**components** | [**List<AmpComponentDto>**](AmpComponentDto.md) |  | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


