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

// tests for InvoiceDto
void main() {
  final instance = InvoiceDto();

  group('test InvoiceDto', () {
    // The Id of the Invoice. We encourage using either a v4 UUID or a HL7 Id.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The revision of the invoice in the database, used for conflict management / optimistic locking.
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

    // The timestamp (unix epoch in ms) when the invoice was drafted, will be filled automatically if missing. Not enforced by the application server.
    // int invoiceDate
    test('to test the property `invoiceDate`', () async {
      // TODO
    });

    // The timestamp (unix epoch in ms) when the invoice was sent, will be filled automatically if missing. Not enforced by the application server.
    // int sentDate
    test('to test the property `sentDate`', () async {
      // TODO
    });

    // The timestamp (unix epoch in ms) when the invoice is printed, will be filled automatically if missing. Not enforced by the application server.
    // int printedDate
    test('to test the property `printedDate`', () async {
      // TODO
    });

    // List<InvoicingCodeDto> invoicingCodes (default value: const [])
    test('to test the property `invoicingCodes`', () async {
      // TODO
    });

    // Map<String, String> receipts (default value: const {})
    test('to test the property `receipts`', () async {
      // TODO
    });

    // The type of user that receives the invoice, a patient or a healthcare party
    // String recipientType
    test('to test the property `recipientType`', () async {
      // TODO
    });

    // Id of the recipient of the invoice. For healthcare party and insurance, patient link happens through secretForeignKeys
    // String recipientId
    test('to test the property `recipientId`', () async {
      // TODO
    });

    // String invoiceReference
    test('to test the property `invoiceReference`', () async {
      // TODO
    });

    // String thirdPartyReference
    test('to test the property `thirdPartyReference`', () async {
      // TODO
    });

    // String thirdPartyPaymentJustification
    test('to test the property `thirdPartyPaymentJustification`', () async {
      // TODO
    });

    // String thirdPartyPaymentReason
    test('to test the property `thirdPartyPaymentReason`', () async {
      // TODO
    });

    // String reason
    test('to test the property `reason`', () async {
      // TODO
    });

    // The format the invoice should follow based on the recipient which could be a patient, mutual fund or paying agency such as the CPAS
    // String invoiceType
    test('to test the property `invoiceType`', () async {
      // TODO
    });

    // Medium of the invoice: CD ROM, Email, paper, etc.
    // String sentMediumType
    test('to test the property `sentMediumType`', () async {
      // TODO
    });

    // String interventionType
    test('to test the property `interventionType`', () async {
      // TODO
    });

    // String groupId
    test('to test the property `groupId`', () async {
      // TODO
    });

    // Type of payment, ex: cash, wired, insurance, debit card, etc.
    // String paymentType
    test('to test the property `paymentType`', () async {
      // TODO
    });

    // double paid
    test('to test the property `paid`', () async {
      // TODO
    });

    // List<PaymentDto> payments (default value: const [])
    test('to test the property `payments`', () async {
      // TODO
    });

    // String gnotionNihii
    test('to test the property `gnotionNihii`', () async {
      // TODO
    });

    // String gnotionSsin
    test('to test the property `gnotionSsin`', () async {
      // TODO
    });

    // String gnotionLastName
    test('to test the property `gnotionLastName`', () async {
      // TODO
    });

    // String gnotionFirstName
    test('to test the property `gnotionFirstName`', () async {
      // TODO
    });

    // String gnotionCdHcParty
    test('to test the property `gnotionCdHcParty`', () async {
      // TODO
    });

    // int invoicePeriod
    test('to test the property `invoicePeriod`', () async {
      // TODO
    });

    // String careProviderType
    test('to test the property `careProviderType`', () async {
      // TODO
    });

    // String internshipNihii
    test('to test the property `internshipNihii`', () async {
      // TODO
    });

    // String internshipSsin
    test('to test the property `internshipSsin`', () async {
      // TODO
    });

    // String internshipLastName
    test('to test the property `internshipLastName`', () async {
      // TODO
    });

    // String internshipFirstName
    test('to test the property `internshipFirstName`', () async {
      // TODO
    });

    // String internshipCdHcParty
    test('to test the property `internshipCdHcParty`', () async {
      // TODO
    });

    // String internshipCbe
    test('to test the property `internshipCbe`', () async {
      // TODO
    });

    // String supervisorNihii
    test('to test the property `supervisorNihii`', () async {
      // TODO
    });

    // String supervisorSsin
    test('to test the property `supervisorSsin`', () async {
      // TODO
    });

    // String supervisorLastName
    test('to test the property `supervisorLastName`', () async {
      // TODO
    });

    // String supervisorFirstName
    test('to test the property `supervisorFirstName`', () async {
      // TODO
    });

    // String supervisorCdHcParty
    test('to test the property `supervisorCdHcParty`', () async {
      // TODO
    });

    // String supervisorCbe
    test('to test the property `supervisorCbe`', () async {
      // TODO
    });

    // String error
    test('to test the property `error`', () async {
      // TODO
    });

    // String encounterLocationName
    test('to test the property `encounterLocationName`', () async {
      // TODO
    });

    // String encounterLocationNihii
    test('to test the property `encounterLocationNihii`', () async {
      // TODO
    });

    // int encounterLocationNorm
    test('to test the property `encounterLocationNorm`', () async {
      // TODO
    });

    // int longDelayJustification
    test('to test the property `longDelayJustification`', () async {
      // TODO
    });

    // String correctiveInvoiceId
    test('to test the property `correctiveInvoiceId`', () async {
      // TODO
    });

    // String correctedInvoiceId
    test('to test the property `correctedInvoiceId`', () async {
      // TODO
    });

    // bool creditNote
    test('to test the property `creditNote`', () async {
      // TODO
    });

    // String creditNoteRelatedInvoiceId
    test('to test the property `creditNoteRelatedInvoiceId`', () async {
      // TODO
    });

    // IdentityDocumentReaderDto idDocument
    test('to test the property `idDocument`', () async {
      // TODO
    });

    // String cancelReason
    test('to test the property `cancelReason`', () async {
      // TODO
    });

    // int cancelDate
    test('to test the property `cancelDate`', () async {
      // TODO
    });

    // Map<String, String> options (default value: const {})
    test('to test the property `options`', () async {
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
