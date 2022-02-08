# openapi.model.InsuranceDto

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
**name** | **Map<String, String>** |  | [default to const {}]
**privateInsurance** | **bool** |  | 
**hospitalisationInsurance** | **bool** |  | 
**ambulatoryInsurance** | **bool** |  | 
**code** | **String** |  | [optional] 
**agreementNumber** | **String** |  | [optional] 
**parent** | **String** |  | [optional] 
**address** | [**AddressDto**](AddressDto.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


