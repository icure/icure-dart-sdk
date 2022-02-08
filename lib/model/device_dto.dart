//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeviceDto {
  /// Returns a new [DeviceDto] instance.
  DeviceDto({
    @required this.id,
    this.rev,
    this.deletionDate,
    this.identifiers = const [],
    this.created,
    this.modified,
    this.author,
    this.responsible,
    this.tags = const {},
    this.codes = const {},
    this.endOfLife,
    this.medicalLocationId,
    this.externalId,
    this.name,
    this.type,
    this.brand,
    this.model,
    this.serialNumber,
    this.parentId,
    this.picture = const [],
    this.properties = const {},
    this.hcPartyKeys = const {},
    this.privateKeyShamirPartitions = const {},
    this.publicKey,
  });

  String id;

  String rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  int deletionDate;

  List<IdentifierDto> identifiers;

  /// The timestamp (unix epoch in ms) of creation of this entity, will be filled automatically if missing. Not enforced by the application server.
  int created;

  /// The date (unix epoch in ms) of the latest modification of this entity, will be filled automatically if missing. Not enforced by the application server.
  int modified;

  /// The id of the User that has created this entity, will be filled automatically if missing. Not enforced by the application server.
  String author;

  /// The id of the HealthcareParty that is responsible for this entity, will be filled automatically if missing. Not enforced by the application server.
  String responsible;

  /// A tag is an item from a codification system that qualifies an entity as being member of a certain class, whatever the value it might have taken. If the tag qualifies the content of a field, it means that whatever the content of the field, the tag will always apply. For example, the label of a field is qualified using a tag. LOINC is a codification system typically used for tags.
  Set<CodeStubDto> tags;

  /// A code is an item from a codification system that qualifies the content of this entity. SNOMED-CT, ICPC-2 or ICD-10 codifications systems can be used for codes
  Set<CodeStubDto> codes;

  /// Soft delete (unix epoch in ms) timestamp of the object.
  int endOfLife;

  /// The id of the medical location where this entity was created.
  String medicalLocationId;

  String externalId;

  String name;

  String type;

  String brand;

  String model;

  String serialNumber;

  String parentId;

  List<String> picture;

  Set<PropertyStubDto> properties;

  /// For each couple of HcParties (delegator and delegate), this map contains the exchange AES key. The delegator is always this hcp, the key of the map is the id of the delegate. The AES exchange key is encrypted using RSA twice : once using this hcp public key (index 0 in the Array) and once using the other hcp public key (index 1 in the Array). For a pair of HcParties. Each HcParty always has one AES exchange key for himself.
  Map<String, List<String>> hcPartyKeys;

  /// The privateKeyShamirPartitions are used to share this hcp's private RSA key with a series of other hcParties using Shamir's algorithm. The key of the map is the hcp Id with whom this partition has been shared. The value is \"threshold⎮partition in hex\" encrypted using the the partition's holder's public RSA key
  Map<String, String> privateKeyShamirPartitions;

  /// The public key of this hcp
  String publicKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeviceDto &&
     other.id == id &&
     other.rev == rev &&
     other.deletionDate == deletionDate &&
     other.identifiers == identifiers &&
     other.created == created &&
     other.modified == modified &&
     other.author == author &&
     other.responsible == responsible &&
     other.tags == tags &&
     other.codes == codes &&
     other.endOfLife == endOfLife &&
     other.medicalLocationId == medicalLocationId &&
     other.externalId == externalId &&
     other.name == name &&
     other.type == type &&
     other.brand == brand &&
     other.model == model &&
     other.serialNumber == serialNumber &&
     other.parentId == parentId &&
     other.picture == picture &&
     other.properties == properties &&
     other.hcPartyKeys == hcPartyKeys &&
     other.privateKeyShamirPartitions == privateKeyShamirPartitions &&
     other.publicKey == publicKey;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (rev == null ? 0 : rev.hashCode) +
    (deletionDate == null ? 0 : deletionDate.hashCode) +
    (identifiers == null ? 0 : identifiers.hashCode) +
    (created == null ? 0 : created.hashCode) +
    (modified == null ? 0 : modified.hashCode) +
    (author == null ? 0 : author.hashCode) +
    (responsible == null ? 0 : responsible.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (codes == null ? 0 : codes.hashCode) +
    (endOfLife == null ? 0 : endOfLife.hashCode) +
    (medicalLocationId == null ? 0 : medicalLocationId.hashCode) +
    (externalId == null ? 0 : externalId.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (brand == null ? 0 : brand.hashCode) +
    (model == null ? 0 : model.hashCode) +
    (serialNumber == null ? 0 : serialNumber.hashCode) +
    (parentId == null ? 0 : parentId.hashCode) +
    (picture == null ? 0 : picture.hashCode) +
    (properties == null ? 0 : properties.hashCode) +
    (hcPartyKeys == null ? 0 : hcPartyKeys.hashCode) +
    (privateKeyShamirPartitions == null ? 0 : privateKeyShamirPartitions.hashCode) +
    (publicKey == null ? 0 : publicKey.hashCode);

  @override
  String toString() => 'DeviceDto[id=$id, rev=$rev, deletionDate=$deletionDate, identifiers=$identifiers, created=$created, modified=$modified, author=$author, responsible=$responsible, tags=$tags, codes=$codes, endOfLife=$endOfLife, medicalLocationId=$medicalLocationId, externalId=$externalId, name=$name, type=$type, brand=$brand, model=$model, serialNumber=$serialNumber, parentId=$parentId, picture=$picture, properties=$properties, hcPartyKeys=$hcPartyKeys, privateKeyShamirPartitions=$privateKeyShamirPartitions, publicKey=$publicKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (rev != null) {
      json[r'rev'] = rev;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
    }
      json[r'identifiers'] = identifiers;
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
      json[r'tags'] = tags;
      json[r'codes'] = codes;
    if (endOfLife != null) {
      json[r'endOfLife'] = endOfLife;
    }
    if (medicalLocationId != null) {
      json[r'medicalLocationId'] = medicalLocationId;
    }
    if (externalId != null) {
      json[r'externalId'] = externalId;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (brand != null) {
      json[r'brand'] = brand;
    }
    if (model != null) {
      json[r'model'] = model;
    }
    if (serialNumber != null) {
      json[r'serialNumber'] = serialNumber;
    }
    if (parentId != null) {
      json[r'parentId'] = parentId;
    }
    if (picture != null) {
      json[r'picture'] = picture;
    }
      json[r'properties'] = properties;
      json[r'hcPartyKeys'] = hcPartyKeys;
      json[r'privateKeyShamirPartitions'] = privateKeyShamirPartitions;
    if (publicKey != null) {
      json[r'publicKey'] = publicKey;
    }
    return json;
  }

  /// Returns a new [DeviceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeviceDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return DeviceDto(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        identifiers: IdentifierDto.listFromJson(json[r'identifiers']),
        created: mapValueOfType<int>(json, r'created'),
        modified: mapValueOfType<int>(json, r'modified'),
        author: mapValueOfType<String>(json, r'author'),
        responsible: mapValueOfType<String>(json, r'responsible'),
        tags: CodeStubDto.listFromJson(json[r'tags']),
        codes: CodeStubDto.listFromJson(json[r'codes']),
        endOfLife: mapValueOfType<int>(json, r'endOfLife'),
        medicalLocationId: mapValueOfType<String>(json, r'medicalLocationId'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        name: mapValueOfType<String>(json, r'name'),
        type: mapValueOfType<String>(json, r'type'),
        brand: mapValueOfType<String>(json, r'brand'),
        model: mapValueOfType<String>(json, r'model'),
        serialNumber: mapValueOfType<String>(json, r'serialNumber'),
        parentId: mapValueOfType<String>(json, r'parentId'),
        picture: json[r'picture'] is List
          ? (json[r'picture'] as List).cast<String>()
          : null,
        properties: PropertyStubDto.listFromJson(json[r'properties']),
        hcPartyKeys: json[r'hcPartyKeys'] == null
          ? null
          : mapCastOfType<String, List>(json, r'hcPartyKeys'),
        privateKeyShamirPartitions: mapCastOfType<String, String>(json, r'privateKeyShamirPartitions'),
        publicKey: mapValueOfType<String>(json, r'publicKey'),
      );
    }
    return null;
  }

  static List<DeviceDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DeviceDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DeviceDto>[];

  static Map<String, DeviceDto> mapFromJson(dynamic json) {
    final map = <String, DeviceDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = DeviceDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DeviceDto-objects as value to a dart map
  static Map<String, List<DeviceDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DeviceDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = DeviceDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

