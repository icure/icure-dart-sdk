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

// tests for MessageDto
void main() {
  final instance = MessageDto();

  group('test MessageDto', () {
    // The ID of the message. We encourage using either a v4 UUID or a HL7 Id.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The revision of the message in the database, used for conflict management / optimistic locking.
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

    // Address of the sender of the message
    // String fromAddress
    test('to test the property `fromAddress`', () async {
      // TODO
    });

    // ID of the healthcare party sending the message
    // String fromHealthcarePartyId
    test('to test the property `fromHealthcarePartyId`', () async {
      // TODO
    });

    // String formId
    test('to test the property `formId`', () async {
      // TODO
    });

    // Status of the message
    // int status
    test('to test the property `status`', () async {
      // TODO
    });

    // The type of user who is the recipient of this message
    // String recipientsType
    test('to test the property `recipientsType`', () async {
      // TODO
    });

    // List of IDs of healthcare parties to whom the message is addressed
    // Set<String> recipients (default value: const {})
    test('to test the property `recipients`', () async {
      // TODO
    });

    // The address of the recipient of the message. Format is of an email address with extra domains defined for mycarenet and ehealth: (efact.mycarenet.be/eattest.mycarenet.be/chapter4.mycarenet.be/ehbox.ehealth.fgov.be)
    // Set<String> toAddresses (default value: const {})
    test('to test the property `toAddresses`', () async {
      // TODO
    });

    // The timestamp (unix epoch in ms) when the message was received
    // int received
    test('to test the property `received`', () async {
      // TODO
    });

    // The timestamp (unix epoch in ms) when the message was sent
    // int sent
    test('to test the property `sent`', () async {
      // TODO
    });

    // Map<String, String> metas (default value: const {})
    test('to test the property `metas`', () async {
      // TODO
    });

    // Status showing whether the message is read or not and the time of reading
    // Map<String, MessageReadStatusDto> readStatus (default value: const {})
    test('to test the property `readStatus`', () async {
      // TODO
    });

    // String transportGuid
    test('to test the property `transportGuid`', () async {
      // TODO
    });

    // String remark
    test('to test the property `remark`', () async {
      // TODO
    });

    // String conversationGuid
    test('to test the property `conversationGuid`', () async {
      // TODO
    });

    // Subject for the message
    // String subject
    test('to test the property `subject`', () async {
      // TODO
    });

    // Set of IDs for invoices in the message
    // Set<String> invoiceIds (default value: const {})
    test('to test the property `invoiceIds`', () async {
      // TODO
    });

    // ID of a parent in a message conversation
    // String parentId
    test('to test the property `parentId`', () async {
      // TODO
    });

    // String externalRef
    test('to test the property `externalRef`', () async {
      // TODO
    });

    // Set<String> unassignedResults (default value: const {})
    test('to test the property `unassignedResults`', () async {
      // TODO
    });

    // Map<String, String> assignedResults (default value: const {})
    test('to test the property `assignedResults`', () async {
      // TODO
    });

    // Map<String, String> senderReferences (default value: const {})
    test('to test the property `senderReferences`', () async {
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
