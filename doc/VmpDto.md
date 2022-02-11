# icure_dart_sdk.model.VmpDto

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
**from** | **int** |  | [optional] 
**to** | **int** |  | [optional] 
**code** | **String** |  | [optional] 
**vmpGroup** | [**VmpGroupStubDto**](VmpGroupStubDto.md) |  | [optional] 
**name** | [**SamTextDto**](SamTextDto.md) |  | [optional] 
**abbreviation** | [**SamTextDto**](SamTextDto.md) |  | [optional] 
**vtm** | [**VtmDto**](VtmDto.md) |  | [optional] 
**wadas** | [**List<WadaDto>**](WadaDto.md) |  | [optional] [default to const []]
**components** | [**List<VmpComponentDto>**](VmpComponentDto.md) |  | [optional] [default to const []]
**commentedClassifications** | [**List<CommentedClassificationDto>**](CommentedClassificationDto.md) |  | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


