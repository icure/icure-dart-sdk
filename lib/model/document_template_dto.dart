//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DocumentTemplateDto {
  /// Returns a new [DocumentTemplateDto] instance.
  DocumentTemplateDto({
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
    this.attachment,
    this.documentType,
    this.mainUti,
    this.name,
    this.otherUtis = const {},
    this.attachmentId,
    this.version,
    this.owner,
    this.guid,
    this.group,
    this.descr,
    this.disabled,
    this.specialty,
  });

  String id;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? attachment;

  /// The type of document, ex: admission, clinical path, document report,invoice, etc.
  DocumentTemplateDtoDocumentTypeEnum? documentType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mainUti;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  Set<String> otherUtis;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? attachmentId;

  DocumentTemplateDtoVersionEnum? version;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? guid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DocumentGroupDto? group;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? descr;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? disabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CodeStubDto? specialty;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DocumentTemplateDto &&
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
     other.attachment == attachment &&
     other.documentType == documentType &&
     other.mainUti == mainUti &&
     other.name == name &&
     other.otherUtis == otherUtis &&
     other.attachmentId == attachmentId &&
     other.version == version &&
     other.owner == owner &&
     other.guid == guid &&
     other.group == group &&
     other.descr == descr &&
     other.disabled == disabled &&
     other.specialty == specialty;

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
    (attachment == null ? 0 : attachment!.hashCode) +
    (documentType == null ? 0 : documentType!.hashCode) +
    (mainUti == null ? 0 : mainUti!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (otherUtis.hashCode) +
    (attachmentId == null ? 0 : attachmentId!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (guid == null ? 0 : guid!.hashCode) +
    (group == null ? 0 : group!.hashCode) +
    (descr == null ? 0 : descr!.hashCode) +
    (disabled == null ? 0 : disabled!.hashCode) +
    (specialty == null ? 0 : specialty!.hashCode);

  @override
  String toString() => 'DocumentTemplateDto[id=$id, rev=$rev, created=$created, modified=$modified, author=$author, responsible=$responsible, medicalLocationId=$medicalLocationId, tags=$tags, codes=$codes, endOfLife=$endOfLife, deletionDate=$deletionDate, attachment=$attachment, documentType=$documentType, mainUti=$mainUti, name=$name, otherUtis=$otherUtis, attachmentId=$attachmentId, version=$version, owner=$owner, guid=$guid, group=$group, descr=$descr, disabled=$disabled, specialty=$specialty]';

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
    if (attachment != null) {
      json[r'attachment'] = attachment;
    }
    if (documentType != null) {
      json[r'documentType'] = documentType;
    }
    if (mainUti != null) {
      json[r'mainUti'] = mainUti;
    }
    if (name != null) {
      json[r'name'] = name;
    }
      json[r'otherUtis'] = otherUtis;
    if (attachmentId != null) {
      json[r'attachmentId'] = attachmentId;
    }
    if (version != null) {
      json[r'version'] = version;
    }
    if (owner != null) {
      json[r'owner'] = owner;
    }
    if (guid != null) {
      json[r'guid'] = guid;
    }
    if (group != null) {
      json[r'group'] = group;
    }
    if (descr != null) {
      json[r'descr'] = descr;
    }
    if (disabled != null) {
      json[r'disabled'] = disabled;
    }
    if (specialty != null) {
      json[r'specialty'] = specialty;
    }
    return json;
  }

  /// Returns a new [DocumentTemplateDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DocumentTemplateDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DocumentTemplateDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DocumentTemplateDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DocumentTemplateDto(
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
        attachment: mapValueOfType<String>(json, r'attachment'),
        documentType: DocumentTemplateDtoDocumentTypeEnum.fromJson(json[r'documentType']),
        mainUti: mapValueOfType<String>(json, r'mainUti'),
        name: mapValueOfType<String>(json, r'name'),
        otherUtis: json[r'otherUtis'] is Set
            ? (json[r'otherUtis'] as Set).cast<String>()
            : const {},
        attachmentId: mapValueOfType<String>(json, r'attachmentId'),
        version: DocumentTemplateDtoVersionEnum.fromJson(json[r'version']),
        owner: mapValueOfType<String>(json, r'owner'),
        guid: mapValueOfType<String>(json, r'guid'),
        group: DocumentGroupDto.fromJson(json[r'group']),
        descr: mapValueOfType<String>(json, r'descr'),
        disabled: mapValueOfType<String>(json, r'disabled'),
        specialty: CodeStubDto.fromJson(json[r'specialty']),
      );
    }
    return null;
  }

  static List<DocumentTemplateDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DocumentTemplateDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DocumentTemplateDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DocumentTemplateDto> mapFromJson(dynamic json) {
    final map = <String, DocumentTemplateDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DocumentTemplateDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DocumentTemplateDto-objects as value to a dart map
  static Map<String, List<DocumentTemplateDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DocumentTemplateDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DocumentTemplateDto.listFromJson(entry.value, growable: growable,);
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
  };
}

/// The type of document, ex: admission, clinical path, document report,invoice, etc.
class DocumentTemplateDtoDocumentTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DocumentTemplateDtoDocumentTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const admission = DocumentTemplateDtoDocumentTypeEnum._(r'admission');
  static const alert = DocumentTemplateDtoDocumentTypeEnum._(r'alert');
  static const bvtSample = DocumentTemplateDtoDocumentTypeEnum._(r'bvt_sample');
  static const clinicalpath = DocumentTemplateDtoDocumentTypeEnum._(r'clinicalpath');
  static const clinicalsummary = DocumentTemplateDtoDocumentTypeEnum._(r'clinicalsummary');
  static const contactreport = DocumentTemplateDtoDocumentTypeEnum._(r'contactreport');
  static const quote = DocumentTemplateDtoDocumentTypeEnum._(r'quote');
  static const invoice = DocumentTemplateDtoDocumentTypeEnum._(r'invoice');
  static const death = DocumentTemplateDtoDocumentTypeEnum._(r'death');
  static const discharge = DocumentTemplateDtoDocumentTypeEnum._(r'discharge');
  static const dischargereport = DocumentTemplateDtoDocumentTypeEnum._(r'dischargereport');
  static const ebirthBabyMedicalform = DocumentTemplateDtoDocumentTypeEnum._(r'ebirth_baby_medicalform');
  static const ebirthBabyNotification = DocumentTemplateDtoDocumentTypeEnum._(r'ebirth_baby_notification');
  static const ebirthMotherMedicalform = DocumentTemplateDtoDocumentTypeEnum._(r'ebirth_mother_medicalform');
  static const ebirthMotherNotification = DocumentTemplateDtoDocumentTypeEnum._(r'ebirth_mother_notification');
  static const ecareSafeConsultation = DocumentTemplateDtoDocumentTypeEnum._(r'ecare_safe_consultation');
  static const epidemiology = DocumentTemplateDtoDocumentTypeEnum._(r'epidemiology');
  static const intervention = DocumentTemplateDtoDocumentTypeEnum._(r'intervention');
  static const labrequest = DocumentTemplateDtoDocumentTypeEnum._(r'labrequest');
  static const labresult = DocumentTemplateDtoDocumentTypeEnum._(r'labresult');
  static const medicaladvisoragreement = DocumentTemplateDtoDocumentTypeEnum._(r'medicaladvisoragreement');
  static const medicationschemeelement = DocumentTemplateDtoDocumentTypeEnum._(r'medicationschemeelement');
  static const note = DocumentTemplateDtoDocumentTypeEnum._(r'note');
  static const notification = DocumentTemplateDtoDocumentTypeEnum._(r'notification');
  static const pharmaceuticalprescription = DocumentTemplateDtoDocumentTypeEnum._(r'pharmaceuticalprescription');
  static const prescription = DocumentTemplateDtoDocumentTypeEnum._(r'prescription');
  static const productdelivery = DocumentTemplateDtoDocumentTypeEnum._(r'productdelivery');
  static const quickdischargereport = DocumentTemplateDtoDocumentTypeEnum._(r'quickdischargereport');
  static const radiationexposuremonitoring = DocumentTemplateDtoDocumentTypeEnum._(r'radiationexposuremonitoring');
  static const referral = DocumentTemplateDtoDocumentTypeEnum._(r'referral');
  static const report = DocumentTemplateDtoDocumentTypeEnum._(r'report');
  static const request = DocumentTemplateDtoDocumentTypeEnum._(r'request');
  static const result = DocumentTemplateDtoDocumentTypeEnum._(r'result');
  static const sumehr = DocumentTemplateDtoDocumentTypeEnum._(r'sumehr');
  static const telemonitoring = DocumentTemplateDtoDocumentTypeEnum._(r'telemonitoring');
  static const template = DocumentTemplateDtoDocumentTypeEnum._(r'template');
  static const templateAdmin = DocumentTemplateDtoDocumentTypeEnum._(r'template_admin');
  static const treatmentsuspension = DocumentTemplateDtoDocumentTypeEnum._(r'treatmentsuspension');
  static const vaccination = DocumentTemplateDtoDocumentTypeEnum._(r'vaccination');

  /// List of all possible values in this [enum][DocumentTemplateDtoDocumentTypeEnum].
  static const values = <DocumentTemplateDtoDocumentTypeEnum>[
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

  static DocumentTemplateDtoDocumentTypeEnum? fromJson(dynamic value) => DocumentTemplateDtoDocumentTypeEnumTypeTransformer().decode(value);

  static List<DocumentTemplateDtoDocumentTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DocumentTemplateDtoDocumentTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DocumentTemplateDtoDocumentTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DocumentTemplateDtoDocumentTypeEnum] to String,
/// and [decode] dynamic data back to [DocumentTemplateDtoDocumentTypeEnum].
class DocumentTemplateDtoDocumentTypeEnumTypeTransformer {
  factory DocumentTemplateDtoDocumentTypeEnumTypeTransformer() => _instance ??= const DocumentTemplateDtoDocumentTypeEnumTypeTransformer._();

  const DocumentTemplateDtoDocumentTypeEnumTypeTransformer._();

  String encode(DocumentTemplateDtoDocumentTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DocumentTemplateDtoDocumentTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DocumentTemplateDtoDocumentTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'admission': return DocumentTemplateDtoDocumentTypeEnum.admission;
        case r'alert': return DocumentTemplateDtoDocumentTypeEnum.alert;
        case r'bvt_sample': return DocumentTemplateDtoDocumentTypeEnum.bvtSample;
        case r'clinicalpath': return DocumentTemplateDtoDocumentTypeEnum.clinicalpath;
        case r'clinicalsummary': return DocumentTemplateDtoDocumentTypeEnum.clinicalsummary;
        case r'contactreport': return DocumentTemplateDtoDocumentTypeEnum.contactreport;
        case r'quote': return DocumentTemplateDtoDocumentTypeEnum.quote;
        case r'invoice': return DocumentTemplateDtoDocumentTypeEnum.invoice;
        case r'death': return DocumentTemplateDtoDocumentTypeEnum.death;
        case r'discharge': return DocumentTemplateDtoDocumentTypeEnum.discharge;
        case r'dischargereport': return DocumentTemplateDtoDocumentTypeEnum.dischargereport;
        case r'ebirth_baby_medicalform': return DocumentTemplateDtoDocumentTypeEnum.ebirthBabyMedicalform;
        case r'ebirth_baby_notification': return DocumentTemplateDtoDocumentTypeEnum.ebirthBabyNotification;
        case r'ebirth_mother_medicalform': return DocumentTemplateDtoDocumentTypeEnum.ebirthMotherMedicalform;
        case r'ebirth_mother_notification': return DocumentTemplateDtoDocumentTypeEnum.ebirthMotherNotification;
        case r'ecare_safe_consultation': return DocumentTemplateDtoDocumentTypeEnum.ecareSafeConsultation;
        case r'epidemiology': return DocumentTemplateDtoDocumentTypeEnum.epidemiology;
        case r'intervention': return DocumentTemplateDtoDocumentTypeEnum.intervention;
        case r'labrequest': return DocumentTemplateDtoDocumentTypeEnum.labrequest;
        case r'labresult': return DocumentTemplateDtoDocumentTypeEnum.labresult;
        case r'medicaladvisoragreement': return DocumentTemplateDtoDocumentTypeEnum.medicaladvisoragreement;
        case r'medicationschemeelement': return DocumentTemplateDtoDocumentTypeEnum.medicationschemeelement;
        case r'note': return DocumentTemplateDtoDocumentTypeEnum.note;
        case r'notification': return DocumentTemplateDtoDocumentTypeEnum.notification;
        case r'pharmaceuticalprescription': return DocumentTemplateDtoDocumentTypeEnum.pharmaceuticalprescription;
        case r'prescription': return DocumentTemplateDtoDocumentTypeEnum.prescription;
        case r'productdelivery': return DocumentTemplateDtoDocumentTypeEnum.productdelivery;
        case r'quickdischargereport': return DocumentTemplateDtoDocumentTypeEnum.quickdischargereport;
        case r'radiationexposuremonitoring': return DocumentTemplateDtoDocumentTypeEnum.radiationexposuremonitoring;
        case r'referral': return DocumentTemplateDtoDocumentTypeEnum.referral;
        case r'report': return DocumentTemplateDtoDocumentTypeEnum.report;
        case r'request': return DocumentTemplateDtoDocumentTypeEnum.request;
        case r'result': return DocumentTemplateDtoDocumentTypeEnum.result;
        case r'sumehr': return DocumentTemplateDtoDocumentTypeEnum.sumehr;
        case r'telemonitoring': return DocumentTemplateDtoDocumentTypeEnum.telemonitoring;
        case r'template': return DocumentTemplateDtoDocumentTypeEnum.template;
        case r'template_admin': return DocumentTemplateDtoDocumentTypeEnum.templateAdmin;
        case r'treatmentsuspension': return DocumentTemplateDtoDocumentTypeEnum.treatmentsuspension;
        case r'vaccination': return DocumentTemplateDtoDocumentTypeEnum.vaccination;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DocumentTemplateDtoDocumentTypeEnumTypeTransformer] instance.
  static DocumentTemplateDtoDocumentTypeEnumTypeTransformer? _instance;
}



class DocumentTemplateDtoVersionEnum {
  /// Instantiate a new enum with the provided [value].
  const DocumentTemplateDtoVersionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const v100 = DocumentTemplateDtoVersionEnum._(r'V1_0_0');

  /// List of all possible values in this [enum][DocumentTemplateDtoVersionEnum].
  static const values = <DocumentTemplateDtoVersionEnum>[
    v100,
  ];

  static DocumentTemplateDtoVersionEnum? fromJson(dynamic value) => DocumentTemplateDtoVersionEnumTypeTransformer().decode(value);

  static List<DocumentTemplateDtoVersionEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DocumentTemplateDtoVersionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DocumentTemplateDtoVersionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DocumentTemplateDtoVersionEnum] to String,
/// and [decode] dynamic data back to [DocumentTemplateDtoVersionEnum].
class DocumentTemplateDtoVersionEnumTypeTransformer {
  factory DocumentTemplateDtoVersionEnumTypeTransformer() => _instance ??= const DocumentTemplateDtoVersionEnumTypeTransformer._();

  const DocumentTemplateDtoVersionEnumTypeTransformer._();

  String encode(DocumentTemplateDtoVersionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DocumentTemplateDtoVersionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DocumentTemplateDtoVersionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'V1_0_0': return DocumentTemplateDtoVersionEnum.v100;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DocumentTemplateDtoVersionEnumTypeTransformer] instance.
  static DocumentTemplateDtoVersionEnumTypeTransformer? _instance;
}


