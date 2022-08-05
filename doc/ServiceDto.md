# icure_dart_sdk.model.ServiceDto

## Load the model package
```dart
import 'package:icure_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The Id of the Service. We encourage using either a v4 UUID or a HL7 Id. |
**transactionId** | **String** | The transactionId is used when a single service had to be split into parts for technical reasons. Several services with the same non null transaction id form one single service | [optional]
**identifier** | [**List<IdentifierDto>**](IdentifierDto.md) |  | [default to const []]
**contactId** | **String** | Id of the contact during which the service is provided | [optional]
**subContactIds** | **Set<String>** | List of IDs of all sub-contacts that link the service to structural elements. Only used when the Service is emitted outside of its contact | [optional] [default to const {}]
**plansOfActionIds** | **Set<String>** | List of IDs of all plans of actions (healthcare approaches) as a part of which the Service is provided. Only used when the Service is emitted outside of its contact | [optional] [default to const {}]
**healthElementsIds** | **Set<String>** | List of IDs of all healthcare elements for which the service is provided. Only used when the Service is emitted outside of its contact | [optional] [default to const {}]
**formIds** | **Set<String>** | List of Ids of all forms linked to the Service. Only used when the Service is emitted outside of its contact. | [optional] [default to const {}]
**secretForeignKeys** | **Set<String>** | The secret patient key, encrypted in the patient document, in clear here. | [optional] [default to const {}]
**cryptedForeignKeys** | [**Map<String, Set<DelegationDto>>**](Set.md) | The public patient key, encrypted here for separate Crypto Actors. | [default to const {}]
**delegations** | [**Map<String, Set<DelegationDto>>**](Set.md) | The delegations giving access to connected healthcare information. | [default to const {}]
**encryptionKeys** | [**Map<String, Set<DelegationDto>>**](Set.md) | The contact secret encryption key used to encrypt the secured properties (like services for example), encrypted for separate Crypto Actors. | [default to const {}]
**label** | **String** | Description / Unambiguous qualification (LOINC code) of the type of information contained in the service. Could be a code to qualify temperature, complaint, diagnostic, ... | [optional]
**index** | **int** | Used for sorting services inside an upper object (A contact, a transaction, a FHIR bundle, ...) | [optional]
**content** | [**Map<String, ContentDto>**](ContentDto.md) | Information contained in the service. Content is localized, using ISO language code as key | [default to const {}]
**encryptedContent** | **String** |  | [optional]
**textIndexes** | **Map<String, String>** |  | [default to const {}]
**valueDate** | **int** | The date (YYYYMMDDhhmmss) when the Service is noted to have started and also closes on the same date | [optional]
**openingDate** | **int** | The date (YYYYMMDDhhmmss) of the start of the Service | [optional]
**closingDate** | **int** | The date (YYYYMMDDhhmmss) marking the end of the Service | [optional]
**formId** | **String** | Id of the form used during the Service | [optional]
**created** | **int** | The timestamp (unix epoch in ms) of creation of this entity, will be filled automatically if missing. Not enforced by the application server. | [optional]
**modified** | **int** | The date (unix epoch in ms) of the latest modification of this entity, will be filled automatically if missing. Not enforced by the application server. | [optional]
**endOfLife** | **int** | Soft delete (unix epoch in ms) timestamp of the object. | [optional]
**author** | **String** | The id of the User that has created this entity, will be filled automatically if missing. Not enforced by the application server. | [optional]
**responsible** | **String** | The id of the HealthcareParty that is responsible for this entity, will be filled automatically if missing. Not enforced by the application server. | [optional]
**medicalLocationId** | **String** | The id of the medical location where this entity was created. | [optional]
**comment** | **String** | Text, comments on the Service provided | [optional]
**status** | **int** |  | [optional]
**invoicingCodes** | **Set<String>** | List of invoicing codes | [default to const {}]
**notes** | [**List<AnnotationDto>**](AnnotationDto.md) | Comments - Notes recorded by a HCP about this service | [default to const []]
**qualifiedLinks** | [**Map<String, Map<String, String>>**](Map.md) | Links towards related services (possibly in other contacts) | [default to const {}]
**codes** | [**Set<CodeStubDto>**](CodeStubDto.md) | A code is an item from a codification system that qualifies the content of this entity. SNOMED-CT, ICPC-2 or ICD-10 codifications systems can be used for codes | [default to const {}]
**tags** | [**Set<CodeStubDto>**](CodeStubDto.md) | A tag is an item from a codification system that qualifies an entity as being member of a certain class, whatever the value it might have taken. If the tag qualifies the content of a field, it means that whatever the content of the field, the tag will always apply. For example, the label of a field is qualified using a tag. LOINC is a codification system typically used for tags. | [default to const {}]
**encryptedSelf** | **String** | The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
