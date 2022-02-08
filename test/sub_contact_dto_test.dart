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

// tests for SubContactDto
void main() {
  final instance = SubContactDto();

  group('test SubContactDto', () {
    // The Id of the sub-contact. We encourage using either a v4 UUID or a HL7 Id.
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

    // Description of the sub-contact
    // String descr
    test('to test the property `descr`', () async {
      // TODO
    });

    // Protocol based on which the sub-contact was used for linking services to structuring elements
    // String protocol
    test('to test the property `protocol`', () async {
      // TODO
    });

    // int status
    test('to test the property `status`', () async {
      // TODO
    });

    // Id of the form used in the sub-contact. Several sub-contacts with the same form ID can coexist as long as they are in different contacts or they relate to a different planOfActionID
    // String formId
    test('to test the property `formId`', () async {
      // TODO
    });

    // Id of the plan of action (healthcare approach) that is linked by the sub-contact to a service.
    // String planOfActionId
    test('to test the property `planOfActionId`', () async {
      // TODO
    });

    // Id of the healthcare element that is linked by the sub-contact to a service
    // String healthElementId
    test('to test the property `healthElementId`', () async {
      // TODO
    });

    // String classificationId
    test('to test the property `classificationId`', () async {
      // TODO
    });

    // List of all services provided to the patient under a given contact which is linked by this sub-contact to other structuring elements.
    // List<ServiceLinkDto> services (default value: const [])
    test('to test the property `services`', () async {
      // TODO
    });

    // The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
    // String encryptedSelf
    test('to test the property `encryptedSelf`', () async {
      // TODO
    });


  });

}
