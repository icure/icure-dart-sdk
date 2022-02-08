# openapi.model.FinancialInstitutionInformationDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**key** | **String** |  | [optional] 
**bankAccount** | **String** |  | [optional] 
**bic** | **String** |  | [optional] 
**proxyBankAccount** | **String** |  | [optional] 
**proxyBic** | **String** |  | [optional] 
**preferredFiiForPartners** | **Set<String>** |  | [default to const {}]
**encryptedSelf** | **String** | The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


