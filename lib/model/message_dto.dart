//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MessageDto {
  /// Returns a new [MessageDto] instance.
  MessageDto({
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

  /// Address of the sender of the message
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fromAddress;

  /// ID of the healthcare party sending the message
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fromHealthcarePartyId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formId;

  /// Status of the message
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? status;

  /// The type of user who is the recipient of this message
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recipientsType;

  /// List of IDs of healthcare parties to whom the message is addressed
  Set<String> recipients;

  /// The address of the recipient of the message. Format is of an email address with extra domains defined for mycarenet and ehealth: (efact.mycarenet.be/eattest.mycarenet.be/chapter4.mycarenet.be/ehbox.ehealth.fgov.be)
  Set<String> toAddresses;

  /// The timestamp (unix epoch in ms) when the message was received
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? received;

  /// The timestamp (unix epoch in ms) when the message was sent
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sent;

  Map<String, String> metas;

  /// Status showing whether the message is read or not and the time of reading
  Map<String, MessageReadStatusDto> readStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? transportGuid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? remark;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? conversationGuid;

  /// Subject for the message
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  /// Set of IDs for invoices in the message
  Set<String> invoiceIds;

  /// ID of a parent in a message conversation
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalRef;

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
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? encryptedSelf;

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
    (fromAddress == null ? 0 : fromAddress!.hashCode) +
    (fromHealthcarePartyId == null ? 0 : fromHealthcarePartyId!.hashCode) +
    (formId == null ? 0 : formId!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (recipientsType == null ? 0 : recipientsType!.hashCode) +
    (recipients.hashCode) +
    (toAddresses.hashCode) +
    (received == null ? 0 : received!.hashCode) +
    (sent == null ? 0 : sent!.hashCode) +
    (metas.hashCode) +
    (readStatus.hashCode) +
    (transportGuid == null ? 0 : transportGuid!.hashCode) +
    (remark == null ? 0 : remark!.hashCode) +
    (conversationGuid == null ? 0 : conversationGuid!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (invoiceIds.hashCode) +
    (parentId == null ? 0 : parentId!.hashCode) +
    (externalRef == null ? 0 : externalRef!.hashCode) +
    (unassignedResults.hashCode) +
    (assignedResults.hashCode) +
    (senderReferences.hashCode) +
    (secretForeignKeys.hashCode) +
    (cryptedForeignKeys.hashCode) +
    (delegations.hashCode) +
    (encryptionKeys.hashCode) +
    (encryptedSelf == null ? 0 : encryptedSelf!.hashCode);

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
  static MessageDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MessageDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MessageDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MessageDto(
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
        fromAddress: mapValueOfType<String>(json, r'fromAddress'),
        fromHealthcarePartyId: mapValueOfType<String>(json, r'fromHealthcarePartyId'),
        formId: mapValueOfType<String>(json, r'formId'),
        status: mapValueOfType<int>(json, r'status'),
        recipientsType: mapValueOfType<String>(json, r'recipientsType'),
        recipients: json[r'recipients'] is Set
            ? (json[r'recipients'] as Set).cast<String>()
            : const {},
        toAddresses: json[r'toAddresses'] is Set
            ? (json[r'toAddresses'] as Set).cast<String>()
            : const {},
        received: mapValueOfType<int>(json, r'received'),
        sent: mapValueOfType<int>(json, r'sent'),
        metas: mapCastOfType<String, String>(json, r'metas')!,
        readStatus: mapValueOfType<Map<String, MessageReadStatusDto>>(json, r'readStatus')!,
        transportGuid: mapValueOfType<String>(json, r'transportGuid'),
        remark: mapValueOfType<String>(json, r'remark'),
        conversationGuid: mapValueOfType<String>(json, r'conversationGuid'),
        subject: mapValueOfType<String>(json, r'subject'),
        invoiceIds: json[r'invoiceIds'] is Set
            ? (json[r'invoiceIds'] as Set).cast<String>()
            : const {},
        parentId: mapValueOfType<String>(json, r'parentId'),
        externalRef: mapValueOfType<String>(json, r'externalRef'),
        unassignedResults: json[r'unassignedResults'] is Set
            ? (json[r'unassignedResults'] as Set).cast<String>()
            : const {},
        assignedResults: mapCastOfType<String, String>(json, r'assignedResults')!,
        senderReferences: mapCastOfType<String, String>(json, r'senderReferences')!,
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

  static List<MessageDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessageDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessageDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MessageDto> mapFromJson(dynamic json) {
    final map = <String, MessageDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MessageDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MessageDto-objects as value to a dart map
  static Map<String, List<MessageDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MessageDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MessageDto.listFromJson(entry.value, growable: growable,);
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
    'recipients',
    'toAddresses',
    'metas',
    'readStatus',
    'invoiceIds',
    'unassignedResults',
    'assignedResults',
    'senderReferences',
    'secretForeignKeys',
    'cryptedForeignKeys',
    'delegations',
    'encryptionKeys',
  };
}

