# icure_dart_sdk.model.FormTemplateDto

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
**layout** | [**FormLayout**](FormLayout.md) |  | [optional]
**templateLayout** | [**FormTemplateLayout**](FormTemplateLayout.md) |  | [optional]
**name** | **String** |  | [optional]
**guid** | **String** |  | [optional]
**group** | [**DocumentGroupDto**](DocumentGroupDto.md) |  | [optional]
**descr** | **String** |  | [optional]
**disabled** | **String** |  | [optional]
**specialty** | [**CodeStubDto**](CodeStubDto.md) |  | [optional]
**author** | **String** |  | [optional]
**formInstancePreferredLocation** | **String** |  | [optional]
**keyboardShortcut** | **String** |  | [optional]
**shortReport** | **String** |  | [optional]
**mediumReport** | **String** |  | [optional]
**longReport** | **String** |  | [optional]
**reports** | **Set<String>** |  | [default to const {}]
**tags** | [**Set<CodeStubDto>**](CodeStubDto.md) |  | [default to const {}]
**layoutAttachmentId** | **String** |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
