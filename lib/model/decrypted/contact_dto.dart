//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DecryptedContactDto {
  /// Returns a new [DecryptedContactDto] instance.
  DecryptedContactDto({
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
    this.groupId,
    this.openingDate,
    this.closingDate,
    this.descr,
    this.location,
    this.externalId,
    this.encounterType,
    this.subContacts = const {},
    this.services = const {},
    this.healthcarePartyId,
    this.modifiedContactId,
    this.secretForeignKeys = const {},
    this.cryptedForeignKeys = const {},
    this.delegations = const {},
    this.encryptionKeys = const {},
    this.encryptedSelf,
  });

  /// the Id of the contact. We encourage using either a v4 UUID or a HL7 Id.
  String id;

  /// the revision of the contact in the database, used for conflict management / optimistic locking.
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

  /// Separate contacts can merged in one logical contact if they share the same groupId. When a contact must be split to selectively assign rights to healthcare parties, the split contacts all share the same groupId
  String groupId;

  /// The date (YYYYMMDDhhmmss) of the start of the contact.
  int openingDate;

  /// The date (YYYYMMDDhhmmss) marking the end of the contact.
  int closingDate;

  /// Description of the contact
  String descr;

  /// Location where the contact was recorded.
  String location;

  /// An external (from another source) id with no guarantee or requirement for unicity.
  String externalId;

  CodeStubDto encounterType;

  /// Set of all sub-contacts recorded during the given contact. Sub-contacts are used to link services embedded inside this contact to healthcare elements, healthcare approaches and/or forms.
  Set<SubContactDto> subContacts;

  /// Set of all services provided to the patient during the contact.
  Set<ServiceDto> services;

  String healthcarePartyId;

  String modifiedContactId;

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
  bool operator ==(Object other) => identical(this, other) || other is DecryptedContactDto &&
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
     other.groupId == groupId &&
     other.openingDate == openingDate &&
     other.closingDate == closingDate &&
     other.descr == descr &&
     other.location == location &&
     other.externalId == externalId &&
     other.encounterType == encounterType &&
     other.subContacts == subContacts &&
     other.services == services &&
     other.healthcarePartyId == healthcarePartyId &&
     other.modifiedContactId == modifiedContactId &&
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
    (groupId == null ? 0 : groupId.hashCode) +
    (openingDate == null ? 0 : openingDate.hashCode) +
    (closingDate == null ? 0 : closingDate.hashCode) +
    (descr == null ? 0 : descr.hashCode) +
    (location == null ? 0 : location.hashCode) +
    (externalId == null ? 0 : externalId.hashCode) +
    (encounterType == null ? 0 : encounterType.hashCode) +
    (subContacts == null ? 0 : subContacts.hashCode) +
    (services == null ? 0 : services.hashCode) +
    (healthcarePartyId == null ? 0 : healthcarePartyId.hashCode) +
    (modifiedContactId == null ? 0 : modifiedContactId.hashCode) +
    (secretForeignKeys == null ? 0 : secretForeignKeys.hashCode) +
    (cryptedForeignKeys == null ? 0 : cryptedForeignKeys.hashCode) +
    (delegations == null ? 0 : delegations.hashCode) +
    (encryptionKeys == null ? 0 : encryptionKeys.hashCode) +
    (encryptedSelf == null ? 0 : encryptedSelf.hashCode);

  @override
  String toString() => 'DecryptedContactDto[id=$id, rev=$rev, created=$created, modified=$modified, author=$author, responsible=$responsible, medicalLocationId=$medicalLocationId, tags=$tags, codes=$codes, endOfLife=$endOfLife, deletionDate=$deletionDate, groupId=$groupId, openingDate=$openingDate, closingDate=$closingDate, descr=$descr, location=$location, externalId=$externalId, encounterType=$encounterType, subContacts=$subContacts, services=$services, healthcarePartyId=$healthcarePartyId, modifiedContactId=$modifiedContactId, secretForeignKeys=$secretForeignKeys, cryptedForeignKeys=$cryptedForeignKeys, delegations=$delegations, encryptionKeys=$encryptionKeys, encryptedSelf=$encryptedSelf]';

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
    if (groupId != null) {
      json[r'groupId'] = groupId;
    }
    if (openingDate != null) {
      json[r'openingDate'] = openingDate;
    }
    if (closingDate != null) {
      json[r'closingDate'] = closingDate;
    }
    if (descr != null) {
      json[r'descr'] = descr;
    }
    if (location != null) {
      json[r'location'] = location;
    }
    if (externalId != null) {
      json[r'externalId'] = externalId;
    }
    if (encounterType != null) {
      json[r'encounterType'] = encounterType;
    }
      json[r'subContacts'] = subContacts;
      json[r'services'] = services;
    if (healthcarePartyId != null) {
      json[r'healthcarePartyId'] = healthcarePartyId;
    }
    if (modifiedContactId != null) {
      json[r'modifiedContactId'] = modifiedContactId;
    }
      json[r'secretForeignKeys'] = secretForeignKeys;
      json[r'cryptedForeignKeys'] = cryptedForeignKeys;
      json[r'delegations'] = delegations;
      json[r'encryptionKeys'] = encryptionKeys;
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [DecryptedContactDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DecryptedContactDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return DecryptedContactDto(
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
        groupId: mapValueOfType<String>(json, r'groupId'),
        openingDate: mapValueOfType<int>(json, r'openingDate'),
        closingDate: mapValueOfType<int>(json, r'closingDate'),
        descr: mapValueOfType<String>(json, r'descr'),
        location: mapValueOfType<String>(json, r'location'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        encounterType: CodeStubDto.fromJson(json[r'encounterType']),
        subContacts: SubContactDto.listFromJson(json[r'subContacts']).toSet(),
        services: ServiceDto.listFromJson(json[r'services']).toSet(),
        healthcarePartyId: mapValueOfType<String>(json, r'healthcarePartyId'),
        modifiedContactId: mapValueOfType<String>(json, r'modifiedContactId'),
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

  static List<DecryptedContactDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DecryptedContactDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DecryptedContactDto>[];

  static Map<String, DecryptedContactDto> mapFromJson(dynamic json) {
    final map = <String, DecryptedContactDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = DecryptedContactDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DecryptedContactDto-objects as value to a dart map
  static Map<String, List<DecryptedContactDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DecryptedContactDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = DecryptedContactDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

