//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class DecryptedContactDto {
  /// Returns a new [DecryptedContactDto] instance.
  DecryptedContactDto({
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

  /// Separate contacts can merged in one logical contact if they share the same groupId. When a contact must be split to selectively assign rights to healthcare parties, the split contacts all share the same groupId
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? groupId;

  /// The date (YYYYMMDDhhmmss) of the start of the contact.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? openingDate;

  /// The date (YYYYMMDDhhmmss) marking the end of the contact.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? closingDate;

  /// Description of the contact
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? descr;

  /// Location where the contact was recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? location;

  /// An external (from another source) id with no guarantee or requirement for unicity.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CodeStubDto? encounterType;

  /// Set of all sub-contacts recorded during the given contact. Sub-contacts are used to link services embedded inside this contact to healthcare elements, healthcare approaches and/or forms.
  Set<SubContactDto> subContacts;

  /// Set of all services provided to the patient during the contact.
  Set<DecryptedServiceDto> services;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? healthcarePartyId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? modifiedContactId;

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
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DecryptedContactDto &&
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
      (groupId == null ? 0 : groupId!.hashCode) +
      (openingDate == null ? 0 : openingDate!.hashCode) +
      (closingDate == null ? 0 : closingDate!.hashCode) +
      (descr == null ? 0 : descr!.hashCode) +
      (location == null ? 0 : location!.hashCode) +
      (externalId == null ? 0 : externalId!.hashCode) +
      (encounterType == null ? 0 : encounterType!.hashCode) +
      (subContacts.hashCode) +
      (services.hashCode) +
      (healthcarePartyId == null ? 0 : healthcarePartyId!.hashCode) +
      (modifiedContactId == null ? 0 : modifiedContactId!.hashCode) +
      (secretForeignKeys.hashCode) +
      (cryptedForeignKeys.hashCode) +
      (delegations.hashCode) +
      (encryptionKeys.hashCode) +
      (encryptedSelf == null ? 0 : encryptedSelf!.hashCode);

  @override
  String toString() =>
      'DecryptedContactDto[id=$id, rev=$rev, created=$created, modified=$modified, author=$author, responsible=$responsible, medicalLocationId=$medicalLocationId, tags=$tags, codes=$codes, endOfLife=$endOfLife, deletionDate=$deletionDate, groupId=$groupId, openingDate=$openingDate, closingDate=$closingDate, descr=$descr, location=$location, externalId=$externalId, encounterType=$encounterType, subContacts=$subContacts, services=$services, healthcarePartyId=$healthcarePartyId, modifiedContactId=$modifiedContactId, secretForeignKeys=$secretForeignKeys, cryptedForeignKeys=$cryptedForeignKeys, delegations=$delegations, encryptionKeys=$encryptionKeys, encryptedSelf=$encryptedSelf]';

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
    json[r'tags'] = tags.toList();

    json[r'codes'] = codes.toList();

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
    json[r'subContacts'] = subContacts.toList();
    json[r'services'] = services.toList();
    if (healthcarePartyId != null) {
      json[r'healthcarePartyId'] = healthcarePartyId;
    }
    if (modifiedContactId != null) {
      json[r'modifiedContactId'] = modifiedContactId;
    }
    json[r'secretForeignKeys'] = secretForeignKeys.toList();
    json[r'cryptedForeignKeys'] = cryptedForeignKeys.map((k, v) => MapEntry(k, v.toList()));
    json[r'delegations'] = delegations.map((k, v) => MapEntry(k, v.toList()));
    json[r'encryptionKeys'] = encryptionKeys.map((k, v) => MapEntry(k, v.toList()));
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [DecryptedContactDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DecryptedContactDto? fromJson(dynamic value) {
    if (value is DecryptedContactDto) {
      return value;
    }
    if (value is Map) {
      final json = {
        "tags": {},
        "codes": {},
        "subContacts": {},
        "services": {},
        "secretForeignKeys": {},
        "cryptedForeignKeys": {},
        "delegations": {},
        "encryptionKeys": {},
        ...value.cast<String, dynamic>()
      };

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ContactDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ContactDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DecryptedContactDto(
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
        groupId: mapValueOfType<String>(json, r'groupId'),
        openingDate: mapValueOfType<int>(json, r'openingDate'),
        closingDate: mapValueOfType<int>(json, r'closingDate'),
        descr: mapValueOfType<String>(json, r'descr'),
        location: mapValueOfType<String>(json, r'location'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        encounterType: CodeStubDto.fromJson(json[r'encounterType']),
        subContacts: SubContactDto.listFromJson(json[r'subContacts'])!.toSet(),
        services: DecryptedServiceDto.listFromJson(json[r'services'])!.toSet(),
        healthcarePartyId: mapValueOfType<String>(json, r'healthcarePartyId'),
        modifiedContactId: mapValueOfType<String>(json, r'modifiedContactId'),
        secretForeignKeys: json[r'secretForeignKeys'] is Set
            ? (json[r'secretForeignKeys'] as Set).cast<String>()
            : json[r'secretForeignKeys'] is List
            ? ((json[r'secretForeignKeys'] as List).toSet()).cast<String>()
            : const {},
        cryptedForeignKeys: json[r'cryptedForeignKeys'] == null ? const {} : DelegationDto.mapListFromJson(json[r'cryptedForeignKeys']),
        delegations: json[r'delegations'] == null ? const {} : DelegationDto.mapListFromJson(json[r'delegations']),
        encryptionKeys: json[r'encryptionKeys'] == null ? const {} : DelegationDto.mapListFromJson(json[r'encryptionKeys']),
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<DecryptedContactDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DecryptedContactDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DecryptedContactDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DecryptedContactDto?> mapFromJson(dynamic json) {
    final map = <String, DecryptedContactDto?>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DecryptedContactDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DecryptedContactDto-objects as value to a dart map
  static Map<String, List<DecryptedContactDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DecryptedContactDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DecryptedContactDto.listFromJson(
          entry.value,
          growable: growable,
        );
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
    'subContacts',
    'services',
    'secretForeignKeys',
    'cryptedForeignKeys',
    'delegations',
    'encryptionKeys',
  };
}
