# openapi.model.PatientHealthCarePartyDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Type of care/relationship. | [optional] 
**healthcarePartyId** | **String** | UUID of the hcp. | [optional] 
**sendFormats** | **Map<String, String>** | Preferred format of exchange for diverse means of communication | [default to const {}]
**referralPeriods** | [**Set<ReferralPeriodDto>**](ReferralPeriodDto.md) | Time periods | [default to const {}]
**referral** | **bool** |  | [default to false]
**encryptedSelf** | **String** | The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


