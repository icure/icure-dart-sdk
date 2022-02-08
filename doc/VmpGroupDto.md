# openapi.model.VmpGroupDto

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
**productId** | **String** |  | [optional] 
**code** | **String** |  | [optional] 
**name** | [**SamTextDto**](SamTextDto.md) |  | [optional] 
**noGenericPrescriptionReason** | [**NoGenericPrescriptionReasonDto**](NoGenericPrescriptionReasonDto.md) |  | [optional] 
**noSwitchReason** | [**NoSwitchReasonDto**](NoSwitchReasonDto.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


