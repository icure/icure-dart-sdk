//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MessageDto {
  /// Returns a new [MessageDto] instance.
  MessageDto({
    @required this.id,
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
    this.fromAddress,
    this.fromHealthcarePartyId,
    this.formId,
    this.status,
    this.recipientsType,
    this.recipients = const {},
    this.toAddresses = const {},
    this.received,
    this.sent,
    this.metas = const {},
    this.readStatus = const {},
    this.transportGuid,
    this.remark,
    this.conversationGuid,
    this.subject,
    this.invoiceIds = const {},
    this.parentId,
    this.externalRef,
    this.unassignedResults = const {},
    this.assignedResults = const {},
    this.senderReferences = const {},
    this.secretForeignKeys = const {},
    this.cryptedForeignKeys = const {},
    this.delegations = const {},
    this.encryptionKeys = const {},
    this.encryptedSelf,
  });

  /// The ID of the message. We encourage using either a v4 UUID or a HL7 Id.
  String id;

  /// The revision of the message in the database, used for conflict management / optimistic locking.
  String rev;

  /// The timestamp (unix epoch in ms) of creation of this entity, will be filled automatically if missing. Not enforced by the application server.
  int created;

  /// The date (unix epoch in ms) of the latest modification of this entity, will be filled automatically if missing. Not enforced by the application server.
  int modified;

  /// The id of the User that has created this entity, will be filled automatically if missing. Not enforced by the application server.
  String author;

  /// The id of the HealthcareParty that is responsible for this entity, will be filled automatically if missing. Not enforced by the application server.
  String responsible;

  /// The id of the medical location where this entity was created.
  String medicalLocationId;

  /// A tag is an item from a codification system that qualifies an entity as being member of a certain class, whatever the value it might have taken. If the tag qualifies the content of a field, it means that whatever the content of the field, the tag will always apply. For example, the label of a field is qualified using a tag. LOINC is a codification system typically used for tags.
  Set<CodeStubDto> tags;

  /// A code is an item from a codification system that qualifies the content of this entity. SNOMED-CT, ICPC-2 or ICD-10 codifications systems can be used for codes
  Set<CodeStubDto> codes;

  /// Soft delete (unix epoch in ms) timestamp of the object.
  int endOfLife;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  int deletionDate;

  /// Address of the sender of the message
  String fromAddress;

  /// ID of the healthcare party sending the message
  String fromHealthcarePartyId;

  String formId;

  /// Status of the message
  int status;

  /// The type of user who is the recipient of this message
  String recipientsType;

  /// List of IDs of healthcare parties to whom the message is addressed
  Set<String> recipients;

  /// The address of the recipient of the message. Format is of an email address with extra domains defined for mycarenet and ehealth: (efact.mycarenet.be/eattest.mycarenet.be/chapter4.mycarenet.be/ehbox.ehealth.fgov.be)
  Set<String> toAddresses;

  /// The timestamp (unix epoch in ms) when the message was received
  int received;

  /// The timestamp (unix epoch in ms) when the message was sent
  int sent;

  Map<String, String> metas;

  /// Status showing whether the message is read or not and the time of reading
  Map<String, MessageReadStatusDto> readStatus;

  String transportGuid;

  String remark;

  String conversationGuid;

  /// Subject for the message
  String subject;

  /// Set of IDs for invoices in the message
  Set<String> invoiceIds;

  /// ID of a parent in a message conversation
  String parentId;

  String externalRef;

  Set<String> unassignedResults;

  Map<String, String> assignedResults;

  Map<String, String> senderReferences;

  /// The secretForeignKeys are filled at the to many end of a one to many relationship (for example inside Contact for the Patient -> Contacts relationship). Used when we want to find all contacts for a specific patient. These keys are in clear. You can have several to partition the medical document space.
  Set<String> secretForeignKeys;

  /// The secretForeignKeys are filled at the to many end of a one to many relationship (for example inside Contact for the Patient -> Contacts relationship). Used when we want to find the patient for a specific contact. These keys are the encrypted id (using the hcParty key for the delegate) that can be found in clear inside the patient. ids encrypted using the hcParty keys.
  Map<String, Set<DelegationDto>> cryptedForeignKeys;

  /// When a document is created, the responsible generates a cryptographically random master key (never to be used for something else than referencing from other entities). He/she encrypts it using his own AES exchange key and stores it as a delegation. The responsible is thus always in the delegations as well
  Map<String, Set<DelegationDto>> delegations;

  /// When a document needs to be encrypted, the responsible generates a cryptographically random master key (different from the delegation key, never to appear in clear anywhere in the db. He/she encrypts it using his own AES exchange key and stores it as a delegation
  Map<String, Set<DelegationDto>> encryptionKeys;

  /// The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
  String encryptedSelf;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MessageDto &&
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
     other.fromAddress == fromAddress &&
     other.fromHealthcarePartyId == fromHealthcarePartyId &&
     other.formId == formId &&
     other.status == status &&
     other.recipientsType == recipientsType &&
     other.recipients == recipients &&
     other.toAddresses == toAddresses &&
     other.received == received &&
     other.sent == sent &&
     other.metas == metas &&
     other.readStatus == readStatus &&
     other.transportGuid == transportGuid &&
     other.remark == remark &&
     other.conversationGuid == conversationGuid &&
     other.subject == subject &&
     other.invoiceIds == invoiceIds &&
     other.parentId == parentId &&
     other.externalRef == externalRef &&
     other.unassignedResults == unassignedResults &&
     other.assignedResults == assignedResults &&
     other.senderReferences == senderReferences &&
     other.secretForeignKeys == secretForeignKeys &&
     other.cryptedForeignKeys == cryptedForeignKeys &&
     other.delegations == delegations &&
     other.encryptionKeys == encryptionKeys &&
     other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (rev == null ? 0 : rev.hashCode) +
    (created == null ? 0 : created.hashCode) +
    (modified == null ? 0 : modified.hashCode) +
    (author == null ? 0 : author.hashCode) +
    (responsible == null ? 0 : responsible.hashCode) +
    (medicalLocationId == null ? 0 : medicalLocationId.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (codes == null ? 0 : codes.hashCode) +
    (endOfLife == null ? 0 : endOfLife.hashCode) +
    (deletionDate == null ? 0 : deletionDate.hashCode) +
    (fromAddress == null ? 0 : fromAddress.hashCode) +
    (fromHealthcarePartyId == null ? 0 : fromHealthcarePartyId.hashCode) +
    (formId == null ? 0 : formId.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (recipientsType == null ? 0 : recipientsType.hashCode) +
    (recipients == null ? 0 : recipients.hashCode) +
    (toAddresses == null ? 0 : toAddresses.hashCode) +
    (received == null ? 0 : received.hashCode) +
    (sent == null ? 0 : sent.hashCode) +
    (metas == null ? 0 : metas.hashCode) +
    (readStatus == null ? 0 : readStatus.hashCode) +
    (transportGuid == null ? 0 : transportGuid.hashCode) +
    (remark == null ? 0 : remark.hashCode) +
    (conversationGuid == null ? 0 : conversationGuid.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (invoiceIds == null ? 0 : invoiceIds.hashCode) +
    (parentId == null ? 0 : parentId.hashCode) +
    (externalRef == null ? 0 : externalRef.hashCode) +
    (unassignedResults == null ? 0 : unassignedResults.hashCode) +
    (assignedResults == null ? 0 : assignedResults.hashCode) +
    (senderReferences == null ? 0 : senderReferences.hashCode) +
    (secretForeignKeys == null ? 0 : secretForeignKeys.hashCode) +
    (cryptedForeignKeys == null ? 0 : cryptedForeignKeys.hashCode) +
    (delegations == null ? 0 : delegations.hashCode) +
    (encryptionKeys == null ? 0 : encryptionKeys.hashCode) +
    (encryptedSelf == null ? 0 : encryptedSelf.hashCode);

  @override
  String toString() => 'MessageDto[id=$id, rev=$rev, created=$created, modified=$modified, author=$author, responsible=$responsible, medicalLocationId=$medicalLocationId, tags=$tags, codes=$codes, endOfLife=$endOfLife, deletionDate=$deletionDate, fromAddress=$fromAddress, fromHealthcarePartyId=$fromHealthcarePartyId, formId=$formId, status=$status, recipientsType=$recipientsType, recipients=$recipients, toAddresses=$toAddresses, received=$received, sent=$sent, metas=$metas, readStatus=$readStatus, transportGuid=$transportGuid, remark=$remark, conversationGuid=$conversationGuid, subject=$subject, invoiceIds=$invoiceIds, parentId=$parentId, externalRef=$externalRef, unassignedResults=$unassignedResults, assignedResults=$assignedResults, senderReferences=$senderReferences, secretForeignKeys=$secretForeignKeys, cryptedForeignKeys=$cryptedForeignKeys, delegations=$delegations, encryptionKeys=$encryptionKeys, encryptedSelf=$encryptedSelf]';

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
    if (fromAddress != null) {
      json[r'fromAddress'] = fromAddress;
    }
    if (fromHealthcarePartyId != null) {
      json[r'fromHealthcarePartyId'] = fromHealthcarePartyId;
    }
    if (formId != null) {
      json[r'formId'] = formId;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (recipientsType != null) {
      json[r'recipientsType'] = recipientsType;
    }
      json[r'recipients'] = recipients;
      json[r'toAddresses'] = toAddresses;
    if (received != null) {
      json[r'received'] = received;
    }
    if (sent != null) {
      json[r'sent'] = sent;
    }
      json[r'metas'] = metas;
      json[r'readStatus'] = readStatus;
    if (transportGuid != null) {
      json[r'transportGuid'] = transportGuid;
    }
    if (remark != null) {
      json[r'remark'] = remark;
    }
    if (conversationGuid != null) {
      json[r'conversationGuid'] = conversationGuid;
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
      json[r'invoiceIds'] = invoiceIds;
    if (parentId != null) {
      json[r'parentId'] = parentId;
    }
    if (externalRef != null) {
      json[r'externalRef'] = externalRef;
    }
      json[r'unassignedResults'] = unassignedResults;
      json[r'assignedResults'] = assignedResults;
      json[r'senderReferences'] = senderReferences;
      json[r'secretForeignKeys'] = secretForeignKeys;
      json[r'cryptedForeignKeys'] = cryptedForeignKeys;
      json[r'delegations'] = delegations;
      json[r'encryptionKeys'] = encryptionKeys;
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [MessageDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MessageDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MessageDto(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
        created: mapValueOfType<int>(json, r'created'),
        modified: mapValueOfType<int>(json, r'modified'),
        author: mapValueOfType<String>(json, r'author'),
        responsible: mapValueOfType<String>(json, r'responsible'),
        medicalLocationId: mapValueOfType<String>(json, r'medicalLocationId'),
        tags: CodeStubDto.listFromJson(json[r'tags']),
        codes: CodeStubDto.listFromJson(json[r'codes']),
        endOfLife: mapValueOfType<int>(json, r'endOfLife'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        fromAddress: mapValueOfType<String>(json, r'fromAddress'),
        fromHealthcarePartyId: mapValueOfType<String>(json, r'fromHealthcarePartyId'),
        formId: mapValueOfType<String>(json, r'formId'),
        status: mapValueOfType<int>(json, r'status'),
        recipientsType: mapValueOfType<String>(json, r'recipientsType'),
        recipients: json[r'recipients'] is Set
          ? (json[r'recipients'] as Set).cast<String>()
          : null,
        toAddresses: json[r'toAddresses'] is Set
          ? (json[r'toAddresses'] as Set).cast<String>()
          : null,
        received: mapValueOfType<int>(json, r'received'),
        sent: mapValueOfType<int>(json, r'sent'),
        metas: mapCastOfType<String, String>(json, r'metas'),
        readStatus: mapValueOfType<Map<String, MessageReadStatusDto>>(json, r'readStatus'),
        transportGuid: mapValueOfType<String>(json, r'transportGuid'),
        remark: mapValueOfType<String>(json, r'remark'),
        conversationGuid: mapValueOfType<String>(json, r'conversationGuid'),
        subject: mapValueOfType<String>(json, r'subject'),
        invoiceIds: json[r'invoiceIds'] is Set
          ? (json[r'invoiceIds'] as Set).cast<String>()
          : null,
        parentId: mapValueOfType<String>(json, r'parentId'),
        externalRef: mapValueOfType<String>(json, r'externalRef'),
        unassignedResults: json[r'unassignedResults'] is Set
          ? (json[r'unassignedResults'] as Set).cast<String>()
          : null,
        assignedResults: mapCastOfType<String, String>(json, r'assignedResults'),
        senderReferences: mapCastOfType<String, String>(json, r'senderReferences'),
        secretForeignKeys: json[r'secretForeignKeys'] is Set
          ? (json[r'secretForeignKeys'] as Set).cast<String>()
          : null,
        cryptedForeignKeys: json[r'cryptedForeignKeys'] == null
          ? null
          : DelegationDto.mapListFromJson(json[r'cryptedForeignKeys']),
        delegations: json[r'delegations'] == null
          ? null
          : DelegationDto.mapListFromJson(json[r'delegations']),
        encryptionKeys: json[r'encryptionKeys'] == null
          ? null
          : DelegationDto.mapListFromJson(json[r'encryptionKeys']),
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<MessageDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MessageDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MessageDto>[];

  static Map<String, MessageDto> mapFromJson(dynamic json) {
    final map = <String, MessageDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = MessageDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MessageDto-objects as value to a dart map
  static Map<String, List<MessageDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MessageDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = MessageDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

