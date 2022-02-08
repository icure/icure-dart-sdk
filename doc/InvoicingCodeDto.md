# openapi.model.InvoicingCodeDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**dateCode** | **int** |  | [optional] 
**logicalId** | **String** |  | [optional] 
**label** | **String** |  | [optional] 
**userId** | **String** |  | [optional] 
**contactId** | **String** |  | [optional] 
**serviceId** | **String** |  | [optional] 
**tarificationId** | **String** |  | [optional] 
**code** | **String** |  | [optional] 
**paymentType** | **String** |  | [optional] 
**paid** | **double** |  | [optional] 
**totalAmount** | **double** |  | [optional] 
**reimbursement** | **double** |  | [optional] 
**patientIntervention** | **double** |  | [optional] 
**doctorSupplement** | **double** |  | [optional] 
**conventionAmount** | **double** |  | [optional] 
**vat** | **double** |  | [optional] 
**error** | **String** |  | [optional] 
**contract** | **String** |  | [optional] 
**contractDate** | **int** |  | [optional] 
**units** | **int** |  | [optional] 
**side** | **int** |  | [optional] 
**timeOfDay** | **int** |  | [optional] 
**eidReadingHour** | **int** |  | [optional] 
**eidReadingValue** | **String** |  | [optional] 
**override3rdPayerCode** | **int** |  | [optional] 
**override3rdPayerReason** | **String** |  | [optional] 
**transplantationCode** | **int** |  | [optional] 
**prescriberNorm** | **int** |  | [optional] 
**percentNorm** | **int** |  | [optional] 
**prescriberNihii** | **String** |  | [optional] 
**relatedCode** | **String** |  | [optional] 
**prescriptionDate** | **int** |  | [optional] 
**derogationMaxNumber** | **int** |  | [optional] 
**prescriberSsin** | **String** |  | [optional] 
**prescriberLastName** | **String** |  | [optional] 
**prescriberFirstName** | **String** |  | [optional] 
**prescriberCdHcParty** | **String** |  | [optional] 
**locationNihii** | **String** |  | [optional] 
**locationCdHcParty** | **String** |  | [optional] 
**locationService** | **int** |  | [optional] 
**canceled** | **bool** |  | [optional] 
**accepted** | **bool** |  | [optional] 
**pending** | **bool** |  | [optional] 
**resent** | **bool** |  | [optional] 
**archived** | **bool** |  | [optional] 
**lost** | **bool** |  | [optional] 
**insuranceJustification** | **int** |  | [optional] 
**cancelPatientInterventionReason** | **int** |  | [optional] 
**status** | **int** |  | [optional] 
**encryptedSelf** | **String** | The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


