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

// tests for DocumentTemplateDto
void main() {
  final instance = DocumentTemplateDto();

  group('test DocumentTemplateDto', () {
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

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

    // String attachment
    test('to test the property `attachment`', () async {
      // TODO
    });

    // The type of document, ex: admission, clinical path, document report,invoice, etc.
    // String documentType
    test('to test the property `documentType`', () async {
      // TODO
    });

    // String mainUti
    test('to test the property `mainUti`', () async {
      // TODO
    });

    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Set<String> otherUtis (default value: const {})
    test('to test the property `otherUtis`', () async {
      // TODO
    });

    // String attachmentId
    test('to test the property `attachmentId`', () async {
      // TODO
    });

    // String version
    test('to test the property `version`', () async {
      // TODO
    });

    // String owner
    test('to test the property `owner`', () async {
      // TODO
    });

    // String guid
    test('to test the property `guid`', () async {
      // TODO
    });

    // DocumentGroupDto group
    test('to test the property `group`', () async {
      // TODO
    });

    // String descr
    test('to test the property `descr`', () async {
      // TODO
    });

    // String disabled
    test('to test the property `disabled`', () async {
      // TODO
    });

    // CodeStubDto specialty
    test('to test the property `specialty`', () async {
      // TODO
    });


  });

}
