# icure_dart_sdk.model.AmppDto

## Load the model package
```dart
import 'package:icure_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **int** |  | [optional] 
**to** | **int** |  | [optional] 
**index** | **double** |  | [optional] 
**ctiExtended** | **String** |  | [optional] 
**orphan** | **bool** |  | 
**leafletLink** | [**SamTextDto**](SamTextDto.md) |  | [optional] 
**spcLink** | [**SamTextDto**](SamTextDto.md) |  | [optional] 
**rmaPatientLink** | [**SamTextDto**](SamTextDto.md) |  | [optional] 
**rmaProfessionalLink** | [**SamTextDto**](SamTextDto.md) |  | [optional] 
**parallelCircuit** | **int** |  | [optional] 
**parallelDistributor** | **String** |  | [optional] 
**packMultiplier** | **int** |  | [optional] 
**packAmount** | [**QuantityDto**](QuantityDto.md) |  | [optional] 
**packDisplayValue** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**atcs** | [**List<AtcDto>**](AtcDto.md) |  | [default to const []]
**crmLink** | [**SamTextDto**](SamTextDto.md) |  | [optional] 
**deliveryModusCode** | **String** |  | [optional] 
**deliveryModus** | [**SamTextDto**](SamTextDto.md) |  | [optional] 
**deliveryModusSpecificationCode** | **String** |  | [optional] 
**deliveryModusSpecification** | [**SamTextDto**](SamTextDto.md) |  | [optional] 
**dhpcLink** | [**SamTextDto**](SamTextDto.md) |  | [optional] 
**distributorCompany** | [**CompanyDto**](CompanyDto.md) |  | [optional] 
**singleUse** | **bool** |  | [optional] 
**speciallyRegulated** | **int** |  | [optional] 
**abbreviatedName** | [**SamTextDto**](SamTextDto.md) |  | [optional] 
**prescriptionName** | [**SamTextDto**](SamTextDto.md) |  | [optional] 
**note** | [**SamTextDto**](SamTextDto.md) |  | [optional] 
**posologyNote** | [**SamTextDto**](SamTextDto.md) |  | [optional] 
**noGenericPrescriptionReasons** | [**List<SamTextDto>**](SamTextDto.md) |  | [optional] [default to const []]
**exFactoryPrice** | **double** |  | [optional] 
**reimbursementCode** | **int** |  | [optional] 
**definedDailyDose** | [**QuantityDto**](QuantityDto.md) |  | [optional] 
**officialExFactoryPrice** | **double** |  | [optional] 
**realExFactoryPrice** | **double** |  | [optional] 
**pricingInformationDecisionDate** | **int** |  | [optional] 
**components** | [**List<AmppComponentDto>**](AmppComponentDto.md) |  | [optional] [default to const []]
**commercializations** | [**List<CommercializationDto>**](CommercializationDto.md) |  | [optional] [default to const []]
**supplyProblems** | [**List<SupplyProblemDto>**](SupplyProblemDto.md) |  | [optional] [default to const []]
**dmpps** | [**List<DmppDto>**](DmppDto.md) |  | [default to const []]
**vaccineIndicationCodes** | **List<String>** |  | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


