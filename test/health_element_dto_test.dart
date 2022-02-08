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

// tests for HealthElementDto
void main() {
  final instance = HealthElementDto();

  group('test HealthElementDto', () {
    // The Id of the healthcare element. We encourage using either a v4 UUID or a HL7 Id.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // List<IdentifierDto> identifiers (default value: const [])
    test('to test the property `identifiers`', () async {
      // TODO
    });

    // The revision of the patient in the database, used for conflict management / optimistic locking.
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

    // The logical id of the healthcare element, used to link together different versions of the same healthcare element. We encourage using either a v4 UUID or a HL7 Id.
    // String healthElementId
    test('to test the property `healthElementId`', () async {
      // TODO
    });

    // The date (unix epoch in ms) when the healthcare element is noted to have started and also closes on the same date
    // int valueDate
    test('to test the property `valueDate`', () async {
      // TODO
    });

    // The date (unix epoch in ms) of the start of the healthcare element.
    // int openingDate
    test('to test the property `openingDate`', () async {
      // TODO
    });

    // The date (unix epoch in ms) marking the end of the healthcare element.
    // int closingDate
    test('to test the property `closingDate`', () async {
      // TODO
    });

    // Description of the healthcare element.
    // String descr
    test('to test the property `descr`', () async {
      // TODO
    });

    // A text note (can be confidential, encrypted by default).
    // String note
    test('to test the property `note`', () async {
      // TODO
    });

    // If the healthcare element is relevant or not (Set relevant by default).
    // bool relevant
    test('to test the property `relevant`', () async {
      // TODO
    });

    // Id of the opening contact when the healthcare element was created.
    // String idOpeningContact
    test('to test the property `idOpeningContact`', () async {
      // TODO
    });

    // Id of the closing contact for the healthcare element.
    // String idClosingContact
    test('to test the property `idClosingContact`', () async {
      // TODO
    });

    // Id of the service when a service is used to create a healthcare element.
    // String idService
    test('to test the property `idService`', () async {
      // TODO
    });

    // bit 0: active/inactive, bit 1: relevant/irrelevant, bit 2 : present/absent, ex: 0 = active,relevant and present
    // int status
    test('to test the property `status`', () async {
      // TODO
    });

    // Left or Right dominance/preference.
    // String laterality
    test('to test the property `laterality`', () async {
      // TODO
    });

    // List of healthcare approaches.
    // List<PlanOfActionDto> plansOfAction (default value: const [])
    test('to test the property `plansOfAction`', () async {
      // TODO
    });

    // List of episodes of occurrences of the healthcare element.
    // List<EpisodeDto> episodes (default value: const [])
    test('to test the property `episodes`', () async {
      // TODO
    });

    // List of care team members assigned for the healthcare element.
    // List<CareTeamMemberDto> careTeam (default value: const [])
    test('to test the property `careTeam`', () async {
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
