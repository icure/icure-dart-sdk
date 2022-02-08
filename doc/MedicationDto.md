# openapi.model.MedicationDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**compoundPrescription** | **String** |  | [optional] 
**substanceProduct** | [**SubstanceproductDto**](SubstanceproductDto.md) |  | [optional] 
**medicinalProduct** | [**MedicinalproductDto**](MedicinalproductDto.md) |  | [optional] 
**numberOfPackages** | **int** |  | [optional] 
**batch** | **String** |  | [optional] 
**instructionForPatient** | **String** |  | [optional] 
**commentForDelivery** | **String** |  | [optional] 
**drugRoute** | **String** |  | [optional] 
**temporality** | **String** |  | [optional] 
**frequency** | [**CodeStubDto**](CodeStubDto.md) |  | [optional] 
**reimbursementReason** | [**CodeStubDto**](CodeStubDto.md) |  | [optional] 
**substitutionAllowed** | **bool** |  | [optional] 
**beginMoment** | **int** |  | [optional] 
**endMoment** | **int** |  | [optional] 
**deliveryMoment** | **int** |  | [optional] 
**endExecutionMoment** | **int** |  | [optional] 
**duration** | [**DurationDto**](DurationDto.md) |  | [optional] 
**renewal** | [**RenewalDto**](RenewalDto.md) |  | [optional] 
**knownUsage** | **bool** |  | [optional] 
**regimen** | [**List<RegimenItemDto>**](RegimenItemDto.md) |  | [optional] [default to const []]
**posology** | **String** |  | [optional] 
**agreements** | [**Map<String, ParagraphAgreementDto>**](ParagraphAgreementDto.md) |  | [optional] [default to const {}]
**medicationSchemeIdOnSafe** | **String** |  | [optional] 
**medicationSchemeSafeVersion** | **int** |  | [optional] 
**medicationSchemeTimeStampOnSafe** | **int** |  | [optional] 
**medicationSchemeDocumentId** | **String** |  | [optional] 
**safeIdName** | **String** |  | [optional] 
**idOnSafes** | **String** |  | [optional] 
**timestampOnSafe** | **int** |  | [optional] 
**changeValidated** | **bool** |  | [optional] 
**newSafeMedication** | **bool** |  | [optional] 
**medicationUse** | **String** |  | [optional] 
**beginCondition** | **String** |  | [optional] 
**endCondition** | **String** |  | [optional] 
**origin** | **String** |  | [optional] 
**medicationChanged** | **bool** |  | [optional] 
**posologyChanged** | **bool** |  | [optional] 
**suspension** | [**List<SuspensionDto>**](SuspensionDto.md) |  | [optional] [default to const []]
**prescriptionRID** | **String** |  | [optional] 
**status** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


