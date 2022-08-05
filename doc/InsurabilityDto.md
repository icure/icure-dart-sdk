# icure_dart_sdk.model.InsurabilityDto

## Load the model package
```dart
import 'package:icure_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parameters** | **Map<String, String>** | Insurance extra parameters. | [default to const {}]
**hospitalisation** | **bool** | Is hospitalization covered. | [optional]
**ambulatory** | **bool** | Is outpatient care covered. | [optional]
**dental** | **bool** | Is dental care covered. | [optional]
**identificationNumber** | **String** | Identification number of the patient at the insurance. | [optional]
**insuranceId** | **String** | Id of the Insurance. | [optional]
**startDate** | **int** | Start date of the coverage (YYYYMMDD). | [optional]
**endDate** | **int** | End date of the coverage (YYYYMMDD). | [optional]
**titularyId** | **String** | UUID of the contact person who is the policyholder of the insurance (when the patient is covered by the insurance of a third person). | [optional]
**encryptedSelf** | **String** | The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
