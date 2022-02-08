//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for DocumentDto
void main() {
  final instance = DocumentDto();

  group('test DocumentDto', () {
    // The Id of the document. We encourage using either a v4 UUID or a HL7 Id.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The revision of the document in the database, used for conflict management / optimistic locking.
    // String rev
    test('to test the property `rev`', () async {
      // TODO
    });

    // The timestamp (unix epoch in ms) of creation of this entity, will be filled automatically if missing. Not enforced by the application server.
    // int created
    test('to test the property `created`', () async {
      // TODO
    });

    // The date (unix epoch in ms) of the latest modification of this entity, will be filled automatically if missing. Not enforced by the application server.
    // int modified
    test('to test the property `modified`', () async {
      // TODO
    });

    // The id of the User that has created this entity, will be filled automatically if missing. Not enforced by the application server.
    // String author
    test('to test the property `author`', () async {
      // TODO
    });

    // The id of the HealthcareParty that is responsible for this entity, will be filled automatically if missing. Not enforced by the application server.
    // String responsible
    test('to test the property `responsible`', () async {
      // TODO
    });

    // The id of the medical location where this entity was created.
    // String medicalLocationId
    test('to test the property `medicalLocationId`', () async {
      // TODO
    });

    // A tag is an item from a codification system that qualifies an entity as being member of a certain class, whatever the value it might have taken. If the tag qualifies the content of a field, it means that whatever the content of the field, the tag will always apply. For example, the label of a field is qualified using a tag. LOINC is a codification system typically used for tags.
    // Set<CodeStubDto> tags (default value: const {})
    test('to test the property `tags`', () async {
      // TODO
    });

    // A code is an item from a codification system that qualifies the content of this entity. SNOMED-CT, ICPC-2 or ICD-10 codifications systems can be used for codes
    // Set<CodeStubDto> codes (default value: const {})
    test('to test the property `codes`', () async {
      // TODO
    });

    // Soft delete (unix epoch in ms) timestamp of the object.
    // int endOfLife
    test('to test the property `endOfLife`', () async {
      // TODO
    });

    // hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
    // int deletionDate
    test('to test the property `deletionDate`', () async {
      // TODO
    });

    // Reference in object store
    // String objectStoreReference
    test('to test the property `objectStoreReference`', () async {
      // TODO
    });

    // Location of the document
    // String documentLocation
    test('to test the property `documentLocation`', () async {
      // TODO
    });

    // The type of document, ex: admission, clinical path, document report,invoice, etc.
    // String documentType
    test('to test the property `documentType`', () async {
      // TODO
    });

    // The status of the development of the document. Ex: Draft, finalized, reviewed, signed, etc.
    // String documentStatus
    test('to test the property `documentStatus`', () async {
      // TODO
    });

    // When the document is stored in an external repository, this is the uri of the document in that repository
    // String externalUri
    test('to test the property `externalUri`', () async {
      // TODO
    });

    // The main Uniform Type Identifier of the document (https://developer.apple.com/library/archive/documentation/FileManagement/Conceptual/understanding_utis/understand_utis_conc/understand_utis_conc.html#//apple_ref/doc/uid/TP40001319-CH202-CHDHIJDE)
    // String mainUti
    test('to test the property `mainUti`', () async {
      // TODO
    });

    // Name of the document
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // The document version
    // String version
    test('to test the property `version`', () async {
      // TODO
    });

    // Extra Uniform Type Identifiers
    // Set<String> otherUtis (default value: const {})
    test('to test the property `otherUtis`', () async {
      // TODO
    });

    // The ICureDocument (Form, Contact, ...) that has been used to generate the document
    // String storedICureDocumentId
    test('to test the property `storedICureDocumentId`', () async {
      // TODO
    });

    // A unique external id (from another external source).
    // String externalUuid
    test('to test the property `externalUuid`', () async {
      // TODO
    });

    // Size of the document file
    // int size
    test('to test the property `size`', () async {
      // TODO
    });

    // Hashed version of the document
    // String hash
    test('to test the property `hash`', () async {
      // TODO
    });

    // Id of the contact during which the document was created
    // String openingContactId
    test('to test the property `openingContactId`', () async {
      // TODO
    });

    // Id of attachment to this document
    // String attachmentId
    test('to test the property `attachmentId`', () async {
      // TODO
    });

    // String encryptedAttachment
    test('to test the property `encryptedAttachment`', () async {
      // TODO
    });

    // String decryptedAttachment
    test('to test the property `decryptedAttachment`', () async {
      // TODO
    });

    // The secretForeignKeys are filled at the to many end of a one to many relationship (for example inside Contact for the Patient -> Contacts relationship). Used when we want to find all contacts for a specific patient. These keys are in clear. You can have several to partition the medical document space.
    // Set<String> secretForeignKeys (default value: const {})
    test('to test the property `secretForeignKeys`', () async {
      // TODO
    });

    // The secretForeignKeys are filled at the to many end of a one to many relationship (for example inside Contact for the Patient -> Contacts relationship). Used when we want to find the patient for a specific contact. These keys are the encrypted id (using the hcParty key for the delegate) that can be found in clear inside the patient. ids encrypted using the hcParty keys.
    // Map<String, Set<DelegationDto>> cryptedForeignKeys (default value: const {})
    test('to test the property `cryptedForeignKeys`', () async {
      // TODO
    });

    // When a document is created, the responsible generates a cryptographically random master key (never to be used for something else than referencing from other entities). He/she encrypts it using his own AES exchange key and stores it as a delegation. The responsible is thus always in the delegations as well
    // Map<String, Set<DelegationDto>> delegations (default value: const {})
    test('to test the property `delegations`', () async {
      // TODO
    });

    // When a document needs to be encrypted, the responsible generates a cryptographically random master key (different from the delegation key, never to appear in clear anywhere in the db. He/she encrypts it using his own AES exchange key and stores it as a delegation
    // Map<String, Set<DelegationDto>> encryptionKeys (default value: const {})
    test('to test the property `encryptionKeys`', () async {
      // TODO
    });

    // The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
    // String encryptedSelf
    test('to test the property `encryptedSelf`', () async {
      // TODO
    });


  });

}
