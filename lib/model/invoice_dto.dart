//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InvoiceDto {
  /// Returns a new [InvoiceDto] instance.
  InvoiceDto({
    required this.id,
    this.rev,
    this.created,
    this.modified,
    this.author,
    this.responsible,
    this.medicalLocationId,
    this.tags = const {},
    this.codes = const {},
    this.endOfLife,
    this.deletionDate,
    this.invoiceDate,
    this.sentDate,
    this.printedDate,
    this.invoicingCodes = const [],
    this.receipts = const {},
    this.recipientType,
    this.recipientId,
    this.invoiceReference,
    this.thirdPartyReference,
    this.thirdPartyPaymentJustification,
    this.thirdPartyPaymentReason,
    this.reason,
    this.invoiceType,
    this.sentMediumType,
    this.interventionType,
    this.groupId,
    this.paymentType,
    this.paid,
    this.payments = const [],
    this.gnotionNihii,
    this.gnotionSsin,
    this.gnotionLastName,
    this.gnotionFirstName,
    this.gnotionCdHcParty,
    this.invoicePeriod,
    this.careProviderType,
    this.internshipNihii,
    this.internshipSsin,
    this.internshipLastName,
    this.internshipFirstName,
    this.internshipCdHcParty,
    this.internshipCbe,
    this.supervisorNihii,
    this.supervisorSsin,
    this.supervisorLastName,
    this.supervisorFirstName,
    this.supervisorCdHcParty,
    this.supervisorCbe,
    this.error,
    this.encounterLocationName,
    this.encounterLocationNihii,
    this.encounterLocationNorm,
    this.longDelayJustification,
    this.correctiveInvoiceId,
    this.correctedInvoiceId,
    this.creditNote,
    this.creditNoteRelatedInvoiceId,
    this.idDocument,
    this.cancelReason,
    this.cancelDate,
    this.options = const {},
    this.secretForeignKeys = const {},
    this.cryptedForeignKeys = const {},
    this.delegations = const {},
    this.encryptionKeys = const {},
    this.encryptedSelf,
  });

  /// The Id of the Invoice. We encourage using either a v4 UUID or a HL7 Id.
  String id;

  /// The revision of the invoice in the database, used for conflict management / optimistic locking.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rev;

  /// The timestamp (unix epoch in ms) of creation of this entity, will be filled automatically if missing. Not enforced by the application server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

  /// The date (unix epoch in ms) of the latest modification of this entity, will be filled automatically if missing. Not enforced by the application server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? modified;

  /// The id of the User that has created this entity, will be filled automatically if missing. Not enforced by the application server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? author;

  /// The id of the HealthcareParty that is responsible for this entity, will be filled automatically if missing. Not enforced by the application server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? responsible;

  /// The id of the medical location where this entity was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? medicalLocationId;

  /// A tag is an item from a codification system that qualifies an entity as being member of a certain class, whatever the value it might have taken. If the tag qualifies the content of a field, it means that whatever the content of the field, the tag will always apply. For example, the label of a field is qualified using a tag. LOINC is a codification system typically used for tags.
  Set<CodeStubDto> tags;

  /// A code is an item from a codification system that qualifies the content of this entity. SNOMED-CT, ICPC-2 or ICD-10 codifications systems can be used for codes
  Set<CodeStubDto> codes;

  /// Soft delete (unix epoch in ms) timestamp of the object.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endOfLife;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deletionDate;

  /// The timestamp (unix epoch in ms) when the invoice was drafted, will be filled automatically if missing. Not enforced by the application server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? invoiceDate;

  /// The timestamp (unix epoch in ms) when the invoice was sent, will be filled automatically if missing. Not enforced by the application server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sentDate;

  /// The timestamp (unix epoch in ms) when the invoice is printed, will be filled automatically if missing. Not enforced by the application server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? printedDate;

  List<InvoicingCodeDto> invoicingCodes;

  Map<String, String> receipts;

  /// The type of user that receives the invoice, a patient or a healthcare party
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recipientType;

  /// Id of the recipient of the invoice. For healthcare party and insurance, patient link happens through secretForeignKeys
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recipientId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? invoiceReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? thirdPartyReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? thirdPartyPaymentJustification;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? thirdPartyPaymentReason;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// The format the invoice should follow based on the recipient which could be a patient, mutual fund or paying agency such as the CPAS
  InvoiceDtoInvoiceTypeEnum? invoiceType;

  /// Medium of the invoice: CD ROM, Email, paper, etc.
  InvoiceDtoSentMediumTypeEnum? sentMediumType;

  InvoiceDtoInterventionTypeEnum? interventionType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? groupId;

  /// Type of payment, ex: cash, wired, insurance, debit card, etc.
  InvoiceDtoPaymentTypeEnum? paymentType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? paid;

  List<PaymentDto> payments;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gnotionNihii;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gnotionSsin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gnotionLastName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gnotionFirstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gnotionCdHcParty;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? invoicePeriod;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? careProviderType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? internshipNihii;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? internshipSsin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? internshipLastName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? internshipFirstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? internshipCdHcParty;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? internshipCbe;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? supervisorNihii;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? supervisorSsin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? supervisorLastName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? supervisorFirstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? supervisorCdHcParty;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? supervisorCbe;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? encounterLocationName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? encounterLocationNihii;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? encounterLocationNorm;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? longDelayJustification;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? correctiveInvoiceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? correctedInvoiceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? creditNote;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? creditNoteRelatedInvoiceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IdentityDocumentReaderDto? idDocument;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cancelReason;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cancelDate;

  Map<String, String> options;

  /// The secretForeignKeys are filled at the to many end of a one to many relationship (for example inside Contact for the Patient -> Contacts relationship). Used when we want to find all contacts for a specific patient. These keys are in clear. You can have several to partition the medical document space.
  Set<String> secretForeignKeys;

  /// The secretForeignKeys are filled at the to many end of a one to many relationship (for example inside Contact for the Patient -> Contacts relationship). Used when we want to find the patient for a specific contact. These keys are the encrypted id (using the hcParty key for the delegate) that can be found in clear inside the patient. ids encrypted using the hcParty keys.
  Map<String, Set<DelegationDto>> cryptedForeignKeys;

  /// When a document is created, the responsible generates a cryptographically random master key (never to be used for something else than referencing from other entities). He/she encrypts it using his own AES exchange key and stores it as a delegation. The responsible is thus always in the delegations as well
  Map<String, Set<DelegationDto>> delegations;

  /// When a document needs to be encrypted, the responsible generates a cryptographically random master key (different from the delegation key, never to appear in clear anywhere in the db. He/she encrypts it using his own AES exchange key and stores it as a delegation
  Map<String, Set<DelegationDto>> encryptionKeys;

  /// The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? encryptedSelf;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InvoiceDto &&
     other.id == id &&
     other.rev == rev &&
     other.created == created &&
     other.modified == modified &&
     other.author == author &&
     other.responsible == responsible &&
     other.medicalLocationId == medicalLocationId &&
     other.tags == tags &&
     other.codes == codes &&
     other.endOfLife == endOfLife &&
     other.deletionDate == deletionDate &&
     other.invoiceDate == invoiceDate &&
     other.sentDate == sentDate &&
     other.printedDate == printedDate &&
     other.invoicingCodes == invoicingCodes &&
     other.receipts == receipts &&
     other.recipientType == recipientType &&
     other.recipientId == recipientId &&
     other.invoiceReference == invoiceReference &&
     other.thirdPartyReference == thirdPartyReference &&
     other.thirdPartyPaymentJustification == thirdPartyPaymentJustification &&
     other.thirdPartyPaymentReason == thirdPartyPaymentReason &&
     other.reason == reason &&
     other.invoiceType == invoiceType &&
     other.sentMediumType == sentMediumType &&
     other.interventionType == interventionType &&
     other.groupId == groupId &&
     other.paymentType == paymentType &&
     other.paid == paid &&
     other.payments == payments &&
     other.gnotionNihii == gnotionNihii &&
     other.gnotionSsin == gnotionSsin &&
     other.gnotionLastName == gnotionLastName &&
     other.gnotionFirstName == gnotionFirstName &&
     other.gnotionCdHcParty == gnotionCdHcParty &&
     other.invoicePeriod == invoicePeriod &&
     other.careProviderType == careProviderType &&
     other.internshipNihii == internshipNihii &&
     other.internshipSsin == internshipSsin &&
     other.internshipLastName == internshipLastName &&
     other.internshipFirstName == internshipFirstName &&
     other.internshipCdHcParty == internshipCdHcParty &&
     other.internshipCbe == internshipCbe &&
     other.supervisorNihii == supervisorNihii &&
     other.supervisorSsin == supervisorSsin &&
     other.supervisorLastName == supervisorLastName &&
     other.supervisorFirstName == supervisorFirstName &&
     other.supervisorCdHcParty == supervisorCdHcParty &&
     other.supervisorCbe == supervisorCbe &&
     other.error == error &&
     other.encounterLocationName == encounterLocationName &&
     other.encounterLocationNihii == encounterLocationNihii &&
     other.encounterLocationNorm == encounterLocationNorm &&
     other.longDelayJustification == longDelayJustification &&
     other.correctiveInvoiceId == correctiveInvoiceId &&
     other.correctedInvoiceId == correctedInvoiceId &&
     other.creditNote == creditNote &&
     other.creditNoteRelatedInvoiceId == creditNoteRelatedInvoiceId &&
     other.idDocument == idDocument &&
     other.cancelReason == cancelReason &&
     other.cancelDate == cancelDate &&
     other.options == options &&
     other.secretForeignKeys == secretForeignKeys &&
     other.cryptedForeignKeys == cryptedForeignKeys &&
     other.delegations == delegations &&
     other.encryptionKeys == encryptionKeys &&
     other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (rev == null ? 0 : rev!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (modified == null ? 0 : modified!.hashCode) +
    (author == null ? 0 : author!.hashCode) +
    (responsible == null ? 0 : responsible!.hashCode) +
    (medicalLocationId == null ? 0 : medicalLocationId!.hashCode) +
    (tags.hashCode) +
    (codes.hashCode) +
    (endOfLife == null ? 0 : endOfLife!.hashCode) +
    (deletionDate == null ? 0 : deletionDate!.hashCode) +
    (invoiceDate == null ? 0 : invoiceDate!.hashCode) +
    (sentDate == null ? 0 : sentDate!.hashCode) +
    (printedDate == null ? 0 : printedDate!.hashCode) +
    (invoicingCodes.hashCode) +
    (receipts.hashCode) +
    (recipientType == null ? 0 : recipientType!.hashCode) +
    (recipientId == null ? 0 : recipientId!.hashCode) +
    (invoiceReference == null ? 0 : invoiceReference!.hashCode) +
    (thirdPartyReference == null ? 0 : thirdPartyReference!.hashCode) +
    (thirdPartyPaymentJustification == null ? 0 : thirdPartyPaymentJustification!.hashCode) +
    (thirdPartyPaymentReason == null ? 0 : thirdPartyPaymentReason!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (invoiceType == null ? 0 : invoiceType!.hashCode) +
    (sentMediumType == null ? 0 : sentMediumType!.hashCode) +
    (interventionType == null ? 0 : interventionType!.hashCode) +
    (groupId == null ? 0 : groupId!.hashCode) +
    (paymentType == null ? 0 : paymentType!.hashCode) +
    (paid == null ? 0 : paid!.hashCode) +
    (payments.hashCode) +
    (gnotionNihii == null ? 0 : gnotionNihii!.hashCode) +
    (gnotionSsin == null ? 0 : gnotionSsin!.hashCode) +
    (gnotionLastName == null ? 0 : gnotionLastName!.hashCode) +
    (gnotionFirstName == null ? 0 : gnotionFirstName!.hashCode) +
    (gnotionCdHcParty == null ? 0 : gnotionCdHcParty!.hashCode) +
    (invoicePeriod == null ? 0 : invoicePeriod!.hashCode) +
    (careProviderType == null ? 0 : careProviderType!.hashCode) +
    (internshipNihii == null ? 0 : internshipNihii!.hashCode) +
    (internshipSsin == null ? 0 : internshipSsin!.hashCode) +
    (internshipLastName == null ? 0 : internshipLastName!.hashCode) +
    (internshipFirstName == null ? 0 : internshipFirstName!.hashCode) +
    (internshipCdHcParty == null ? 0 : internshipCdHcParty!.hashCode) +
    (internshipCbe == null ? 0 : internshipCbe!.hashCode) +
    (supervisorNihii == null ? 0 : supervisorNihii!.hashCode) +
    (supervisorSsin == null ? 0 : supervisorSsin!.hashCode) +
    (supervisorLastName == null ? 0 : supervisorLastName!.hashCode) +
    (supervisorFirstName == null ? 0 : supervisorFirstName!.hashCode) +
    (supervisorCdHcParty == null ? 0 : supervisorCdHcParty!.hashCode) +
    (supervisorCbe == null ? 0 : supervisorCbe!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (encounterLocationName == null ? 0 : encounterLocationName!.hashCode) +
    (encounterLocationNihii == null ? 0 : encounterLocationNihii!.hashCode) +
    (encounterLocationNorm == null ? 0 : encounterLocationNorm!.hashCode) +
    (longDelayJustification == null ? 0 : longDelayJustification!.hashCode) +
    (correctiveInvoiceId == null ? 0 : correctiveInvoiceId!.hashCode) +
    (correctedInvoiceId == null ? 0 : correctedInvoiceId!.hashCode) +
    (creditNote == null ? 0 : creditNote!.hashCode) +
    (creditNoteRelatedInvoiceId == null ? 0 : creditNoteRelatedInvoiceId!.hashCode) +
    (idDocument == null ? 0 : idDocument!.hashCode) +
    (cancelReason == null ? 0 : cancelReason!.hashCode) +
    (cancelDate == null ? 0 : cancelDate!.hashCode) +
    (options.hashCode) +
    (secretForeignKeys.hashCode) +
    (cryptedForeignKeys.hashCode) +
    (delegations.hashCode) +
    (encryptionKeys.hashCode) +
    (encryptedSelf == null ? 0 : encryptedSelf!.hashCode);

  @override
  String toString() => 'InvoiceDto[id=$id, rev=$rev, created=$created, modified=$modified, author=$author, responsible=$responsible, medicalLocationId=$medicalLocationId, tags=$tags, codes=$codes, endOfLife=$endOfLife, deletionDate=$deletionDate, invoiceDate=$invoiceDate, sentDate=$sentDate, printedDate=$printedDate, invoicingCodes=$invoicingCodes, receipts=$receipts, recipientType=$recipientType, recipientId=$recipientId, invoiceReference=$invoiceReference, thirdPartyReference=$thirdPartyReference, thirdPartyPaymentJustification=$thirdPartyPaymentJustification, thirdPartyPaymentReason=$thirdPartyPaymentReason, reason=$reason, invoiceType=$invoiceType, sentMediumType=$sentMediumType, interventionType=$interventionType, groupId=$groupId, paymentType=$paymentType, paid=$paid, payments=$payments, gnotionNihii=$gnotionNihii, gnotionSsin=$gnotionSsin, gnotionLastName=$gnotionLastName, gnotionFirstName=$gnotionFirstName, gnotionCdHcParty=$gnotionCdHcParty, invoicePeriod=$invoicePeriod, careProviderType=$careProviderType, internshipNihii=$internshipNihii, internshipSsin=$internshipSsin, internshipLastName=$internshipLastName, internshipFirstName=$internshipFirstName, internshipCdHcParty=$internshipCdHcParty, internshipCbe=$internshipCbe, supervisorNihii=$supervisorNihii, supervisorSsin=$supervisorSsin, supervisorLastName=$supervisorLastName, supervisorFirstName=$supervisorFirstName, supervisorCdHcParty=$supervisorCdHcParty, supervisorCbe=$supervisorCbe, error=$error, encounterLocationName=$encounterLocationName, encounterLocationNihii=$encounterLocationNihii, encounterLocationNorm=$encounterLocationNorm, longDelayJustification=$longDelayJustification, correctiveInvoiceId=$correctiveInvoiceId, correctedInvoiceId=$correctedInvoiceId, creditNote=$creditNote, creditNoteRelatedInvoiceId=$creditNoteRelatedInvoiceId, idDocument=$idDocument, cancelReason=$cancelReason, cancelDate=$cancelDate, options=$options, secretForeignKeys=$secretForeignKeys, cryptedForeignKeys=$cryptedForeignKeys, delegations=$delegations, encryptionKeys=$encryptionKeys, encryptedSelf=$encryptedSelf]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (rev != null) {
      json[r'rev'] = rev;
    }
    if (created != null) {
      json[r'created'] = created;
    }
    if (modified != null) {
      json[r'modified'] = modified;
    }
    if (author != null) {
      json[r'author'] = author;
    }
    if (responsible != null) {
      json[r'responsible'] = responsible;
    }
    if (medicalLocationId != null) {
      json[r'medicalLocationId'] = medicalLocationId;
    }
      json[r'tags'] = tags;
      json[r'codes'] = codes;
    if (endOfLife != null) {
      json[r'endOfLife'] = endOfLife;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
    }
    if (invoiceDate != null) {
      json[r'invoiceDate'] = invoiceDate;
    }
    if (sentDate != null) {
      json[r'sentDate'] = sentDate;
    }
    if (printedDate != null) {
      json[r'printedDate'] = printedDate;
    }
      json[r'invoicingCodes'] = invoicingCodes;
      json[r'receipts'] = receipts;
    if (recipientType != null) {
      json[r'recipientType'] = recipientType;
    }
    if (recipientId != null) {
      json[r'recipientId'] = recipientId;
    }
    if (invoiceReference != null) {
      json[r'invoiceReference'] = invoiceReference;
    }
    if (thirdPartyReference != null) {
      json[r'thirdPartyReference'] = thirdPartyReference;
    }
    if (thirdPartyPaymentJustification != null) {
      json[r'thirdPartyPaymentJustification'] = thirdPartyPaymentJustification;
    }
    if (thirdPartyPaymentReason != null) {
      json[r'thirdPartyPaymentReason'] = thirdPartyPaymentReason;
    }
    if (reason != null) {
      json[r'reason'] = reason;
    }
    if (invoiceType != null) {
      json[r'invoiceType'] = invoiceType;
    }
    if (sentMediumType != null) {
      json[r'sentMediumType'] = sentMediumType;
    }
    if (interventionType != null) {
      json[r'interventionType'] = interventionType;
    }
    if (groupId != null) {
      json[r'groupId'] = groupId;
    }
    if (paymentType != null) {
      json[r'paymentType'] = paymentType;
    }
    if (paid != null) {
      json[r'paid'] = paid;
    }
      json[r'payments'] = payments;
    if (gnotionNihii != null) {
      json[r'gnotionNihii'] = gnotionNihii;
    }
    if (gnotionSsin != null) {
      json[r'gnotionSsin'] = gnotionSsin;
    }
    if (gnotionLastName != null) {
      json[r'gnotionLastName'] = gnotionLastName;
    }
    if (gnotionFirstName != null) {
      json[r'gnotionFirstName'] = gnotionFirstName;
    }
    if (gnotionCdHcParty != null) {
      json[r'gnotionCdHcParty'] = gnotionCdHcParty;
    }
    if (invoicePeriod != null) {
      json[r'invoicePeriod'] = invoicePeriod;
    }
    if (careProviderType != null) {
      json[r'careProviderType'] = careProviderType;
    }
    if (internshipNihii != null) {
      json[r'internshipNihii'] = internshipNihii;
    }
    if (internshipSsin != null) {
      json[r'internshipSsin'] = internshipSsin;
    }
    if (internshipLastName != null) {
      json[r'internshipLastName'] = internshipLastName;
    }
    if (internshipFirstName != null) {
      json[r'internshipFirstName'] = internshipFirstName;
    }
    if (internshipCdHcParty != null) {
      json[r'internshipCdHcParty'] = internshipCdHcParty;
    }
    if (internshipCbe != null) {
      json[r'internshipCbe'] = internshipCbe;
    }
    if (supervisorNihii != null) {
      json[r'supervisorNihii'] = supervisorNihii;
    }
    if (supervisorSsin != null) {
      json[r'supervisorSsin'] = supervisorSsin;
    }
    if (supervisorLastName != null) {
      json[r'supervisorLastName'] = supervisorLastName;
    }
    if (supervisorFirstName != null) {
      json[r'supervisorFirstName'] = supervisorFirstName;
    }
    if (supervisorCdHcParty != null) {
      json[r'supervisorCdHcParty'] = supervisorCdHcParty;
    }
    if (supervisorCbe != null) {
      json[r'supervisorCbe'] = supervisorCbe;
    }
    if (error != null) {
      json[r'error'] = error;
    }
    if (encounterLocationName != null) {
      json[r'encounterLocationName'] = encounterLocationName;
    }
    if (encounterLocationNihii != null) {
      json[r'encounterLocationNihii'] = encounterLocationNihii;
    }
    if (encounterLocationNorm != null) {
      json[r'encounterLocationNorm'] = encounterLocationNorm;
    }
    if (longDelayJustification != null) {
      json[r'longDelayJustification'] = longDelayJustification;
    }
    if (correctiveInvoiceId != null) {
      json[r'correctiveInvoiceId'] = correctiveInvoiceId;
    }
    if (correctedInvoiceId != null) {
      json[r'correctedInvoiceId'] = correctedInvoiceId;
    }
    if (creditNote != null) {
      json[r'creditNote'] = creditNote;
    }
    if (creditNoteRelatedInvoiceId != null) {
      json[r'creditNoteRelatedInvoiceId'] = creditNoteRelatedInvoiceId;
    }
    if (idDocument != null) {
      json[r'idDocument'] = idDocument;
    }
    if (cancelReason != null) {
      json[r'cancelReason'] = cancelReason;
    }
    if (cancelDate != null) {
      json[r'cancelDate'] = cancelDate;
    }
      json[r'options'] = options;
      json[r'secretForeignKeys'] = secretForeignKeys;
      json[r'cryptedForeignKeys'] = cryptedForeignKeys;
      json[r'delegations'] = delegations;
      json[r'encryptionKeys'] = encryptionKeys;
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [InvoiceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InvoiceDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InvoiceDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InvoiceDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InvoiceDto(
        id: mapValueOfType<String>(json, r'id')!,
        rev: mapValueOfType<String>(json, r'rev'),
        created: mapValueOfType<int>(json, r'created'),
        modified: mapValueOfType<int>(json, r'modified'),
        author: mapValueOfType<String>(json, r'author'),
        responsible: mapValueOfType<String>(json, r'responsible'),
        medicalLocationId: mapValueOfType<String>(json, r'medicalLocationId'),
        tags: CodeStubDto.listFromJson(json[r'tags'])!.toSet(),
        codes: CodeStubDto.listFromJson(json[r'codes'])!.toSet(),
        endOfLife: mapValueOfType<int>(json, r'endOfLife'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        invoiceDate: mapValueOfType<int>(json, r'invoiceDate'),
        sentDate: mapValueOfType<int>(json, r'sentDate'),
        printedDate: mapValueOfType<int>(json, r'printedDate'),
        invoicingCodes: InvoicingCodeDto.listFromJson(json[r'invoicingCodes'])!,
        receipts: mapCastOfType<String, String>(json, r'receipts')!,
        recipientType: mapValueOfType<String>(json, r'recipientType'),
        recipientId: mapValueOfType<String>(json, r'recipientId'),
        invoiceReference: mapValueOfType<String>(json, r'invoiceReference'),
        thirdPartyReference: mapValueOfType<String>(json, r'thirdPartyReference'),
        thirdPartyPaymentJustification: mapValueOfType<String>(json, r'thirdPartyPaymentJustification'),
        thirdPartyPaymentReason: mapValueOfType<String>(json, r'thirdPartyPaymentReason'),
        reason: mapValueOfType<String>(json, r'reason'),
        invoiceType: InvoiceDtoInvoiceTypeEnum.fromJson(json[r'invoiceType']),
        sentMediumType: InvoiceDtoSentMediumTypeEnum.fromJson(json[r'sentMediumType']),
        interventionType: InvoiceDtoInterventionTypeEnum.fromJson(json[r'interventionType']),
        groupId: mapValueOfType<String>(json, r'groupId'),
        paymentType: InvoiceDtoPaymentTypeEnum.fromJson(json[r'paymentType']),
        paid: mapValueOfType<double>(json, r'paid'),
        payments: PaymentDto.listFromJson(json[r'payments']) ?? const [],
        gnotionNihii: mapValueOfType<String>(json, r'gnotionNihii'),
        gnotionSsin: mapValueOfType<String>(json, r'gnotionSsin'),
        gnotionLastName: mapValueOfType<String>(json, r'gnotionLastName'),
        gnotionFirstName: mapValueOfType<String>(json, r'gnotionFirstName'),
        gnotionCdHcParty: mapValueOfType<String>(json, r'gnotionCdHcParty'),
        invoicePeriod: mapValueOfType<int>(json, r'invoicePeriod'),
        careProviderType: mapValueOfType<String>(json, r'careProviderType'),
        internshipNihii: mapValueOfType<String>(json, r'internshipNihii'),
        internshipSsin: mapValueOfType<String>(json, r'internshipSsin'),
        internshipLastName: mapValueOfType<String>(json, r'internshipLastName'),
        internshipFirstName: mapValueOfType<String>(json, r'internshipFirstName'),
        internshipCdHcParty: mapValueOfType<String>(json, r'internshipCdHcParty'),
        internshipCbe: mapValueOfType<String>(json, r'internshipCbe'),
        supervisorNihii: mapValueOfType<String>(json, r'supervisorNihii'),
        supervisorSsin: mapValueOfType<String>(json, r'supervisorSsin'),
        supervisorLastName: mapValueOfType<String>(json, r'supervisorLastName'),
        supervisorFirstName: mapValueOfType<String>(json, r'supervisorFirstName'),
        supervisorCdHcParty: mapValueOfType<String>(json, r'supervisorCdHcParty'),
        supervisorCbe: mapValueOfType<String>(json, r'supervisorCbe'),
        error: mapValueOfType<String>(json, r'error'),
        encounterLocationName: mapValueOfType<String>(json, r'encounterLocationName'),
        encounterLocationNihii: mapValueOfType<String>(json, r'encounterLocationNihii'),
        encounterLocationNorm: mapValueOfType<int>(json, r'encounterLocationNorm'),
        longDelayJustification: mapValueOfType<int>(json, r'longDelayJustification'),
        correctiveInvoiceId: mapValueOfType<String>(json, r'correctiveInvoiceId'),
        correctedInvoiceId: mapValueOfType<String>(json, r'correctedInvoiceId'),
        creditNote: mapValueOfType<bool>(json, r'creditNote'),
        creditNoteRelatedInvoiceId: mapValueOfType<String>(json, r'creditNoteRelatedInvoiceId'),
        idDocument: IdentityDocumentReaderDto.fromJson(json[r'idDocument']),
        cancelReason: mapValueOfType<String>(json, r'cancelReason'),
        cancelDate: mapValueOfType<int>(json, r'cancelDate'),
        options: mapCastOfType<String, String>(json, r'options')!,
        secretForeignKeys: json[r'secretForeignKeys'] is Set
            ? (json[r'secretForeignKeys'] as Set).cast<String>()
            : const {},
        cryptedForeignKeys: json[r'cryptedForeignKeys'] == null
          ? const {}
            : DelegationDto.mapListFromJson(json[r'cryptedForeignKeys']),
        delegations: json[r'delegations'] == null
          ? const {}
            : DelegationDto.mapListFromJson(json[r'delegations']),
        encryptionKeys: json[r'encryptionKeys'] == null
          ? const {}
            : DelegationDto.mapListFromJson(json[r'encryptionKeys']),
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<InvoiceDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvoiceDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvoiceDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InvoiceDto> mapFromJson(dynamic json) {
    final map = <String, InvoiceDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvoiceDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InvoiceDto-objects as value to a dart map
  static Map<String, List<InvoiceDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InvoiceDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvoiceDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'tags',
    'codes',
    'invoicingCodes',
    'receipts',
    'options',
    'secretForeignKeys',
    'cryptedForeignKeys',
    'delegations',
    'encryptionKeys',
  };
}

/// The format the invoice should follow based on the recipient which could be a patient, mutual fund or paying agency such as the CPAS
class InvoiceDtoInvoiceTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const InvoiceDtoInvoiceTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const patient = InvoiceDtoInvoiceTypeEnum._(r'patient');
  static const mutualfund = InvoiceDtoInvoiceTypeEnum._(r'mutualfund');
  static const payingagency = InvoiceDtoInvoiceTypeEnum._(r'payingagency');
  static const insurance = InvoiceDtoInvoiceTypeEnum._(r'insurance');
  static const efact = InvoiceDtoInvoiceTypeEnum._(r'efact');
  static const other = InvoiceDtoInvoiceTypeEnum._(r'other');

  /// List of all possible values in this [enum][InvoiceDtoInvoiceTypeEnum].
  static const values = <InvoiceDtoInvoiceTypeEnum>[
    patient,
    mutualfund,
    payingagency,
    insurance,
    efact,
    other,
  ];

  static InvoiceDtoInvoiceTypeEnum? fromJson(dynamic value) => InvoiceDtoInvoiceTypeEnumTypeTransformer().decode(value);

  static List<InvoiceDtoInvoiceTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvoiceDtoInvoiceTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvoiceDtoInvoiceTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvoiceDtoInvoiceTypeEnum] to String,
/// and [decode] dynamic data back to [InvoiceDtoInvoiceTypeEnum].
class InvoiceDtoInvoiceTypeEnumTypeTransformer {
  factory InvoiceDtoInvoiceTypeEnumTypeTransformer() => _instance ??= const InvoiceDtoInvoiceTypeEnumTypeTransformer._();

  const InvoiceDtoInvoiceTypeEnumTypeTransformer._();

  String encode(InvoiceDtoInvoiceTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvoiceDtoInvoiceTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvoiceDtoInvoiceTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'patient': return InvoiceDtoInvoiceTypeEnum.patient;
        case r'mutualfund': return InvoiceDtoInvoiceTypeEnum.mutualfund;
        case r'payingagency': return InvoiceDtoInvoiceTypeEnum.payingagency;
        case r'insurance': return InvoiceDtoInvoiceTypeEnum.insurance;
        case r'efact': return InvoiceDtoInvoiceTypeEnum.efact;
        case r'other': return InvoiceDtoInvoiceTypeEnum.other;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvoiceDtoInvoiceTypeEnumTypeTransformer] instance.
  static InvoiceDtoInvoiceTypeEnumTypeTransformer? _instance;
}


/// Medium of the invoice: CD ROM, Email, paper, etc.
class InvoiceDtoSentMediumTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const InvoiceDtoSentMediumTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const cdrom = InvoiceDtoSentMediumTypeEnum._(r'cdrom');
  static const eattest = InvoiceDtoSentMediumTypeEnum._(r'eattest');
  static const efact = InvoiceDtoSentMediumTypeEnum._(r'efact');
  static const email = InvoiceDtoSentMediumTypeEnum._(r'email');
  static const mediprima = InvoiceDtoSentMediumTypeEnum._(r'mediprima');
  static const paper = InvoiceDtoSentMediumTypeEnum._(r'paper');
  static const stat = InvoiceDtoSentMediumTypeEnum._(r'stat');

  /// List of all possible values in this [enum][InvoiceDtoSentMediumTypeEnum].
  static const values = <InvoiceDtoSentMediumTypeEnum>[
    cdrom,
    eattest,
    efact,
    email,
    mediprima,
    paper,
    stat,
  ];

  static InvoiceDtoSentMediumTypeEnum? fromJson(dynamic value) => InvoiceDtoSentMediumTypeEnumTypeTransformer().decode(value);

  static List<InvoiceDtoSentMediumTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvoiceDtoSentMediumTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvoiceDtoSentMediumTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvoiceDtoSentMediumTypeEnum] to String,
/// and [decode] dynamic data back to [InvoiceDtoSentMediumTypeEnum].
class InvoiceDtoSentMediumTypeEnumTypeTransformer {
  factory InvoiceDtoSentMediumTypeEnumTypeTransformer() => _instance ??= const InvoiceDtoSentMediumTypeEnumTypeTransformer._();

  const InvoiceDtoSentMediumTypeEnumTypeTransformer._();

  String encode(InvoiceDtoSentMediumTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvoiceDtoSentMediumTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvoiceDtoSentMediumTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'cdrom': return InvoiceDtoSentMediumTypeEnum.cdrom;
        case r'eattest': return InvoiceDtoSentMediumTypeEnum.eattest;
        case r'efact': return InvoiceDtoSentMediumTypeEnum.efact;
        case r'email': return InvoiceDtoSentMediumTypeEnum.email;
        case r'mediprima': return InvoiceDtoSentMediumTypeEnum.mediprima;
        case r'paper': return InvoiceDtoSentMediumTypeEnum.paper;
        case r'stat': return InvoiceDtoSentMediumTypeEnum.stat;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvoiceDtoSentMediumTypeEnumTypeTransformer] instance.
  static InvoiceDtoSentMediumTypeEnumTypeTransformer? _instance;
}



class InvoiceDtoInterventionTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const InvoiceDtoInterventionTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const total = InvoiceDtoInterventionTypeEnum._(r'total');
  static const userfees = InvoiceDtoInterventionTypeEnum._(r'userfees');

  /// List of all possible values in this [enum][InvoiceDtoInterventionTypeEnum].
  static const values = <InvoiceDtoInterventionTypeEnum>[
    total,
    userfees,
  ];

  static InvoiceDtoInterventionTypeEnum? fromJson(dynamic value) => InvoiceDtoInterventionTypeEnumTypeTransformer().decode(value);

  static List<InvoiceDtoInterventionTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvoiceDtoInterventionTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvoiceDtoInterventionTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvoiceDtoInterventionTypeEnum] to String,
/// and [decode] dynamic data back to [InvoiceDtoInterventionTypeEnum].
class InvoiceDtoInterventionTypeEnumTypeTransformer {
  factory InvoiceDtoInterventionTypeEnumTypeTransformer() => _instance ??= const InvoiceDtoInterventionTypeEnumTypeTransformer._();

  const InvoiceDtoInterventionTypeEnumTypeTransformer._();

  String encode(InvoiceDtoInterventionTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvoiceDtoInterventionTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvoiceDtoInterventionTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'total': return InvoiceDtoInterventionTypeEnum.total;
        case r'userfees': return InvoiceDtoInterventionTypeEnum.userfees;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvoiceDtoInterventionTypeEnumTypeTransformer] instance.
  static InvoiceDtoInterventionTypeEnumTypeTransformer? _instance;
}


/// Type of payment, ex: cash, wired, insurance, debit card, etc.
class InvoiceDtoPaymentTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const InvoiceDtoPaymentTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const cash = InvoiceDtoPaymentTypeEnum._(r'cash');
  static const wired = InvoiceDtoPaymentTypeEnum._(r'wired');
  static const insurance = InvoiceDtoPaymentTypeEnum._(r'insurance');
  static const creditcard = InvoiceDtoPaymentTypeEnum._(r'creditcard');
  static const debitcard = InvoiceDtoPaymentTypeEnum._(r'debitcard');
  static const paypal = InvoiceDtoPaymentTypeEnum._(r'paypal');
  static const bitcoin = InvoiceDtoPaymentTypeEnum._(r'bitcoin');
  static const other = InvoiceDtoPaymentTypeEnum._(r'other');

  /// List of all possible values in this [enum][InvoiceDtoPaymentTypeEnum].
  static const values = <InvoiceDtoPaymentTypeEnum>[
    cash,
    wired,
    insurance,
    creditcard,
    debitcard,
    paypal,
    bitcoin,
    other,
  ];

  static InvoiceDtoPaymentTypeEnum? fromJson(dynamic value) => InvoiceDtoPaymentTypeEnumTypeTransformer().decode(value);

  static List<InvoiceDtoPaymentTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvoiceDtoPaymentTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvoiceDtoPaymentTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvoiceDtoPaymentTypeEnum] to String,
/// and [decode] dynamic data back to [InvoiceDtoPaymentTypeEnum].
class InvoiceDtoPaymentTypeEnumTypeTransformer {
  factory InvoiceDtoPaymentTypeEnumTypeTransformer() => _instance ??= const InvoiceDtoPaymentTypeEnumTypeTransformer._();

  const InvoiceDtoPaymentTypeEnumTypeTransformer._();

  String encode(InvoiceDtoPaymentTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvoiceDtoPaymentTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvoiceDtoPaymentTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'cash': return InvoiceDtoPaymentTypeEnum.cash;
        case r'wired': return InvoiceDtoPaymentTypeEnum.wired;
        case r'insurance': return InvoiceDtoPaymentTypeEnum.insurance;
        case r'creditcard': return InvoiceDtoPaymentTypeEnum.creditcard;
        case r'debitcard': return InvoiceDtoPaymentTypeEnum.debitcard;
        case r'paypal': return InvoiceDtoPaymentTypeEnum.paypal;
        case r'bitcoin': return InvoiceDtoPaymentTypeEnum.bitcoin;
        case r'other': return InvoiceDtoPaymentTypeEnum.other;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvoiceDtoPaymentTypeEnumTypeTransformer] instance.
  static InvoiceDtoPaymentTypeEnumTypeTransformer? _instance;
}


