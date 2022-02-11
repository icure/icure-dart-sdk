# icure_dart_sdk.model.ReimbursementDto

## Load the model package
```dart
import 'package:icure_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **int** |  | [optional] 
**to** | **int** |  | [optional] 
**deliveryEnvironment** | **String** |  | [optional] 
**code** | **String** |  | [optional] 
**codeType** | **String** |  | [optional] 
**multiple** | **String** |  | [optional] 
**temporary** | **bool** |  | [optional] 
**reference** | **bool** |  | [optional] 
**legalReferencePath** | **String** |  | [optional] 
**flatRateSystem** | **bool** |  | [optional] 
**reimbursementBasePrice** | **num** |  | [optional] 
**referenceBasePrice** | **num** |  | [optional] 
**copaymentSupplement** | **num** |  | [optional] 
**pricingUnit** | [**PricingDto**](PricingDto.md) |  | [optional] 
**pricingSlice** | [**PricingDto**](PricingDto.md) |  | [optional] 
**reimbursementCriterion** | [**ReimbursementCriterionDto**](ReimbursementCriterionDto.md) |  | [optional] 
**copayments** | [**List<CopaymentDto>**](CopaymentDto.md) |  | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


