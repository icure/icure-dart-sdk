//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class DocumentDto {
  /// Returns a new [DocumentDto] instance.
  DocumentDto({
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
  DocumentDtoDocumentLocationEnum? documentLocation;

  /// The type of document, ex: admission, clinical path, document report,invoice, etc.
  DocumentDtoDocumentTypeEnum? documentType;

  /// The status of the development of the document. Ex: Draft, finalized, reviewed, signed, etc.
  DocumentDtoDocumentStatusEnum? documentStatus;

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
  bool operator ==(Object other) => identical(this, other) || other is DocumentDto &&
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
  String toString() => 'DocumentDto[id=$id, rev=$rev, created=$created, modified=$modified, author=$author, responsible=$responsible, medicalLocationId=$medicalLocationId, tags=$tags, codes=$codes, endOfLife=$endOfLife, deletionDate=$deletionDate, objectStoreReference=$objectStoreReference, documentLocation=$documentLocation, documentType=$documentType, documentStatus=$documentStatus, externalUri=$externalUri, mainUti=$mainUti, name=$name, version=$version, otherUtis=$otherUtis, storedICureDocumentId=$storedICureDocumentId, externalUuid=$externalUuid, size=$size, hash=$hash, openingContactId=$openingContactId, attachmentId=$attachmentId, encryptedAttachment=$encryptedAttachment, decryptedAttachment=$decryptedAttachment, secretForeignKeys=$secretForeignKeys, cryptedForeignKeys=$cryptedForeignKeys, delegations=$delegations, encryptionKeys=$encryptionKeys, encryptedSelf=$encryptedSelf]';

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

  /// Returns a new [DocumentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DocumentDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DocumentDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DocumentDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DocumentDto(
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
        objectStoreReference: mapValueOfType<String>(json, r'objectStoreReference'),
        documentLocation: DocumentDtoDocumentLocationEnum.fromJson(json[r'documentLocation']),
        documentType: DocumentDtoDocumentTypeEnum.fromJson(json[r'documentType']),
        documentStatus: DocumentDtoDocumentStatusEnum.fromJson(json[r'documentStatus']),
        externalUri: mapValueOfType<String>(json, r'externalUri'),
        mainUti: mapValueOfType<String>(json, r'mainUti'),
        name: mapValueOfType<String>(json, r'name'),
        version: mapValueOfType<String>(json, r'version'),
        otherUtis: json[r'otherUtis'] is Set
            ? (json[r'otherUtis'] as Set).cast<String>()
            : const {},
        storedICureDocumentId: mapValueOfType<String>(json, r'storedICureDocumentId'),
        externalUuid: mapValueOfType<String>(json, r'externalUuid'),
        size: mapValueOfType<int>(json, r'size'),
        hash: mapValueOfType<String>(json, r'hash'),
        openingContactId: mapValueOfType<String>(json, r'openingContactId'),
        attachmentId: mapValueOfType<String>(json, r'attachmentId'),
        encryptedAttachment: mapValueOfType<String>(json, r'encryptedAttachment'),
        decryptedAttachment: mapValueOfType<String>(json, r'decryptedAttachment'),
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

  static List<DocumentDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DocumentDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DocumentDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DocumentDto> mapFromJson(dynamic json) {
    final map = <String, DocumentDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DocumentDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DocumentDto-objects as value to a dart map
  static Map<String, List<DocumentDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DocumentDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DocumentDto.listFromJson(entry.value, growable: growable,);
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
class DocumentDtoDocumentLocationEnum {
  /// Instantiate a new enum with the provided [value].
  const DocumentDtoDocumentLocationEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const annex = DocumentDtoDocumentLocationEnum._(r'annex');
  static const body = DocumentDtoDocumentLocationEnum._(r'body');

  /// List of all possible values in this [enum][DocumentDtoDocumentLocationEnum].
  static const values = <DocumentDtoDocumentLocationEnum>[
    annex,
    body,
  ];

  static DocumentDtoDocumentLocationEnum? fromJson(dynamic value) => DocumentDtoDocumentLocationEnumTypeTransformer().decode(value);

  static List<DocumentDtoDocumentLocationEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DocumentDtoDocumentLocationEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DocumentDtoDocumentLocationEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DocumentDtoDocumentLocationEnum] to String,
/// and [decode] dynamic data back to [DocumentDtoDocumentLocationEnum].
class DocumentDtoDocumentLocationEnumTypeTransformer {
  factory DocumentDtoDocumentLocationEnumTypeTransformer() => _instance ??= const DocumentDtoDocumentLocationEnumTypeTransformer._();

  const DocumentDtoDocumentLocationEnumTypeTransformer._();

  String encode(DocumentDtoDocumentLocationEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DocumentDtoDocumentLocationEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DocumentDtoDocumentLocationEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'annex': return DocumentDtoDocumentLocationEnum.annex;
        case r'body': return DocumentDtoDocumentLocationEnum.body;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DocumentDtoDocumentLocationEnumTypeTransformer] instance.
  static DocumentDtoDocumentLocationEnumTypeTransformer? _instance;
}


/// The type of document, ex: admission, clinical path, document report,invoice, etc.
class DocumentDtoDocumentTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DocumentDtoDocumentTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const admission = DocumentDtoDocumentTypeEnum._(r'admission');
  static const alert = DocumentDtoDocumentTypeEnum._(r'alert');
  static const bvtSample = DocumentDtoDocumentTypeEnum._(r'bvt_sample');
  static const clinicalpath = DocumentDtoDocumentTypeEnum._(r'clinicalpath');
  static const clinicalsummary = DocumentDtoDocumentTypeEnum._(r'clinicalsummary');
  static const contactreport = DocumentDtoDocumentTypeEnum._(r'contactreport');
  static const quote = DocumentDtoDocumentTypeEnum._(r'quote');
  static const invoice = DocumentDtoDocumentTypeEnum._(r'invoice');
  static const death = DocumentDtoDocumentTypeEnum._(r'death');
  static const discharge = DocumentDtoDocumentTypeEnum._(r'discharge');
  static const dischargereport = DocumentDtoDocumentTypeEnum._(r'dischargereport');
  static const ebirthBabyMedicalform = DocumentDtoDocumentTypeEnum._(r'ebirth_baby_medicalform');
  static const ebirthBabyNotification = DocumentDtoDocumentTypeEnum._(r'ebirth_baby_notification');
  static const ebirthMotherMedicalform = DocumentDtoDocumentTypeEnum._(r'ebirth_mother_medicalform');
  static const ebirthMotherNotification = DocumentDtoDocumentTypeEnum._(r'ebirth_mother_notification');
  static const ecareSafeConsultation = DocumentDtoDocumentTypeEnum._(r'ecare_safe_consultation');
  static const epidemiology = DocumentDtoDocumentTypeEnum._(r'epidemiology');
  static const intervention = DocumentDtoDocumentTypeEnum._(r'intervention');
  static const labrequest = DocumentDtoDocumentTypeEnum._(r'labrequest');
  static const labresult = DocumentDtoDocumentTypeEnum._(r'labresult');
  static const medicaladvisoragreement = DocumentDtoDocumentTypeEnum._(r'medicaladvisoragreement');
  static const medicationschemeelement = DocumentDtoDocumentTypeEnum._(r'medicationschemeelement');
  static const note = DocumentDtoDocumentTypeEnum._(r'note');
  static const notification = DocumentDtoDocumentTypeEnum._(r'notification');
  static const pharmaceuticalprescription = DocumentDtoDocumentTypeEnum._(r'pharmaceuticalprescription');
  static const prescription = DocumentDtoDocumentTypeEnum._(r'prescription');
  static const productdelivery = DocumentDtoDocumentTypeEnum._(r'productdelivery');
  static const quickdischargereport = DocumentDtoDocumentTypeEnum._(r'quickdischargereport');
  static const radiationexposuremonitoring = DocumentDtoDocumentTypeEnum._(r'radiationexposuremonitoring');
  static const referral = DocumentDtoDocumentTypeEnum._(r'referral');
  static const report = DocumentDtoDocumentTypeEnum._(r'report');
  static const request = DocumentDtoDocumentTypeEnum._(r'request');
  static const result = DocumentDtoDocumentTypeEnum._(r'result');
  static const sumehr = DocumentDtoDocumentTypeEnum._(r'sumehr');
  static const telemonitoring = DocumentDtoDocumentTypeEnum._(r'telemonitoring');
  static const template = DocumentDtoDocumentTypeEnum._(r'template');
  static const templateAdmin = DocumentDtoDocumentTypeEnum._(r'template_admin');
  static const treatmentsuspension = DocumentDtoDocumentTypeEnum._(r'treatmentsuspension');
  static const vaccination = DocumentDtoDocumentTypeEnum._(r'vaccination');

  /// List of all possible values in this [enum][DocumentDtoDocumentTypeEnum].
  static const values = <DocumentDtoDocumentTypeEnum>[
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

  static DocumentDtoDocumentTypeEnum? fromJson(dynamic value) => DocumentDtoDocumentTypeEnumTypeTransformer().decode(value);

  static List<DocumentDtoDocumentTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DocumentDtoDocumentTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DocumentDtoDocumentTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DocumentDtoDocumentTypeEnum] to String,
/// and [decode] dynamic data back to [DocumentDtoDocumentTypeEnum].
class DocumentDtoDocumentTypeEnumTypeTransformer {
  factory DocumentDtoDocumentTypeEnumTypeTransformer() => _instance ??= const DocumentDtoDocumentTypeEnumTypeTransformer._();

  const DocumentDtoDocumentTypeEnumTypeTransformer._();

  String encode(DocumentDtoDocumentTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DocumentDtoDocumentTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DocumentDtoDocumentTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'admission': return DocumentDtoDocumentTypeEnum.admission;
        case r'alert': return DocumentDtoDocumentTypeEnum.alert;
        case r'bvt_sample': return DocumentDtoDocumentTypeEnum.bvtSample;
        case r'clinicalpath': return DocumentDtoDocumentTypeEnum.clinicalpath;
        case r'clinicalsummary': return DocumentDtoDocumentTypeEnum.clinicalsummary;
        case r'contactreport': return DocumentDtoDocumentTypeEnum.contactreport;
        case r'quote': return DocumentDtoDocumentTypeEnum.quote;
        case r'invoice': return DocumentDtoDocumentTypeEnum.invoice;
        case r'death': return DocumentDtoDocumentTypeEnum.death;
        case r'discharge': return DocumentDtoDocumentTypeEnum.discharge;
        case r'dischargereport': return DocumentDtoDocumentTypeEnum.dischargereport;
        case r'ebirth_baby_medicalform': return DocumentDtoDocumentTypeEnum.ebirthBabyMedicalform;
        case r'ebirth_baby_notification': return DocumentDtoDocumentTypeEnum.ebirthBabyNotification;
        case r'ebirth_mother_medicalform': return DocumentDtoDocumentTypeEnum.ebirthMotherMedicalform;
        case r'ebirth_mother_notification': return DocumentDtoDocumentTypeEnum.ebirthMotherNotification;
        case r'ecare_safe_consultation': return DocumentDtoDocumentTypeEnum.ecareSafeConsultation;
        case r'epidemiology': return DocumentDtoDocumentTypeEnum.epidemiology;
        case r'intervention': return DocumentDtoDocumentTypeEnum.intervention;
        case r'labrequest': return DocumentDtoDocumentTypeEnum.labrequest;
        case r'labresult': return DocumentDtoDocumentTypeEnum.labresult;
        case r'medicaladvisoragreement': return DocumentDtoDocumentTypeEnum.medicaladvisoragreement;
        case r'medicationschemeelement': return DocumentDtoDocumentTypeEnum.medicationschemeelement;
        case r'note': return DocumentDtoDocumentTypeEnum.note;
        case r'notification': return DocumentDtoDocumentTypeEnum.notification;
        case r'pharmaceuticalprescription': return DocumentDtoDocumentTypeEnum.pharmaceuticalprescription;
        case r'prescription': return DocumentDtoDocumentTypeEnum.prescription;
        case r'productdelivery': return DocumentDtoDocumentTypeEnum.productdelivery;
        case r'quickdischargereport': return DocumentDtoDocumentTypeEnum.quickdischargereport;
        case r'radiationexposuremonitoring': return DocumentDtoDocumentTypeEnum.radiationexposuremonitoring;
        case r'referral': return DocumentDtoDocumentTypeEnum.referral;
        case r'report': return DocumentDtoDocumentTypeEnum.report;
        case r'request': return DocumentDtoDocumentTypeEnum.request;
        case r'result': return DocumentDtoDocumentTypeEnum.result;
        case r'sumehr': return DocumentDtoDocumentTypeEnum.sumehr;
        case r'telemonitoring': return DocumentDtoDocumentTypeEnum.telemonitoring;
        case r'template': return DocumentDtoDocumentTypeEnum.template;
        case r'template_admin': return DocumentDtoDocumentTypeEnum.templateAdmin;
        case r'treatmentsuspension': return DocumentDtoDocumentTypeEnum.treatmentsuspension;
        case r'vaccination': return DocumentDtoDocumentTypeEnum.vaccination;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DocumentDtoDocumentTypeEnumTypeTransformer] instance.
  static DocumentDtoDocumentTypeEnumTypeTransformer? _instance;
}


/// The status of the development of the document. Ex: Draft, finalized, reviewed, signed, etc.
class DocumentDtoDocumentStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DocumentDtoDocumentStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const draft = DocumentDtoDocumentStatusEnum._(r'draft');
  static const finalized = DocumentDtoDocumentStatusEnum._(r'finalized');
  static const pendingReview = DocumentDtoDocumentStatusEnum._(r'pending_review');
  static const reviewed = DocumentDtoDocumentStatusEnum._(r'reviewed');
  static const pendingSignature = DocumentDtoDocumentStatusEnum._(r'pending_signature');
  static const signed = DocumentDtoDocumentStatusEnum._(r'signed');
  static const canceled = DocumentDtoDocumentStatusEnum._(r'canceled');
  static const sent = DocumentDtoDocumentStatusEnum._(r'sent');
  static const delivered = DocumentDtoDocumentStatusEnum._(r'delivered');

  /// List of all possible values in this [enum][DocumentDtoDocumentStatusEnum].
  static const values = <DocumentDtoDocumentStatusEnum>[
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

  static DocumentDtoDocumentStatusEnum? fromJson(dynamic value) => DocumentDtoDocumentStatusEnumTypeTransformer().decode(value);

  static List<DocumentDtoDocumentStatusEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DocumentDtoDocumentStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DocumentDtoDocumentStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DocumentDtoDocumentStatusEnum] to String,
/// and [decode] dynamic data back to [DocumentDtoDocumentStatusEnum].
class DocumentDtoDocumentStatusEnumTypeTransformer {
  factory DocumentDtoDocumentStatusEnumTypeTransformer() => _instance ??= const DocumentDtoDocumentStatusEnumTypeTransformer._();

  const DocumentDtoDocumentStatusEnumTypeTransformer._();

  String encode(DocumentDtoDocumentStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DocumentDtoDocumentStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DocumentDtoDocumentStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'draft': return DocumentDtoDocumentStatusEnum.draft;
        case r'finalized': return DocumentDtoDocumentStatusEnum.finalized;
        case r'pending_review': return DocumentDtoDocumentStatusEnum.pendingReview;
        case r'reviewed': return DocumentDtoDocumentStatusEnum.reviewed;
        case r'pending_signature': return DocumentDtoDocumentStatusEnum.pendingSignature;
        case r'signed': return DocumentDtoDocumentStatusEnum.signed;
        case r'canceled': return DocumentDtoDocumentStatusEnum.canceled;
        case r'sent': return DocumentDtoDocumentStatusEnum.sent;
        case r'delivered': return DocumentDtoDocumentStatusEnum.delivered;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DocumentDtoDocumentStatusEnumTypeTransformer] instance.
  static DocumentDtoDocumentStatusEnumTypeTransformer? _instance;
}


