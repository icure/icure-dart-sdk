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

// tests for ServiceDto
void main() {
  final instance = ServiceDto();

  group('test ServiceDto', () {
    // The Id of the Service. We encourage using either a v4 UUID or a HL7 Id.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The transactionId is used when a single service had to be split into parts for technical reasons. Several services with the same non null transaction id form one single service
    // String transactionId
    test('to test the property `transactionId`', () async {
      // TODO
    });

    // List<IdentifierDto> identifier (default value: const [])
    test('to test the property `identifier`', () async {
      // TODO
    });

    // Id of the contact during which the service is provided
    // String contactId
    test('to test the property `contactId`', () async {
      // TODO
    });

    // List of IDs of all sub-contacts that link the service to structural elements. Only used when the Service is emitted outside of its contact
    // Set<String> subContactIds (default value: const {})
    test('to test the property `subContactIds`', () async {
      // TODO
    });

    // List of IDs of all plans of actions (healthcare approaches) as a part of which the Service is provided. Only used when the Service is emitted outside of its contact
    // Set<String> plansOfActionIds (default value: const {})
    test('to test the property `plansOfActionIds`', () async {
      // TODO
    });

    // List of IDs of all healthcare elements for which the service is provided. Only used when the Service is emitted outside of its contact
    // Set<String> healthElementsIds (default value: const {})
    test('to test the property `healthElementsIds`', () async {
      // TODO
    });

    // List of Ids of all forms linked to the Service. Only used when the Service is emitted outside of its contact.
    // Set<String> formIds (default value: const {})
    test('to test the property `formIds`', () async {
      // TODO
    });

    // The secret patient key, encrypted in the patient document, in clear here.
    // Set<String> secretForeignKeys (default value: const {})
    test('to test the property `secretForeignKeys`', () async {
      // TODO
    });

    // The public patient key, encrypted here for separate Crypto Actors.
    // Map<String, Set<DelegationDto>> cryptedForeignKeys (default value: const {})
    test('to test the property `cryptedForeignKeys`', () async {
      // TODO
    });

    // The delegations giving access to connected healthcare information.
    // Map<String, Set<DelegationDto>> delegations (default value: const {})
    test('to test the property `delegations`', () async {
      // TODO
    });

    // The contact secret encryption key used to encrypt the secured properties (like services for example), encrypted for separate Crypto Actors.
    // Map<String, Set<DelegationDto>> encryptionKeys (default value: const {})
    test('to test the property `encryptionKeys`', () async {
      // TODO
    });

    // Description / Unambiguous qualification (LOINC code) of the type of information contained in the service. Could be a code to qualify temperature, complaint, diagnostic, ...
    // String label
    test('to test the property `label`', () async {
      // TODO
    });

    // Used for sorting services inside an upper object (A contact, a transaction, a FHIR bundle, ...)
    // int index
    test('to test the property `index`', () async {
      // TODO
    });

    // Information contained in the service. Content is localized, using ISO language code as key
    // Map<String, ContentDto> content (default value: const {})
    test('to test the property `content`', () async {
      // TODO
    });

    // String encryptedContent
    test('to test the property `encryptedContent`', () async {
      // TODO
    });

    // Map<String, String> textIndexes (default value: const {})
    test('to test the property `textIndexes`', () async {
      // TODO
    });

    // The date (YYYYMMDDhhmmss) when the Service is noted to have started and also closes on the same date
    // int valueDate
    test('to test the property `valueDate`', () async {
      // TODO
    });

    // The date (YYYYMMDDhhmmss) of the start of the Service
    // int openingDate
    test('to test the property `openingDate`', () async {
      // TODO
    });

    // The date (YYYYMMDDhhmmss) marking the end of the Service
    // int closingDate
    test('to test the property `closingDate`', () async {
      // TODO
    });

    // Id of the form used during the Service
    // String formId
    test('to test the property `formId`', () async {
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

    // Soft delete (unix epoch in ms) timestamp of the object.
    // int endOfLife
    test('to test the property `endOfLife`', () async {
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

    // Text, comments on the Service provided
    // String comment
    test('to test the property `comment`', () async {
      // TODO
    });

    // int status
    test('to test the property `status`', () async {
      // TODO
    });

    // List of invoicing codes
    // Set<String> invoicingCodes (default value: const {})
    test('to test the property `invoicingCodes`', () async {
      // TODO
    });

    // Comments - Notes recorded by a HCP about this service
    // List<AnnotationDto> notes (default value: const [])
    test('to test the property `notes`', () async {
      // TODO
    });

    // Links towards related services (possibly in other contacts)
    // Map<String, Map<String, String>> qualifiedLinks (default value: const {})
    test('to test the property `qualifiedLinks`', () async {
      // TODO
    });

    // A code is an item from a codification system that qualifies the content of this entity. SNOMED-CT, ICPC-2 or ICD-10 codifications systems can be used for codes
    // Set<CodeStubDto> codes (default value: const {})
    test('to test the property `codes`', () async {
      // TODO
    });

    // A tag is an item from a codification system that qualifies an entity as being member of a certain class, whatever the value it might have taken. If the tag qualifies the content of a field, it means that whatever the content of the field, the tag will always apply. For example, the label of a field is qualified using a tag. LOINC is a codification system typically used for tags.
    // Set<CodeStubDto> tags (default value: const {})
    test('to test the property `tags`', () async {
      // TODO
    });

    // The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
    // String encryptedSelf
    test('to test the property `encryptedSelf`', () async {
      // TODO
    });


  });

}
