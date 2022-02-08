# openapi.model.ImportResultDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**patient** | [**PatientDto**](PatientDto.md) |  | [optional] 
**hes** | [**List<HealthElementDto>**](HealthElementDto.md) |  | [optional] [default to const []]
**ctcs** | [**List<ContactDto>**](ContactDto.md) |  | [optional] [default to const []]
**warnings** | **List<String>** |  | [optional] [default to const []]
**errors** | **List<String>** |  | [optional] [default to const []]
**forms** | [**List<FormDto>**](FormDto.md) |  | [optional] [default to const []]
**hcps** | [**List<HealthcarePartyDto>**](HealthcarePartyDto.md) |  | [optional] [default to const []]
**documents** | [**List<DocumentDto>**](DocumentDto.md) |  | [optional] [default to const []]
**attachments** | [**Map<String, MimeAttachmentDto>**](MimeAttachmentDto.md) |  | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


