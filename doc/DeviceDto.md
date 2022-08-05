# icure_dart_sdk.model.DeviceDto

## Load the model package
```dart
import 'package:icure_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  |
**rev** | **String** |  | [optional]
**deletionDate** | **int** | hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called. | [optional]
**identifiers** | [**List<IdentifierDto>**](IdentifierDto.md) |  | [default to const []]
**created** | **int** | The timestamp (unix epoch in ms) of creation of this entity, will be filled automatically if missing. Not enforced by the application server. | [optional]
**modified** | **int** | The date (unix epoch in ms) of the latest modification of this entity, will be filled automatically if missing. Not enforced by the application server. | [optional]
**author** | **String** | The id of the User that has created this entity, will be filled automatically if missing. Not enforced by the application server. | [optional]
**responsible** | **String** | The id of the HealthcareParty that is responsible for this entity, will be filled automatically if missing. Not enforced by the application server. | [optional]
**tags** | [**Set<CodeStubDto>**](CodeStubDto.md) | A tag is an item from a codification system that qualifies an entity as being member of a certain class, whatever the value it might have taken. If the tag qualifies the content of a field, it means that whatever the content of the field, the tag will always apply. For example, the label of a field is qualified using a tag. LOINC is a codification system typically used for tags. | [default to const {}]
**codes** | [**Set<CodeStubDto>**](CodeStubDto.md) | A code is an item from a codification system that qualifies the content of this entity. SNOMED-CT, ICPC-2 or ICD-10 codifications systems can be used for codes | [default to const {}]
**endOfLife** | **int** | Soft delete (unix epoch in ms) timestamp of the object. | [optional]
**medicalLocationId** | **String** | The id of the medical location where this entity was created. | [optional]
**externalId** | **String** |  | [optional]
**name** | **String** |  | [optional]
**type** | **String** |  | [optional]
**brand** | **String** |  | [optional]
**model** | **String** |  | [optional]
**serialNumber** | **String** |  | [optional]
**parentId** | **String** |  | [optional]
**picture** | **List<String>** |  | [optional] [default to const []]
**properties** | [**Set<PropertyStubDto>**](PropertyStubDto.md) |  | [default to const {}]
**hcPartyKeys** | [**Map<String, List<String>>**](List.md) | For each couple of HcParties (delegator and delegate), this map contains the exchange AES key. The delegator is always this hcp, the key of the map is the id of the delegate. The AES exchange key is encrypted using RSA twice : once using this hcp public key (index 0 in the Array) and once using the other hcp public key (index 1 in the Array). For a pair of HcParties. Each HcParty always has one AES exchange key for himself. | [default to const {}]
**privateKeyShamirPartitions** | **Map<String, String>** | The privateKeyShamirPartitions are used to share this hcp's private RSA key with a series of other hcParties using Shamir's algorithm. The key of the map is the hcp Id with whom this partition has been shared. The value is \"threshold⎮partition in hex\" encrypted using the the partition's holder's public RSA key | [default to const {}]
**publicKey** | **String** | The public key of this hcp | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
