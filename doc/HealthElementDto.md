# icure_dart_sdk.model.HealthElementDto

## Load the model package
```dart
import 'package:icure_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The Id of the healthcare element. We encourage using either a v4 UUID or a HL7 Id. |
**identifiers** | [**List<IdentifierDto>**](IdentifierDto.md) |  | [default to const []]
**rev** | **String** | The revision of the patient in the database, used for conflict management / optimistic locking. | [optional]
**created** | **int** | The timestamp (unix epoch in ms) of creation of this entity, will be filled automatically if missing. Not enforced by the application server. | [optional]
**modified** | **int** | The date (unix epoch in ms) of the latest modification of this entity, will be filled automatically if missing. Not enforced by the application server. | [optional]
**author** | **String** | The id of the User that has created this entity, will be filled automatically if missing. Not enforced by the application server. | [optional]
**responsible** | **String** | The id of the HealthcareParty that is responsible for this entity, will be filled automatically if missing. Not enforced by the application server. | [optional]
**medicalLocationId** | **String** | The id of the medical location where this entity was created. | [optional]
**tags** | [**Set<CodeStubDto>**](CodeStubDto.md) | A tag is an item from a codification system that qualifies an entity as being member of a certain class, whatever the value it might have taken. If the tag qualifies the content of a field, it means that whatever the content of the field, the tag will always apply. For example, the label of a field is qualified using a tag. LOINC is a codification system typically used for tags. | [default to const {}]
**codes** | [**Set<CodeStubDto>**](CodeStubDto.md) | A code is an item from a codification system that qualifies the content of this entity. SNOMED-CT, ICPC-2 or ICD-10 codifications systems can be used for codes | [default to const {}]
**endOfLife** | **int** | Soft delete (unix epoch in ms) timestamp of the object. | [optional]
**deletionDate** | **int** | hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called. | [optional]
**healthElementId** | **String** | The logical id of the healthcare element, used to link together different versions of the same healthcare element. We encourage using either a v4 UUID or a HL7 Id. | [optional]
**valueDate** | **int** | The date (unix epoch in ms) when the healthcare element is noted to have started and also closes on the same date | [optional]
**openingDate** | **int** | The date (unix epoch in ms) of the start of the healthcare element. | [optional]
**closingDate** | **int** | The date (unix epoch in ms) marking the end of the healthcare element. | [optional]
**descr** | **String** | Description of the healthcare element. | [optional]
**note** | **String** | A text note (can be confidential, encrypted by default). | [optional]
**relevant** | **bool** | If the healthcare element is relevant or not (Set relevant by default). |
**idOpeningContact** | **String** | Id of the opening contact when the healthcare element was created. | [optional]
**idClosingContact** | **String** | Id of the closing contact for the healthcare element. | [optional]
**idService** | **String** | Id of the service when a service is used to create a healthcare element. | [optional]
**status** | **int** | bit 0: active/inactive, bit 1: relevant/irrelevant, bit 2 : present/absent, ex: 0 = active,relevant and present |
**laterality** | **String** | Left or Right dominance/preference. | [optional]
**plansOfAction** | [**List<PlanOfActionDto>**](PlanOfActionDto.md) | List of healthcare approaches. | [default to const []]
**episodes** | [**List<EpisodeDto>**](EpisodeDto.md) | List of episodes of occurrences of the healthcare element. | [default to const []]
**careTeam** | [**List<CareTeamMemberDto>**](CareTeamMemberDto.md) | List of care team members assigned for the healthcare element. | [default to const []]
**secretForeignKeys** | **Set<String>** | The secretForeignKeys are filled at the to many end of a one to many relationship (for example inside Contact for the Patient -> Contacts relationship). Used when we want to find all contacts for a specific patient. These keys are in clear. You can have several to partition the medical document space. | [default to const {}]
**cryptedForeignKeys** | [**Map<String, Set<DelegationDto>>**](Set.md) | The secretForeignKeys are filled at the to many end of a one to many relationship (for example inside Contact for the Patient -> Contacts relationship). Used when we want to find the patient for a specific contact. These keys are the encrypted id (using the hcParty key for the delegate) that can be found in clear inside the patient. ids encrypted using the hcParty keys. | [default to const {}]
**delegations** | [**Map<String, Set<DelegationDto>>**](Set.md) | When a document is created, the responsible generates a cryptographically random master key (never to be used for something else than referencing from other entities). He/she encrypts it using his own AES exchange key and stores it as a delegation. The responsible is thus always in the delegations as well | [default to const {}]
**encryptionKeys** | [**Map<String, Set<DelegationDto>>**](Set.md) | When a document needs to be encrypted, the responsible generates a cryptographically random master key (different from the delegation key, never to appear in clear anywhere in the db. He/she encrypts it using his own AES exchange key and stores it as a delegation | [default to const {}]
**encryptedSelf** | **String** | The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
