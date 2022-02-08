# openapi.model.DocumentDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The Id of the document. We encourage using either a v4 UUID or a HL7 Id. | 
**rev** | **String** | The revision of the document in the database, used for conflict management / optimistic locking. | [optional] 
**created** | **int** | The timestamp (unix epoch in ms) of creation of this entity, will be filled automatically if missing. Not enforced by the application server. | [optional] 
**modified** | **int** | The date (unix epoch in ms) of the latest modification of this entity, will be filled automatically if missing. Not enforced by the application server. | [optional] 
**author** | **String** | The id of the User that has created this entity, will be filled automatically if missing. Not enforced by the application server. | [optional] 
**responsible** | **String** | The id of the HealthcareParty that is responsible for this entity, will be filled automatically if missing. Not enforced by the application server. | [optional] 
**medicalLocationId** | **String** | The id of the medical location where this entity was created. | [optional] 
**tags** | [**Set<CodeStubDto>**](CodeStubDto.md) | A tag is an item from a codification system that qualifies an entity as being member of a certain class, whatever the value it might have taken. If the tag qualifies the content of a field, it means that whatever the content of the field, the tag will always apply. For example, the label of a field is qualified using a tag. LOINC is a codification system typically used for tags. | [default to const {}]
**codes** | [**Set<CodeStubDto>**](CodeStubDto.md) | A code is an item from a codification system that qualifies the content of this entity. SNOMED-CT, ICPC-2 or ICD-10 codifications systems can be used for codes | [default to const {}]
**endOfLife** | **int** | Soft delete (unix epoch in ms) timestamp of the object. | [optional] 
**deletionDate** | **int** | hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called. | [optional] 
**objectStoreReference** | **String** | Reference in object store | [optional] 
**documentLocation** | **String** | Location of the document | [optional] 
**documentType** | **String** | The type of document, ex: admission, clinical path, document report,invoice, etc. | [optional] 
**documentStatus** | **String** | The status of the development of the document. Ex: Draft, finalized, reviewed, signed, etc. | [optional] 
**externalUri** | **String** | When the document is stored in an external repository, this is the uri of the document in that repository | [optional] 
**mainUti** | **String** | The main Uniform Type Identifier of the document (https://developer.apple.com/library/archive/documentation/FileManagement/Conceptual/understanding_utis/understand_utis_conc/understand_utis_conc.html#//apple_ref/doc/uid/TP40001319-CH202-CHDHIJDE) | [optional] 
**name** | **String** | Name of the document | [optional] 
**version** | **String** | The document version | [optional] 
**otherUtis** | **Set<String>** | Extra Uniform Type Identifiers | [default to const {}]
**storedICureDocumentId** | **String** | The ICureDocument (Form, Contact, ...) that has been used to generate the document | [optional] 
**externalUuid** | **String** | A unique external id (from another external source). | [optional] 
**size** | **int** | Size of the document file | [optional] 
**hash** | **String** | Hashed version of the document | [optional] 
**openingContactId** | **String** | Id of the contact during which the document was created | [optional] 
**attachmentId** | **String** | Id of attachment to this document | [optional] 
**encryptedAttachment** | **String** |  | [optional] 
**decryptedAttachment** | **String** |  | [optional] 
**secretForeignKeys** | **Set<String>** | The secretForeignKeys are filled at the to many end of a one to many relationship (for example inside Contact for the Patient -> Contacts relationship). Used when we want to find all contacts for a specific patient. These keys are in clear. You can have several to partition the medical document space. | [default to const {}]
**cryptedForeignKeys** | [**Map<String, Set<DelegationDto>>**](Set.md) | The secretForeignKeys are filled at the to many end of a one to many relationship (for example inside Contact for the Patient -> Contacts relationship). Used when we want to find the patient for a specific contact. These keys are the encrypted id (using the hcParty key for the delegate) that can be found in clear inside the patient. ids encrypted using the hcParty keys. | [default to const {}]
**delegations** | [**Map<String, Set<DelegationDto>>**](Set.md) | When a document is created, the responsible generates a cryptographically random master key (never to be used for something else than referencing from other entities). He/she encrypts it using his own AES exchange key and stores it as a delegation. The responsible is thus always in the delegations as well | [default to const {}]
**encryptionKeys** | [**Map<String, Set<DelegationDto>>**](Set.md) | When a document needs to be encrypted, the responsible generates a cryptographically random master key (different from the delegation key, never to appear in clear anywhere in the db. He/she encrypts it using his own AES exchange key and stores it as a delegation | [default to const {}]
**encryptedSelf** | **String** | The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


