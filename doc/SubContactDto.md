# openapi.model.SubContactDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The Id of the sub-contact. We encourage using either a v4 UUID or a HL7 Id. | [optional] 
**created** | **int** | The timestamp (unix epoch in ms) of creation of this entity, will be filled automatically if missing. Not enforced by the application server. | [optional] 
**modified** | **int** | The date (unix epoch in ms) of the latest modification of this entity, will be filled automatically if missing. Not enforced by the application server. | [optional] 
**author** | **String** | The id of the User that has created this entity, will be filled automatically if missing. Not enforced by the application server. | [optional] 
**responsible** | **String** | The id of the HealthcareParty that is responsible for this entity, will be filled automatically if missing. Not enforced by the application server. | [optional] 
**medicalLocationId** | **String** | The id of the medical location where this entity was created. | [optional] 
**tags** | [**Set<CodeStubDto>**](CodeStubDto.md) | A tag is an item from a codification system that qualifies an entity as being member of a certain class, whatever the value it might have taken. If the tag qualifies the content of a field, it means that whatever the content of the field, the tag will always apply. For example, the label of a field is qualified using a tag. LOINC is a codification system typically used for tags. | [default to const {}]
**codes** | [**Set<CodeStubDto>**](CodeStubDto.md) | A code is an item from a codification system that qualifies the content of this entity. SNOMED-CT, ICPC-2 or ICD-10 codifications systems can be used for codes | [default to const {}]
**endOfLife** | **int** | Soft delete (unix epoch in ms) timestamp of the object. | [optional] 
**descr** | **String** | Description of the sub-contact | [optional] 
**protocol** | **String** | Protocol based on which the sub-contact was used for linking services to structuring elements | [optional] 
**status** | **int** |  | [optional] 
**formId** | **String** | Id of the form used in the sub-contact. Several sub-contacts with the same form ID can coexist as long as they are in different contacts or they relate to a different planOfActionID | [optional] 
**planOfActionId** | **String** | Id of the plan of action (healthcare approach) that is linked by the sub-contact to a service. | [optional] 
**healthElementId** | **String** | Id of the healthcare element that is linked by the sub-contact to a service | [optional] 
**classificationId** | **String** |  | [optional] 
**services** | [**List<ServiceLinkDto>**](ServiceLinkDto.md) | List of all services provided to the patient under a given contact which is linked by this sub-contact to other structuring elements. | [default to const []]
**encryptedSelf** | **String** | The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


