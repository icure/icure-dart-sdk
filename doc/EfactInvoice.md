# icure_dart_sdk.model.EfactInvoice

## Load the model package
```dart
import 'package:icure_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**patient** | [**PatientDto**](PatientDto.md) |  | [optional]
**ioCode** | **String** |  | [optional]
**items** | [**List<InvoiceItem>**](InvoiceItem.md) |  | [default to const []]
**reason** | **String** |  | [optional]
**invoiceRef** | **String** |  | [optional]
**invoiceNumber** | **int** |  | [optional]
**ignorePrescriptionDate** | **bool** |  |
**hospitalisedPatient** | **bool** |  |
**creditNote** | **bool** |  |
**relatedInvoiceIoCode** | **String** |  | [optional]
**relatedInvoiceNumber** | **int** |  | [optional]
**relatedBatchSendNumber** | **int** |  | [optional]
**relatedBatchYearMonth** | **int** |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
