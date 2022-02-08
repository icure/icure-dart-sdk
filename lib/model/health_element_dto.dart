//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HealthElementDto {
  /// Returns a new [HealthElementDto] instance.
  HealthElementDto({
    @required this.id,
    this.identifiers = const [],
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
    this.healthElementId,
    this.valueDate,
    this.openingDate,
    this.closingDate,
    this.descr,
    this.note,
    @required this.relevant,
    this.idOpeningContact,
    this.idClosingContact,
    this.idService,
    @required this.status,
    this.laterality,
    this.plansOfAction = const [],
    this.episodes = const [],
    this.careTeam = const [],
    this.secretForeignKeys = const {},
    this.cryptedForeignKeys = const {},
    this.delegations = const {},
    this.encryptionKeys = const {},
    this.encryptedSelf,
  });

  /// The Id of the healthcare element. We encourage using either a v4 UUID or a HL7 Id.
  String id;

  List<IdentifierDto> identifiers;

  /// The revision of the patient in the database, used for conflict management / optimistic locking.
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

  /// The logical id of the healthcare element, used to link together different versions of the same healthcare element. We encourage using either a v4 UUID or a HL7 Id.
  String healthElementId;

  /// The date (unix epoch in ms) when the healthcare element is noted to have started and also closes on the same date
  int valueDate;

  /// The date (unix epoch in ms) of the start of the healthcare element.
  int openingDate;

  /// The date (unix epoch in ms) marking the end of the healthcare element.
  int closingDate;

  /// Description of the healthcare element.
  String descr;

  /// A text note (can be confidential, encrypted by default).
  String note;

  /// If the healthcare element is relevant or not (Set relevant by default).
  bool relevant;

  /// Id of the opening contact when the healthcare element was created.
  String idOpeningContact;

  /// Id of the closing contact for the healthcare element.
  String idClosingContact;

  /// Id of the service when a service is used to create a healthcare element.
  String idService;

  /// bit 0: active/inactive, bit 1: relevant/irrelevant, bit 2 : present/absent, ex: 0 = active,relevant and present
  int status;

  /// Left or Right dominance/preference.
  HealthElementDtoLateralityEnum laterality;

  /// List of healthcare approaches.
  List<PlanOfActionDto> plansOfAction;

  /// List of episodes of occurrences of the healthcare element.
  List<EpisodeDto> episodes;

  /// List of care team members assigned for the healthcare element.
  List<CareTeamMemberDto> careTeam;

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
  bool operator ==(Object other) => identical(this, other) || other is HealthElementDto &&
     other.id == id &&
     other.identifiers == identifiers &&
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
     other.healthElementId == healthElementId &&
     other.valueDate == valueDate &&
     other.openingDate == openingDate &&
     other.closingDate == closingDate &&
     other.descr == descr &&
     other.note == note &&
     other.relevant == relevant &&
     other.idOpeningContact == idOpeningContact &&
     other.idClosingContact == idClosingContact &&
     other.idService == idService &&
     other.status == status &&
     other.laterality == laterality &&
     other.plansOfAction == plansOfAction &&
     other.episodes == episodes &&
     other.careTeam == careTeam &&
     other.secretForeignKeys == secretForeignKeys &&
     other.cryptedForeignKeys == cryptedForeignKeys &&
     other.delegations == delegations &&
     other.encryptionKeys == encryptionKeys &&
     other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (identifiers == null ? 0 : identifiers.hashCode) +
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
    (healthElementId == null ? 0 : healthElementId.hashCode) +
    (valueDate == null ? 0 : valueDate.hashCode) +
    (openingDate == null ? 0 : openingDate.hashCode) +
    (closingDate == null ? 0 : closingDate.hashCode) +
    (descr == null ? 0 : descr.hashCode) +
    (note == null ? 0 : note.hashCode) +
    (relevant == null ? 0 : relevant.hashCode) +
    (idOpeningContact == null ? 0 : idOpeningContact.hashCode) +
    (idClosingContact == null ? 0 : idClosingContact.hashCode) +
    (idService == null ? 0 : idService.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (laterality == null ? 0 : laterality.hashCode) +
    (plansOfAction == null ? 0 : plansOfAction.hashCode) +
    (episodes == null ? 0 : episodes.hashCode) +
    (careTeam == null ? 0 : careTeam.hashCode) +
    (secretForeignKeys == null ? 0 : secretForeignKeys.hashCode) +
    (cryptedForeignKeys == null ? 0 : cryptedForeignKeys.hashCode) +
    (delegations == null ? 0 : delegations.hashCode) +
    (encryptionKeys == null ? 0 : encryptionKeys.hashCode) +
    (encryptedSelf == null ? 0 : encryptedSelf.hashCode);

  @override
  String toString() => 'HealthElementDto[id=$id, identifiers=$identifiers, rev=$rev, created=$created, modified=$modified, author=$author, responsible=$responsible, medicalLocationId=$medicalLocationId, tags=$tags, codes=$codes, endOfLife=$endOfLife, deletionDate=$deletionDate, healthElementId=$healthElementId, valueDate=$valueDate, openingDate=$openingDate, closingDate=$closingDate, descr=$descr, note=$note, relevant=$relevant, idOpeningContact=$idOpeningContact, idClosingContact=$idClosingContact, idService=$idService, status=$status, laterality=$laterality, plansOfAction=$plansOfAction, episodes=$episodes, careTeam=$careTeam, secretForeignKeys=$secretForeignKeys, cryptedForeignKeys=$cryptedForeignKeys, delegations=$delegations, encryptionKeys=$encryptionKeys, encryptedSelf=$encryptedSelf]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'identifiers'] = identifiers;
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
    if (healthElementId != null) {
      json[r'healthElementId'] = healthElementId;
    }
    if (valueDate != null) {
      json[r'valueDate'] = valueDate;
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
    if (note != null) {
      json[r'note'] = note;
    }
      json[r'relevant'] = relevant;
    if (idOpeningContact != null) {
      json[r'idOpeningContact'] = idOpeningContact;
    }
    if (idClosingContact != null) {
      json[r'idClosingContact'] = idClosingContact;
    }
    if (idService != null) {
      json[r'idService'] = idService;
    }
      json[r'status'] = status;
    if (laterality != null) {
      json[r'laterality'] = laterality;
    }
      json[r'plansOfAction'] = plansOfAction;
      json[r'episodes'] = episodes;
      json[r'careTeam'] = careTeam;
      json[r'secretForeignKeys'] = secretForeignKeys;
      json[r'cryptedForeignKeys'] = cryptedForeignKeys;
      json[r'delegations'] = delegations;
      json[r'encryptionKeys'] = encryptionKeys;
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [HealthElementDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HealthElementDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return HealthElementDto(
        id: mapValueOfType<String>(json, r'id'),
        identifiers: IdentifierDto.listFromJson(json[r'identifiers']),
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
        healthElementId: mapValueOfType<String>(json, r'healthElementId'),
        valueDate: mapValueOfType<int>(json, r'valueDate'),
        openingDate: mapValueOfType<int>(json, r'openingDate'),
        closingDate: mapValueOfType<int>(json, r'closingDate'),
        descr: mapValueOfType<String>(json, r'descr'),
        note: mapValueOfType<String>(json, r'note'),
        relevant: mapValueOfType<bool>(json, r'relevant'),
        idOpeningContact: mapValueOfType<String>(json, r'idOpeningContact'),
        idClosingContact: mapValueOfType<String>(json, r'idClosingContact'),
        idService: mapValueOfType<String>(json, r'idService'),
        status: mapValueOfType<int>(json, r'status'),
        laterality: HealthElementDtoLateralityEnum.fromJson(json[r'laterality']),
        plansOfAction: PlanOfActionDto.listFromJson(json[r'plansOfAction']),
        episodes: EpisodeDto.listFromJson(json[r'episodes']),
        careTeam: CareTeamMemberDto.listFromJson(json[r'careTeam']),
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

  static List<HealthElementDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(HealthElementDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <HealthElementDto>[];

  static Map<String, HealthElementDto> mapFromJson(dynamic json) {
    final map = <String, HealthElementDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = HealthElementDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of HealthElementDto-objects as value to a dart map
  static Map<String, List<HealthElementDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<HealthElementDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = HealthElementDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

/// Left or Right dominance/preference.
class HealthElementDtoLateralityEnum {
  /// Instantiate a new enum with the provided [value].
  const HealthElementDtoLateralityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const left = HealthElementDtoLateralityEnum._(r'left');
  static const right = HealthElementDtoLateralityEnum._(r'right');

  /// List of all possible values in this [enum][HealthElementDtoLateralityEnum].
  static const values = <HealthElementDtoLateralityEnum>[
    left,
    right,
  ];

  static HealthElementDtoLateralityEnum fromJson(dynamic value) =>
    HealthElementDtoLateralityEnumTypeTransformer().decode(value);

  static List<HealthElementDtoLateralityEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(HealthElementDtoLateralityEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <HealthElementDtoLateralityEnum>[];
}

/// Transformation class that can [encode] an instance of [HealthElementDtoLateralityEnum] to String,
/// and [decode] dynamic data back to [HealthElementDtoLateralityEnum].
class HealthElementDtoLateralityEnumTypeTransformer {
  factory HealthElementDtoLateralityEnumTypeTransformer() => _instance ??= const HealthElementDtoLateralityEnumTypeTransformer._();

  const HealthElementDtoLateralityEnumTypeTransformer._();

  String encode(HealthElementDtoLateralityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HealthElementDtoLateralityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HealthElementDtoLateralityEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'left': return HealthElementDtoLateralityEnum.left;
        case r'right': return HealthElementDtoLateralityEnum.right;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HealthElementDtoLateralityEnumTypeTransformer] instance.
  static HealthElementDtoLateralityEnumTypeTransformer _instance;
}


