# icure_dart_sdk.model.PlanOfActionDto

## Load the model package
```dart
import 'package:icure_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  |
**created** | **int** | The timestamp (unix epoch in ms) of creation of this entity, will be filled automatically if missing. Not enforced by the application server. | [optional]
**modified** | **int** | The date (unix epoch in ms) of the latest modification of this entity, will be filled automatically if missing. Not enforced by the application server. | [optional]
**author** | **String** | The id of the User that has created this entity, will be filled automatically if missing. Not enforced by the application server. | [optional]
**responsible** | **String** | The id of the HealthcareParty that is responsible for this entity, will be filled automatically if missing. Not enforced by the application server. | [optional]
**medicalLocationId** | **String** | The id of the medical location where this entity was created. | [optional]
**tags** | [**Set<CodeStubDto>**](CodeStubDto.md) | A tag is an item from a codification system that qualifies an entity as being member of a certain class, whatever the value it might have taken. If the tag qualifies the content of a field, it means that whatever the content of the field, the tag will always apply. For example, the label of a field is qualified using a tag. LOINC is a codification system typically used for tags. | [default to const {}]
**codes** | [**Set<CodeStubDto>**](CodeStubDto.md) | A code is an item from a codification system that qualifies the content of this entity. SNOMED-CT, ICPC-2 or ICD-10 codifications systems can be used for codes | [default to const {}]
**endOfLife** | **int** | Soft delete (unix epoch in ms) timestamp of the object. | [optional]
**prescriberId** | **String** | The id of the hcp who prescribed this healthcare approach | [optional]
**valueDate** | **int** | The date (unix epoch in ms) when the healthcare approach is noted to have started and also closes on the same date | [optional]
**openingDate** | **int** | The date (unix epoch in ms) of the start of the healthcare approach. | [optional]
**closingDate** | **int** | The date (unix epoch in ms) marking the end of the healthcare approach. | [optional]
**deadlineDate** | **int** | The date (unix epoch in ms) when the healthcare approach has to be carried out. | [optional]
**name** | **String** | The name of the healthcare approach. | [optional]
**descr** | **String** | Description of the healthcare approach. | [optional]
**note** | **String** | Note about the healthcare approach. | [optional]
**idOpeningContact** | **String** | Id of the opening contact when the healthcare approach was created. | [optional]
**idClosingContact** | **String** | Id of the closing contact for the healthcare approach. | [optional]
**status** | **int** | bit 0: active/inactive, bit 1: relevant/irrelevant, bit 2 : present/absent, ex: 0 = active,relevant and present | [default to 0]
**documentIds** | **Set<String>** |  | [default to const {}]
**numberOfCares** | **int** | The number of individual cares already performed in the course of this healthcare approach | [optional]
**careTeamMemberships** | [**List<CareTeamMembershipDto>**](CareTeamMembershipDto.md) | Members of the careteam involved in this approach | [default to const []]
**relevant** | **bool** |  | [default to true]
**encryptedSelf** | **String** | The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
