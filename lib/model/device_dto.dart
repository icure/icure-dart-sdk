//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class DeviceDto {
  /// Returns a new [DeviceDto] instance.
  DeviceDto({
    required this.id,
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
    this.aesExchangeKeys = const {},
    this.transferKeys = const {},
    this.lostHcPartyKeys = const {},
    this.privateKeyShamirPartitions = const {},
    this.publicKey,
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deletionDate;

  List<IdentifierDto> identifiers;

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

  /// The id of the medical location where this entity was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? medicalLocationId;

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
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? brand;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serialNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentId;

  List<String> picture;

  Set<PropertyStubDto> properties;

  /// For each couple of HcParties (delegator and delegate), this map contains the exchange AES key. The delegator is always this hcp, the key of the map is the id of the delegate. The AES exchange key is encrypted using RSA twice : once using this hcp public key (index 0 in the Array) and once using the other hcp public key (index 1 in the Array). For a pair of HcParties. Each HcParty always has one AES exchange key for himself.
  Map<String, List<String>> hcPartyKeys;

  /// Extra AES exchange keys, usually the ones we lost access to at some point
  /// The structure is { publicKey: { delegateId: [aesExKey_for_this, aesExKey_for_delegate] } }
  Map<String, Map<String, List<String>>> aesExchangeKeys;

  /// Data owner private keys encrypted with its other public keys.
  /// This mechanism will help the data owner to re-encrypt all information with its new key, if he found back the lost one.
  /// The structure is { publicKey1: { publicKey2: privateKey2_encrypted_with_publicKey1, publicKey3: privateKey3_encrypted_with_publicKey1 } }
  Map<String, Map<String, String>> transferKeys;

  /// The hcparty keys (first of the pair) for which we are asking a re-encryption by the delegate using our new publicKey
  /// Using the lostHcPartyKey, you can find the corresponding hcPartyKey pair to re-encrypt
  Set<String> lostHcPartyKeys;

  /// The privateKeyShamirPartitions are used to share this hcp's private RSA key with a series of other hcParties using Shamir's algorithm. The key of the map is the hcp Id with whom this partition has been shared. The value is \"threshold⎮partition in hex\" encrypted using the the partition's holder's public RSA key
  Map<String, String> privateKeyShamirPartitions;

  /// The public key of this hcp
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publicKey;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeviceDto &&
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
          other.aesExchangeKeys == aesExchangeKeys &&
          other.transferKeys == transferKeys &&
          other.lostHcPartyKeys == lostHcPartyKeys &&
          other.privateKeyShamirPartitions == privateKeyShamirPartitions &&
          other.publicKey == publicKey;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (rev == null ? 0 : rev!.hashCode) +
      (deletionDate == null ? 0 : deletionDate!.hashCode) +
      (identifiers.hashCode) +
      (created == null ? 0 : created!.hashCode) +
      (modified == null ? 0 : modified!.hashCode) +
      (author == null ? 0 : author!.hashCode) +
      (responsible == null ? 0 : responsible!.hashCode) +
      (tags.hashCode) +
      (codes.hashCode) +
      (endOfLife == null ? 0 : endOfLife!.hashCode) +
      (medicalLocationId == null ? 0 : medicalLocationId!.hashCode) +
      (externalId == null ? 0 : externalId!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (brand == null ? 0 : brand!.hashCode) +
      (model == null ? 0 : model!.hashCode) +
      (serialNumber == null ? 0 : serialNumber!.hashCode) +
      (parentId == null ? 0 : parentId!.hashCode) +
      (picture.hashCode) +
      (properties.hashCode) +
      (hcPartyKeys.hashCode) +
      (aesExchangeKeys.hashCode) +
      (transferKeys.hashCode) +
      (lostHcPartyKeys.hashCode) +
      (privateKeyShamirPartitions.hashCode) +
      (publicKey == null ? 0 : publicKey!.hashCode);

  @override
  String toString() =>
      'DeviceDto[id=$id, rev=$rev, deletionDate=$deletionDate, identifiers=$identifiers, created=$created, modified=$modified, author=$author, responsible=$responsible, tags=$tags, codes=$codes, endOfLife=$endOfLife, medicalLocationId=$medicalLocationId, externalId=$externalId, name=$name, type=$type, brand=$brand, model=$model, serialNumber=$serialNumber, parentId=$parentId, picture=$picture, properties=$properties, hcPartyKeys=$hcPartyKeys, aesExchangeKeys=$aesExchangeKeys, transferKeys=$transferKeys, lostHcPartyKeys=$lostHcPartyKeys, privateKeyShamirPartitions=$privateKeyShamirPartitions, publicKey=$publicKey]';

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
    json[r'tags'] = tags.toList();
    json[r'codes'] = codes.toList();
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
    json[r'picture'] = picture;
    json[r'properties'] = properties.toList();
    json[r'hcPartyKeys'] = hcPartyKeys;
    json[r'aesExchangeKeys'] = aesExchangeKeys;
    json[r'transferKeys'] = transferKeys;
    json[r'lostHcPartyKeys'] = lostHcPartyKeys.toList();
    json[r'privateKeyShamirPartitions'] = privateKeyShamirPartitions;
    if (publicKey != null) {
      json[r'publicKey'] = publicKey;
    }
    return json;
  }

  /// Returns a new [DeviceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeviceDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeviceDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeviceDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeviceDto(
        id: mapValueOfType<String>(json, r'id')!,
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        identifiers: IdentifierDto.listFromJson(json[r'identifiers'])!,
        created: mapValueOfType<int>(json, r'created'),
        modified: mapValueOfType<int>(json, r'modified'),
        author: mapValueOfType<String>(json, r'author'),
        responsible: mapValueOfType<String>(json, r'responsible'),
        tags: CodeStubDto.listFromJson(json[r'tags'])!.toSet(),
        codes: CodeStubDto.listFromJson(json[r'codes'])!.toSet(),
        endOfLife: mapValueOfType<int>(json, r'endOfLife'),
        medicalLocationId: mapValueOfType<String>(json, r'medicalLocationId'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        name: mapValueOfType<String>(json, r'name'),
        type: mapValueOfType<String>(json, r'type'),
        brand: mapValueOfType<String>(json, r'brand'),
        model: mapValueOfType<String>(json, r'model'),
        serialNumber: mapValueOfType<String>(json, r'serialNumber'),
        parentId: mapValueOfType<String>(json, r'parentId'),
        picture: json[r'picture'] is List ? (json[r'picture'] as List).cast<String>() : const [],
        properties: PropertyStubDto.listFromJson(json[r'properties'])!.toSet(),
        hcPartyKeys: json[r'hcPartyKeys'] == null ? const {} : mapWithListOfStringsFromJson(json[r'hcPartyKeys']),
        aesExchangeKeys: json[r'aesExchangeKeys'] == null ? const {} : mapOf(json[r'aesExchangeKeys'], (el) => mapWithListOfStringsFromJson(el)),
        transferKeys: json[r'transferKeys'] == null ? const {} : mapWithMapOfStringsFromJson(json[r'transferKeys']),
        lostHcPartyKeys: json[r'lostHcPartyKeys'] is Set
            ? (json[r'lostHcPartyKeys'] as Set).cast<String>()
            : json[r'lostHcPartyKeys'] is List
            ? ((json[r'lostHcPartyKeys'] as List).toSet()).cast<String>()
            : const {},
        privateKeyShamirPartitions: mapCastOfType<String, String>(json, r'privateKeyShamirPartitions')!,
        publicKey: mapValueOfType<String>(json, r'publicKey'),
      );
    }
    return null;
  }

  static List<DeviceDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DeviceDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeviceDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeviceDto> mapFromJson(dynamic json) {
    final map = <String, DeviceDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeviceDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeviceDto-objects as value to a dart map
  static Map<String, List<DeviceDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DeviceDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeviceDto.listFromJson(
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
    'identifiers',
    'tags',
    'codes',
    'properties',
    'hcPartyKeys',
    'aesExchangeKeys',
    'transferKeys',
    'lostHcPartyKeys',
    'privateKeyShamirPartitions',
  };
}
