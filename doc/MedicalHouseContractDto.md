# icure_dart_sdk.model.MedicalHouseContractDto

## Load the model package
```dart
import 'package:icure_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contractId** | **String** |  | [optional] 
**validFrom** | **int** |  | [optional] 
**validTo** | **int** |  | [optional] 
**mmNihii** | **String** |  | [optional] 
**hcpId** | **String** |  | [optional] 
**changeType** | **String** |  | [optional] 
**parentContractId** | **String** |  | [optional] 
**changedBy** | **String** |  | [optional] 
**startOfContract** | **int** |  | [optional] 
**startOfCoverage** | **int** |  | [optional] 
**endOfContract** | **int** |  | [optional] 
**endOfCoverage** | **int** |  | [optional] 
**kine** | **bool** |  | [default to false]
**gp** | **bool** |  | [default to false]
**ptd** | **bool** |  | [default to false]
**nurse** | **bool** |  | [default to false]
**noKine** | **bool** |  | [default to false]
**noGp** | **bool** |  | [default to false]
**noNurse** | **bool** |  | [default to false]
**unsubscriptionReasonId** | **int** |  | [optional] 
**ptdStart** | **int** |  | [optional] 
**ptdEnd** | **int** |  | [optional] 
**ptdLastInvoiced** | **int** |  | [optional] 
**startOfSuspension** | **int** |  | [optional] 
**endOfSuspension** | **int** |  | [optional] 
**suspensionReason** | **String** |  | [optional] 
**suspensionSource** | **String** |  | [optional] 
**forcedSuspension** | **bool** |  | [default to false]
**signatureType** | **String** |  | [optional] 
**status** | **int** |  | [optional] 
**options** | **Map<String, String>** |  | [default to const {}]
**receipts** | **Map<String, String>** |  | [default to const {}]
**encryptedSelf** | **String** | The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


