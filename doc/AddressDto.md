# icure_dart_sdk.model.AddressDto

## Load the model package
```dart
import 'package:icure_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**addressType** | **String** | The type of place the address represents, ex: home, office, hospital, clinic, etc.  | [optional] 
**descr** | **String** | Descriptive notes about the address | [optional] 
**street** | **String** | Street name | [optional] 
**houseNumber** | **String** | Building / house number | [optional] 
**postboxNumber** | **String** | Post / PO box number | [optional] 
**postalCode** | **String** | Postal/PIN/ZIP/Area code | [optional] 
**city** | **String** | Name of city in the address | [optional] 
**state** | **String** | Name of state in the Address | [optional] 
**country** | **String** | Name / code of country in the address | [optional] 
**note** | **String** | Additional notes | [optional] 
**telecoms** | [**List<TelecomDto>**](TelecomDto.md) | List of other contact details available through telecom services, ex: email, phone number, fax, etc. | [default to const []]
**encryptedSelf** | **String** | The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


