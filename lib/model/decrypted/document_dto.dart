//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DecryptedDocumentDto {
  /// Returns a new [DecryptedDocumentDto] instance.
  DecryptedDocumentDto({
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
    this.objectStoreReference,
    this.documentLocation,
    this.documentType,
    this.documentStatus,
    this.externalUri,
    this.mainUti,
    this.name,
    this.version,
    this.otherUtis = const {},
    this.storedICureDocumentId,
    this.externalUuid,
    this.size,
    this.hash,
    this.openingContactId,
    this.attachmentId,
    this.encryptedAttachment,
    this.decryptedAttachment,
    this.secretForeignKeys = const {},
    this.cryptedForeignKeys = const {},
    this.delegations = const {},
    this.encryptionKeys = const {},
    this.encryptedSelf,
  });

  /// The Id of the document. We encourage using either a v4 UUID or a HL7 Id.
  String id;

  /// The revision of the document in the database, used for conflict management / optimistic locking.
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

  /// Reference in object store
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? objectStoreReference;

  /// Location of the document
  DecryptedDocumentDtoDocumentLocationEnum? documentLocation;

  /// The type of document, ex: admission, clinical path, document report,invoice, etc.
  DecryptedDocumentDtoDocumentTypeEnum? documentType;

  /// The status of the development of the document. Ex: Draft, finalized, reviewed, signed, etc.
  DecryptedDocumentDtoDocumentStatusEnum? documentStatus;

  /// When the document is stored in an external repository, this is the uri of the document in that repository
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalUri;

  /// The main Uniform Type Identifier of the document (https://developer.apple.com/library/archive/documentation/FileManagement/Conceptual/understanding_utis/understand_utis_conc/understand_utis_conc.html#//apple_ref/doc/uid/TP40001319-CH202-CHDHIJDE)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mainUti;

  /// Name of the document
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The document version
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  /// Extra Uniform Type Identifiers
  Set<String> otherUtis;

  /// The ICureDocument (Form, Contact, ...) that has been used to generate the document
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? storedICureDocumentId;

  /// A unique external id (from another external source).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalUuid;

  /// Size of the document file
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  /// Hashed version of the document
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hash;

  /// Id of the contact during which the document was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? openingContactId;

  /// Id of attachment to this document
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? attachmentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? encryptedAttachment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? decryptedAttachment;

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
      other is DecryptedDocumentDto &&
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
          other.objectStoreReference == objectStoreReference &&
          other.documentLocation == documentLocation &&
          other.documentType == documentType &&
          other.documentStatus == documentStatus &&
          other.externalUri == externalUri &&
          other.mainUti == mainUti &&
          other.name == name &&
          other.version == version &&
          other.otherUtis == otherUtis &&
          other.storedICureDocumentId == storedICureDocumentId &&
          other.externalUuid == externalUuid &&
          other.size == size &&
          other.hash == hash &&
          other.openingContactId == openingContactId &&
          other.attachmentId == attachmentId &&
          other.encryptedAttachment == encryptedAttachment &&
          other.decryptedAttachment == decryptedAttachment &&
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
      (objectStoreReference == null ? 0 : objectStoreReference!.hashCode) +
      (documentLocation == null ? 0 : documentLocation!.hashCode) +
      (documentType == null ? 0 : documentType!.hashCode) +
      (documentStatus == null ? 0 : documentStatus!.hashCode) +
      (externalUri == null ? 0 : externalUri!.hashCode) +
      (mainUti == null ? 0 : mainUti!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (version == null ? 0 : version!.hashCode) +
      (otherUtis.hashCode) +
      (storedICureDocumentId == null ? 0 : storedICureDocumentId!.hashCode) +
      (externalUuid == null ? 0 : externalUuid!.hashCode) +
      (size == null ? 0 : size!.hashCode) +
      (hash == null ? 0 : hash!.hashCode) +
      (openingContactId == null ? 0 : openingContactId!.hashCode) +
      (attachmentId == null ? 0 : attachmentId!.hashCode) +
      (encryptedAttachment == null ? 0 : encryptedAttachment!.hashCode) +
      (decryptedAttachment == null ? 0 : decryptedAttachment!.hashCode) +
      (secretForeignKeys.hashCode) +
      (cryptedForeignKeys.hashCode) +
      (delegations.hashCode) +
      (encryptionKeys.hashCode) +
      (encryptedSelf == null ? 0 : encryptedSelf!.hashCode);

  @override
  String toString() =>
      'DecryptedDocumentDto[id=$id, rev=$rev, created=$created, modified=$modified, author=$author, responsible=$responsible, medicalLocationId=$medicalLocationId, tags=$tags, codes=$codes, endOfLife=$endOfLife, deletionDate=$deletionDate, objectStoreReference=$objectStoreReference, documentLocation=$documentLocation, documentType=$documentType, documentStatus=$documentStatus, externalUri=$externalUri, mainUti=$mainUti, name=$name, version=$version, otherUtis=$otherUtis, storedICureDocumentId=$storedICureDocumentId, externalUuid=$externalUuid, size=$size, hash=$hash, openingContactId=$openingContactId, attachmentId=$attachmentId, encryptedAttachment=$encryptedAttachment, decryptedAttachment=$decryptedAttachment, secretForeignKeys=$secretForeignKeys, cryptedForeignKeys=$cryptedForeignKeys, delegations=$delegations, encryptionKeys=$encryptionKeys, encryptedSelf=$encryptedSelf]';

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
    if (objectStoreReference != null) {
      json[r'objectStoreReference'] = objectStoreReference;
    }
    if (documentLocation != null) {
      json[r'documentLocation'] = documentLocation;
    }
    if (documentType != null) {
      json[r'documentType'] = documentType;
    }
    if (documentStatus != null) {
      json[r'documentStatus'] = documentStatus;
    }
    if (externalUri != null) {
      json[r'externalUri'] = externalUri;
    }
    if (mainUti != null) {
      json[r'mainUti'] = mainUti;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (version != null) {
      json[r'version'] = version;
    }
    json[r'otherUtis'] = otherUtis;
    if (storedICureDocumentId != null) {
      json[r'storedICureDocumentId'] = storedICureDocumentId;
    }
    if (externalUuid != null) {
      json[r'externalUuid'] = externalUuid;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (hash != null) {
      json[r'hash'] = hash;
    }
    if (openingContactId != null) {
      json[r'openingContactId'] = openingContactId;
    }
    if (attachmentId != null) {
      json[r'attachmentId'] = attachmentId;
    }
    if (encryptedAttachment != null) {
      json[r'encryptedAttachment'] = encryptedAttachment;
    }
    if (decryptedAttachment != null) {
      json[r'decryptedAttachment'] = decryptedAttachment;
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

  /// Returns a new [DecryptedDocumentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DecryptedDocumentDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "DecryptedDocumentDto[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "DecryptedDocumentDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DecryptedDocumentDto(
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
        objectStoreReference:
            mapValueOfType<String>(json, r'objectStoreReference'),
        documentLocation: DecryptedDocumentDtoDocumentLocationEnum.fromJson(
            json[r'documentLocation']),
        documentType: DecryptedDocumentDtoDocumentTypeEnum.fromJson(
            json[r'documentType']),
        documentStatus: DecryptedDocumentDtoDocumentStatusEnum.fromJson(
            json[r'documentStatus']),
        externalUri: mapValueOfType<String>(json, r'externalUri'),
        mainUti: mapValueOfType<String>(json, r'mainUti'),
        name: mapValueOfType<String>(json, r'name'),
        version: mapValueOfType<String>(json, r'version'),
        otherUtis: json[r'otherUtis'] is Set
            ? (json[r'otherUtis'] as Set).cast<String>()
            : const {},
        storedICureDocumentId:
            mapValueOfType<String>(json, r'storedICureDocumentId'),
        externalUuid: mapValueOfType<String>(json, r'externalUuid'),
        size: mapValueOfType<int>(json, r'size'),
        hash: mapValueOfType<String>(json, r'hash'),
        openingContactId: mapValueOfType<String>(json, r'openingContactId'),
        attachmentId: mapValueOfType<String>(json, r'attachmentId'),
        encryptedAttachment:
            mapValueOfType<String>(json, r'encryptedAttachment'),
        decryptedAttachment:
            mapValueOfType<String>(json, r'decryptedAttachment'),
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

  static List<DecryptedDocumentDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DecryptedDocumentDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DecryptedDocumentDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DecryptedDocumentDto> mapFromJson(dynamic json) {
    final map = <String, DecryptedDocumentDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DecryptedDocumentDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DecryptedDocumentDto-objects as value to a dart map
  static Map<String, List<DecryptedDocumentDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DecryptedDocumentDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DecryptedDocumentDto.listFromJson(
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
    'otherUtis',
    'secretForeignKeys',
    'cryptedForeignKeys',
    'delegations',
    'encryptionKeys',
  };
}

/// Location of the document
class DecryptedDocumentDtoDocumentLocationEnum {
  /// Instantiate a new enum with the provided [value].
  const DecryptedDocumentDtoDocumentLocationEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const annex = DecryptedDocumentDtoDocumentLocationEnum._(r'annex');
  static const body = DecryptedDocumentDtoDocumentLocationEnum._(r'body');

  /// List of all possible values in this [enum][DecryptedDocumentDtoDocumentLocationEnum].
  static const values = <DecryptedDocumentDtoDocumentLocationEnum>[
    annex,
    body,
  ];

  static DecryptedDocumentDtoDocumentLocationEnum? fromJson(dynamic value) =>
      DecryptedDocumentDtoDocumentLocationEnumTypeTransformer().decode(value);

  static List<DecryptedDocumentDtoDocumentLocationEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DecryptedDocumentDtoDocumentLocationEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DecryptedDocumentDtoDocumentLocationEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DecryptedDocumentDtoDocumentLocationEnum] to String,
/// and [decode] dynamic data back to [DecryptedDocumentDtoDocumentLocationEnum].
class DecryptedDocumentDtoDocumentLocationEnumTypeTransformer {
  factory DecryptedDocumentDtoDocumentLocationEnumTypeTransformer() =>
      _instance ??=
          const DecryptedDocumentDtoDocumentLocationEnumTypeTransformer._();

  const DecryptedDocumentDtoDocumentLocationEnumTypeTransformer._();

  String encode(DecryptedDocumentDtoDocumentLocationEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DecryptedDocumentDtoDocumentLocationEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DecryptedDocumentDtoDocumentLocationEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'annex':
          return DecryptedDocumentDtoDocumentLocationEnum.annex;
        case r'body':
          return DecryptedDocumentDtoDocumentLocationEnum.body;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DecryptedDocumentDtoDocumentLocationEnumTypeTransformer] instance.
  static DecryptedDocumentDtoDocumentLocationEnumTypeTransformer? _instance;
}

/// The type of document, ex: admission, clinical path, document report,invoice, etc.
class DecryptedDocumentDtoDocumentTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DecryptedDocumentDtoDocumentTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const admission = DecryptedDocumentDtoDocumentTypeEnum._(r'admission');
  static const alert = DecryptedDocumentDtoDocumentTypeEnum._(r'alert');
  static const bvtSample =
      DecryptedDocumentDtoDocumentTypeEnum._(r'bvt_sample');
  static const clinicalpath =
      DecryptedDocumentDtoDocumentTypeEnum._(r'clinicalpath');
  static const clinicalsummary =
      DecryptedDocumentDtoDocumentTypeEnum._(r'clinicalsummary');
  static const contactreport =
      DecryptedDocumentDtoDocumentTypeEnum._(r'contactreport');
  static const quote = DecryptedDocumentDtoDocumentTypeEnum._(r'quote');
  static const invoice = DecryptedDocumentDtoDocumentTypeEnum._(r'invoice');
  static const death = DecryptedDocumentDtoDocumentTypeEnum._(r'death');
  static const discharge = DecryptedDocumentDtoDocumentTypeEnum._(r'discharge');
  static const dischargereport =
      DecryptedDocumentDtoDocumentTypeEnum._(r'dischargereport');
  static const ebirthBabyMedicalform =
      DecryptedDocumentDtoDocumentTypeEnum._(r'ebirth_baby_medicalform');
  static const ebirthBabyNotification =
      DecryptedDocumentDtoDocumentTypeEnum._(r'ebirth_baby_notification');
  static const ebirthMotherMedicalform =
      DecryptedDocumentDtoDocumentTypeEnum._(r'ebirth_mother_medicalform');
  static const ebirthMotherNotification =
      DecryptedDocumentDtoDocumentTypeEnum._(r'ebirth_mother_notification');
  static const ecareSafeConsultation =
      DecryptedDocumentDtoDocumentTypeEnum._(r'ecare_safe_consultation');
  static const epidemiology =
      DecryptedDocumentDtoDocumentTypeEnum._(r'epidemiology');
  static const intervention =
      DecryptedDocumentDtoDocumentTypeEnum._(r'intervention');
  static const labrequest =
      DecryptedDocumentDtoDocumentTypeEnum._(r'labrequest');
  static const labresult = DecryptedDocumentDtoDocumentTypeEnum._(r'labresult');
  static const medicaladvisoragreement =
      DecryptedDocumentDtoDocumentTypeEnum._(r'medicaladvisoragreement');
  static const medicationschemeelement =
      DecryptedDocumentDtoDocumentTypeEnum._(r'medicationschemeelement');
  static const note = DecryptedDocumentDtoDocumentTypeEnum._(r'note');
  static const notification =
      DecryptedDocumentDtoDocumentTypeEnum._(r'notification');
  static const pharmaceuticalprescription =
      DecryptedDocumentDtoDocumentTypeEnum._(r'pharmaceuticalprescription');
  static const prescription =
      DecryptedDocumentDtoDocumentTypeEnum._(r'prescription');
  static const productdelivery =
      DecryptedDocumentDtoDocumentTypeEnum._(r'productdelivery');
  static const quickdischargereport =
      DecryptedDocumentDtoDocumentTypeEnum._(r'quickdischargereport');
  static const radiationexposuremonitoring =
      DecryptedDocumentDtoDocumentTypeEnum._(r'radiationexposuremonitoring');
  static const referral = DecryptedDocumentDtoDocumentTypeEnum._(r'referral');
  static const report = DecryptedDocumentDtoDocumentTypeEnum._(r'report');
  static const request = DecryptedDocumentDtoDocumentTypeEnum._(r'request');
  static const result = DecryptedDocumentDtoDocumentTypeEnum._(r'result');
  static const sumehr = DecryptedDocumentDtoDocumentTypeEnum._(r'sumehr');
  static const telemonitoring =
      DecryptedDocumentDtoDocumentTypeEnum._(r'telemonitoring');
  static const template = DecryptedDocumentDtoDocumentTypeEnum._(r'template');
  static const templateAdmin =
      DecryptedDocumentDtoDocumentTypeEnum._(r'template_admin');
  static const treatmentsuspension =
      DecryptedDocumentDtoDocumentTypeEnum._(r'treatmentsuspension');
  static const vaccination =
      DecryptedDocumentDtoDocumentTypeEnum._(r'vaccination');

  /// List of all possible values in this [enum][DecryptedDocumentDtoDocumentTypeEnum].
  static const values = <DecryptedDocumentDtoDocumentTypeEnum>[
    admission,
    alert,
    bvtSample,
    clinicalpath,
    clinicalsummary,
    contactreport,
    quote,
    invoice,
    death,
    discharge,
    dischargereport,
    ebirthBabyMedicalform,
    ebirthBabyNotification,
    ebirthMotherMedicalform,
    ebirthMotherNotification,
    ecareSafeConsultation,
    epidemiology,
    intervention,
    labrequest,
    labresult,
    medicaladvisoragreement,
    medicationschemeelement,
    note,
    notification,
    pharmaceuticalprescription,
    prescription,
    productdelivery,
    quickdischargereport,
    radiationexposuremonitoring,
    referral,
    report,
    request,
    result,
    sumehr,
    telemonitoring,
    template,
    templateAdmin,
    treatmentsuspension,
    vaccination,
  ];

  static DecryptedDocumentDtoDocumentTypeEnum? fromJson(dynamic value) =>
      DecryptedDocumentDtoDocumentTypeEnumTypeTransformer().decode(value);

  static List<DecryptedDocumentDtoDocumentTypeEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DecryptedDocumentDtoDocumentTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DecryptedDocumentDtoDocumentTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DecryptedDocumentDtoDocumentTypeEnum] to String,
/// and [decode] dynamic data back to [DecryptedDocumentDtoDocumentTypeEnum].
class DecryptedDocumentDtoDocumentTypeEnumTypeTransformer {
  factory DecryptedDocumentDtoDocumentTypeEnumTypeTransformer() => _instance ??=
      const DecryptedDocumentDtoDocumentTypeEnumTypeTransformer._();

  const DecryptedDocumentDtoDocumentTypeEnumTypeTransformer._();

  String encode(DecryptedDocumentDtoDocumentTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DecryptedDocumentDtoDocumentTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DecryptedDocumentDtoDocumentTypeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'admission':
          return DecryptedDocumentDtoDocumentTypeEnum.admission;
        case r'alert':
          return DecryptedDocumentDtoDocumentTypeEnum.alert;
        case r'bvt_sample':
          return DecryptedDocumentDtoDocumentTypeEnum.bvtSample;
        case r'clinicalpath':
          return DecryptedDocumentDtoDocumentTypeEnum.clinicalpath;
        case r'clinicalsummary':
          return DecryptedDocumentDtoDocumentTypeEnum.clinicalsummary;
        case r'contactreport':
          return DecryptedDocumentDtoDocumentTypeEnum.contactreport;
        case r'quote':
          return DecryptedDocumentDtoDocumentTypeEnum.quote;
        case r'invoice':
          return DecryptedDocumentDtoDocumentTypeEnum.invoice;
        case r'death':
          return DecryptedDocumentDtoDocumentTypeEnum.death;
        case r'discharge':
          return DecryptedDocumentDtoDocumentTypeEnum.discharge;
        case r'dischargereport':
          return DecryptedDocumentDtoDocumentTypeEnum.dischargereport;
        case r'ebirth_baby_medicalform':
          return DecryptedDocumentDtoDocumentTypeEnum.ebirthBabyMedicalform;
        case r'ebirth_baby_notification':
          return DecryptedDocumentDtoDocumentTypeEnum.ebirthBabyNotification;
        case r'ebirth_mother_medicalform':
          return DecryptedDocumentDtoDocumentTypeEnum.ebirthMotherMedicalform;
        case r'ebirth_mother_notification':
          return DecryptedDocumentDtoDocumentTypeEnum.ebirthMotherNotification;
        case r'ecare_safe_consultation':
          return DecryptedDocumentDtoDocumentTypeEnum.ecareSafeConsultation;
        case r'epidemiology':
          return DecryptedDocumentDtoDocumentTypeEnum.epidemiology;
        case r'intervention':
          return DecryptedDocumentDtoDocumentTypeEnum.intervention;
        case r'labrequest':
          return DecryptedDocumentDtoDocumentTypeEnum.labrequest;
        case r'labresult':
          return DecryptedDocumentDtoDocumentTypeEnum.labresult;
        case r'medicaladvisoragreement':
          return DecryptedDocumentDtoDocumentTypeEnum.medicaladvisoragreement;
        case r'medicationschemeelement':
          return DecryptedDocumentDtoDocumentTypeEnum.medicationschemeelement;
        case r'note':
          return DecryptedDocumentDtoDocumentTypeEnum.note;
        case r'notification':
          return DecryptedDocumentDtoDocumentTypeEnum.notification;
        case r'pharmaceuticalprescription':
          return DecryptedDocumentDtoDocumentTypeEnum
              .pharmaceuticalprescription;
        case r'prescription':
          return DecryptedDocumentDtoDocumentTypeEnum.prescription;
        case r'productdelivery':
          return DecryptedDocumentDtoDocumentTypeEnum.productdelivery;
        case r'quickdischargereport':
          return DecryptedDocumentDtoDocumentTypeEnum.quickdischargereport;
        case r'radiationexposuremonitoring':
          return DecryptedDocumentDtoDocumentTypeEnum
              .radiationexposuremonitoring;
        case r'referral':
          return DecryptedDocumentDtoDocumentTypeEnum.referral;
        case r'report':
          return DecryptedDocumentDtoDocumentTypeEnum.report;
        case r'request':
          return DecryptedDocumentDtoDocumentTypeEnum.request;
        case r'result':
          return DecryptedDocumentDtoDocumentTypeEnum.result;
        case r'sumehr':
          return DecryptedDocumentDtoDocumentTypeEnum.sumehr;
        case r'telemonitoring':
          return DecryptedDocumentDtoDocumentTypeEnum.telemonitoring;
        case r'template':
          return DecryptedDocumentDtoDocumentTypeEnum.template;
        case r'template_admin':
          return DecryptedDocumentDtoDocumentTypeEnum.templateAdmin;
        case r'treatmentsuspension':
          return DecryptedDocumentDtoDocumentTypeEnum.treatmentsuspension;
        case r'vaccination':
          return DecryptedDocumentDtoDocumentTypeEnum.vaccination;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DecryptedDocumentDtoDocumentTypeEnumTypeTransformer] instance.
  static DecryptedDocumentDtoDocumentTypeEnumTypeTransformer? _instance;
}

/// The status of the development of the document. Ex: Draft, finalized, reviewed, signed, etc.
class DecryptedDocumentDtoDocumentStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DecryptedDocumentDtoDocumentStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const draft = DecryptedDocumentDtoDocumentStatusEnum._(r'draft');
  static const finalized =
      DecryptedDocumentDtoDocumentStatusEnum._(r'finalized');
  static const pendingReview =
      DecryptedDocumentDtoDocumentStatusEnum._(r'pending_review');
  static const reviewed = DecryptedDocumentDtoDocumentStatusEnum._(r'reviewed');
  static const pendingSignature =
      DecryptedDocumentDtoDocumentStatusEnum._(r'pending_signature');
  static const signed = DecryptedDocumentDtoDocumentStatusEnum._(r'signed');
  static const canceled = DecryptedDocumentDtoDocumentStatusEnum._(r'canceled');
  static const sent = DecryptedDocumentDtoDocumentStatusEnum._(r'sent');
  static const delivered =
      DecryptedDocumentDtoDocumentStatusEnum._(r'delivered');

  /// List of all possible values in this [enum][DecryptedDocumentDtoDocumentStatusEnum].
  static const values = <DecryptedDocumentDtoDocumentStatusEnum>[
    draft,
    finalized,
    pendingReview,
    reviewed,
    pendingSignature,
    signed,
    canceled,
    sent,
    delivered,
  ];

  static DecryptedDocumentDtoDocumentStatusEnum? fromJson(dynamic value) =>
      DecryptedDocumentDtoDocumentStatusEnumTypeTransformer().decode(value);

  static List<DecryptedDocumentDtoDocumentStatusEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DecryptedDocumentDtoDocumentStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DecryptedDocumentDtoDocumentStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DecryptedDocumentDtoDocumentStatusEnum] to String,
/// and [decode] dynamic data back to [DecryptedDocumentDtoDocumentStatusEnum].
class DecryptedDocumentDtoDocumentStatusEnumTypeTransformer {
  factory DecryptedDocumentDtoDocumentStatusEnumTypeTransformer() =>
      _instance ??=
          const DecryptedDocumentDtoDocumentStatusEnumTypeTransformer._();

  const DecryptedDocumentDtoDocumentStatusEnumTypeTransformer._();

  String encode(DecryptedDocumentDtoDocumentStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DecryptedDocumentDtoDocumentStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DecryptedDocumentDtoDocumentStatusEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'draft':
          return DecryptedDocumentDtoDocumentStatusEnum.draft;
        case r'finalized':
          return DecryptedDocumentDtoDocumentStatusEnum.finalized;
        case r'pending_review':
          return DecryptedDocumentDtoDocumentStatusEnum.pendingReview;
        case r'reviewed':
          return DecryptedDocumentDtoDocumentStatusEnum.reviewed;
        case r'pending_signature':
          return DecryptedDocumentDtoDocumentStatusEnum.pendingSignature;
        case r'signed':
          return DecryptedDocumentDtoDocumentStatusEnum.signed;
        case r'canceled':
          return DecryptedDocumentDtoDocumentStatusEnum.canceled;
        case r'sent':
          return DecryptedDocumentDtoDocumentStatusEnum.sent;
        case r'delivered':
          return DecryptedDocumentDtoDocumentStatusEnum.delivered;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DecryptedDocumentDtoDocumentStatusEnumTypeTransformer] instance.
  static DecryptedDocumentDtoDocumentStatusEnumTypeTransformer? _instance;
}
