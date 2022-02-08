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

// tests for PlanOfActionDto
void main() {
  final instance = PlanOfActionDto();

  group('test PlanOfActionDto', () {
    // String id
    test('to test the property `id`', () async {
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

    // The id of the hcp who prescribed this healthcare approach
    // String prescriberId
    test('to test the property `prescriberId`', () async {
      // TODO
    });

    // The date (unix epoch in ms) when the healthcare approach is noted to have started and also closes on the same date
    // int valueDate
    test('to test the property `valueDate`', () async {
      // TODO
    });

    // The date (unix epoch in ms) of the start of the healthcare approach.
    // int openingDate
    test('to test the property `openingDate`', () async {
      // TODO
    });

    // The date (unix epoch in ms) marking the end of the healthcare approach.
    // int closingDate
    test('to test the property `closingDate`', () async {
      // TODO
    });

    // The date (unix epoch in ms) when the healthcare approach has to be carried out.
    // int deadlineDate
    test('to test the property `deadlineDate`', () async {
      // TODO
    });

    // The name of the healthcare approach.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Description of the healthcare approach.
    // String descr
    test('to test the property `descr`', () async {
      // TODO
    });

    // Note about the healthcare approach.
    // String note
    test('to test the property `note`', () async {
      // TODO
    });

    // Id of the opening contact when the healthcare approach was created.
    // String idOpeningContact
    test('to test the property `idOpeningContact`', () async {
      // TODO
    });

    // Id of the closing contact for the healthcare approach.
    // String idClosingContact
    test('to test the property `idClosingContact`', () async {
      // TODO
    });

    // bit 0: active/inactive, bit 1: relevant/irrelevant, bit 2 : present/absent, ex: 0 = active,relevant and present
    // int status (default value: 0)
    test('to test the property `status`', () async {
      // TODO
    });

    // Set<String> documentIds (default value: const {})
    test('to test the property `documentIds`', () async {
      // TODO
    });

    // The number of individual cares already performed in the course of this healthcare approach
    // int numberOfCares
    test('to test the property `numberOfCares`', () async {
      // TODO
    });

    // Members of the careteam involved in this approach
    // List<CareTeamMembershipDto> careTeamMemberships (default value: const [])
    test('to test the property `careTeamMemberships`', () async {
      // TODO
    });

    // bool relevant (default value: true)
    test('to test the property `relevant`', () async {
      // TODO
    });

    // The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
    // String encryptedSelf
    test('to test the property `encryptedSelf`', () async {
      // TODO
    });


  });

}
