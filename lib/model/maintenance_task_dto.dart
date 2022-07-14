//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MaintenanceTaskDto {
  /// Returns a new [MaintenanceTaskDto] instance.
  MaintenanceTaskDto({
    @required this.id,
    this.rev,
    this.identifier = const [],
    this.created,
    this.modified,
    this.author,
    this.responsible,
    this.medicalLocationId,
    this.tags = const {},
    this.codes = const {},
    this.endOfLife,
    this.deletionDate,
    this.taskType,
    this.properties = const {},
    @required this.status,
    this.secretForeignKeys = const {},
    this.cryptedForeignKeys = const {},
    this.delegations = const {},
    this.encryptionKeys = const {},
    this.encryptedSelf,
  });

  String id;

  String rev;

  List<IdentifierDto> identifier;

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

  String taskType;

  Set<PropertyStubDto> properties;

  MaintenanceTaskDtoStatusEnum status;

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
  bool operator ==(Object other) => identical(this, other) || other is MaintenanceTaskDto &&
     other.id == id &&
     other.rev == rev &&
     other.identifier == identifier &&
     other.created == created &&
     other.modified == modified &&
     other.author == author &&
     other.responsible == responsible &&
     other.medicalLocationId == medicalLocationId &&
     other.tags == tags &&
     other.codes == codes &&
     other.endOfLife == endOfLife &&
     other.deletionDate == deletionDate &&
     other.taskType == taskType &&
     other.properties == properties &&
     other.status == status &&
     other.secretForeignKeys == secretForeignKeys &&
     other.cryptedForeignKeys == cryptedForeignKeys &&
     other.delegations == delegations &&
     other.encryptionKeys == encryptionKeys &&
     other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (rev == null ? 0 : rev.hashCode) +
    (identifier == null ? 0 : identifier.hashCode) +
    (created == null ? 0 : created.hashCode) +
    (modified == null ? 0 : modified.hashCode) +
    (author == null ? 0 : author.hashCode) +
    (responsible == null ? 0 : responsible.hashCode) +
    (medicalLocationId == null ? 0 : medicalLocationId.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (codes == null ? 0 : codes.hashCode) +
    (endOfLife == null ? 0 : endOfLife.hashCode) +
    (deletionDate == null ? 0 : deletionDate.hashCode) +
    (taskType == null ? 0 : taskType.hashCode) +
    (properties == null ? 0 : properties.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (secretForeignKeys == null ? 0 : secretForeignKeys.hashCode) +
    (cryptedForeignKeys == null ? 0 : cryptedForeignKeys.hashCode) +
    (delegations == null ? 0 : delegations.hashCode) +
    (encryptionKeys == null ? 0 : encryptionKeys.hashCode) +
    (encryptedSelf == null ? 0 : encryptedSelf.hashCode);

  @override
  String toString() => 'MaintenanceTaskDto[id=$id, rev=$rev, identifier=$identifier, created=$created, modified=$modified, author=$author, responsible=$responsible, medicalLocationId=$medicalLocationId, tags=$tags, codes=$codes, endOfLife=$endOfLife, deletionDate=$deletionDate, taskType=$taskType, properties=$properties, status=$status, secretForeignKeys=$secretForeignKeys, cryptedForeignKeys=$cryptedForeignKeys, delegations=$delegations, encryptionKeys=$encryptionKeys, encryptedSelf=$encryptedSelf]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (rev != null) {
      json[r'rev'] = rev;
    }
      json[r'identifier'] = identifier;
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
    if (taskType != null) {
      json[r'taskType'] = taskType;
    }
      json[r'properties'] = properties;
      json[r'status'] = status;
      json[r'secretForeignKeys'] = secretForeignKeys;
      json[r'cryptedForeignKeys'] = cryptedForeignKeys;
      json[r'delegations'] = delegations;
      json[r'encryptionKeys'] = encryptionKeys;
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [MaintenanceTaskDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MaintenanceTaskDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : MaintenanceTaskDto(
        id: json[r'id'],
        rev: json[r'rev'],
        identifier: IdentifierDto.listFromJson(json[r'identifier']),
        created: json[r'created'],
        modified: json[r'modified'],
        author: json[r'author'],
        responsible: json[r'responsible'],
        medicalLocationId: json[r'medicalLocationId'],
        tags: CodeStubDto.listFromJson(json[r'tags']),
        codes: CodeStubDto.listFromJson(json[r'codes']),
        endOfLife: json[r'endOfLife'],
        deletionDate: json[r'deletionDate'],
        taskType: json[r'taskType'],
        properties: PropertyStubDto.listFromJson(json[r'properties']),
        status: MaintenanceTaskDtoStatusEnum.fromJson(json[r'status']),
        secretForeignKeys: json[r'secretForeignKeys'] == null
          ? null
          : (json[r'secretForeignKeys'] as Set).cast<String>(),
        cryptedForeignKeys: json[r'cryptedForeignKeys'] == null
          ? null
          : DelegationDto.mapListFromJson(json[r'cryptedForeignKeys']),
        delegations: json[r'delegations'] == null
          ? null
          : DelegationDto.mapListFromJson(json[r'delegations']),
        encryptionKeys: json[r'encryptionKeys'] == null
          ? null
          : DelegationDto.mapListFromJson(json[r'encryptionKeys']),
        encryptedSelf: json[r'encryptedSelf'],
    );

  static List<MaintenanceTaskDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <MaintenanceTaskDto>[]
      : json.map((dynamic value) => MaintenanceTaskDto.fromJson(value)).toList(growable: true == growable);

  static Map<String, MaintenanceTaskDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, MaintenanceTaskDto>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = MaintenanceTaskDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MaintenanceTaskDto-objects as value to a dart map
  static Map<String, List<MaintenanceTaskDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MaintenanceTaskDto>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = MaintenanceTaskDto.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}


class MaintenanceTaskDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const MaintenanceTaskDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pending = MaintenanceTaskDtoStatusEnum._(r'pending');
  static const ongoing = MaintenanceTaskDtoStatusEnum._(r'ongoing');
  static const cancelled = MaintenanceTaskDtoStatusEnum._(r'cancelled');
  static const completed = MaintenanceTaskDtoStatusEnum._(r'completed');

  /// List of all possible values in this [enum][MaintenanceTaskDtoStatusEnum].
  static const values = <MaintenanceTaskDtoStatusEnum>[
    pending,
    ongoing,
    cancelled,
    completed,
  ];

  static MaintenanceTaskDtoStatusEnum fromJson(dynamic value) =>
    MaintenanceTaskDtoStatusEnumTypeTransformer().decode(value);

  static List<MaintenanceTaskDtoStatusEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <MaintenanceTaskDtoStatusEnum>[]
      : json
          .map((value) => MaintenanceTaskDtoStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [MaintenanceTaskDtoStatusEnum] to String,
/// and [decode] dynamic data back to [MaintenanceTaskDtoStatusEnum].
class MaintenanceTaskDtoStatusEnumTypeTransformer {
  const MaintenanceTaskDtoStatusEnumTypeTransformer._();

  factory MaintenanceTaskDtoStatusEnumTypeTransformer() => _instance ??= MaintenanceTaskDtoStatusEnumTypeTransformer._();

  String encode(MaintenanceTaskDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MaintenanceTaskDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MaintenanceTaskDtoStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'pending': return MaintenanceTaskDtoStatusEnum.pending;
      case r'ongoing': return MaintenanceTaskDtoStatusEnum.ongoing;
      case r'cancelled': return MaintenanceTaskDtoStatusEnum.cancelled;
      case r'completed': return MaintenanceTaskDtoStatusEnum.completed;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [MaintenanceTaskDtoStatusEnumTypeTransformer] instance.
  static MaintenanceTaskDtoStatusEnumTypeTransformer _instance;
}

