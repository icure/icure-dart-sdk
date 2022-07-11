//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class PlanOfActionDto {
  /// Returns a new [PlanOfActionDto] instance.
  PlanOfActionDto({
    required this.id,
    this.created,
    this.modified,
    this.author,
    this.responsible,
    this.medicalLocationId,
    this.tags = const {},
    this.codes = const {},
    this.endOfLife,
    this.prescriberId,
    this.valueDate,
    this.openingDate,
    this.closingDate,
    this.deadlineDate,
    this.name,
    this.descr,
    this.note,
    this.idOpeningContact,
    this.idClosingContact,
    this.status = 0,
    this.documentIds = const {},
    this.numberOfCares,
    this.careTeamMemberships = const [],
    this.relevant = true,
    this.encryptedSelf,
  });

  String id;

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

  /// The id of the hcp who prescribed this healthcare approach
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prescriberId;

  /// The date (unix epoch in ms) when the healthcare approach is noted to have started and also closes on the same date
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? valueDate;

  /// The date (unix epoch in ms) of the start of the healthcare approach.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? openingDate;

  /// The date (unix epoch in ms) marking the end of the healthcare approach.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? closingDate;

  /// The date (unix epoch in ms) when the healthcare approach has to be carried out.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deadlineDate;

  /// The name of the healthcare approach.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Description of the healthcare approach.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? descr;

  /// Note about the healthcare approach.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  /// Id of the opening contact when the healthcare approach was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? idOpeningContact;

  /// Id of the closing contact for the healthcare approach.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? idClosingContact;

  /// bit 0: active/inactive, bit 1: relevant/irrelevant, bit 2 : present/absent, ex: 0 = active,relevant and present
  int status;

  Set<String> documentIds;

  /// The number of individual cares already performed in the course of this healthcare approach
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numberOfCares;

  /// Members of the careteam involved in this approach
  List<CareTeamMembershipDto> careTeamMemberships;

  bool relevant;

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
      other is PlanOfActionDto &&
          other.id == id &&
          other.created == created &&
          other.modified == modified &&
          other.author == author &&
          other.responsible == responsible &&
          other.medicalLocationId == medicalLocationId &&
          other.tags == tags &&
          other.codes == codes &&
          other.endOfLife == endOfLife &&
          other.prescriberId == prescriberId &&
          other.valueDate == valueDate &&
          other.openingDate == openingDate &&
          other.closingDate == closingDate &&
          other.deadlineDate == deadlineDate &&
          other.name == name &&
          other.descr == descr &&
          other.note == note &&
          other.idOpeningContact == idOpeningContact &&
          other.idClosingContact == idClosingContact &&
          other.status == status &&
          other.documentIds == documentIds &&
          other.numberOfCares == numberOfCares &&
          other.careTeamMemberships == careTeamMemberships &&
          other.relevant == relevant &&
          other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (created == null ? 0 : created!.hashCode) +
      (modified == null ? 0 : modified!.hashCode) +
      (author == null ? 0 : author!.hashCode) +
      (responsible == null ? 0 : responsible!.hashCode) +
      (medicalLocationId == null ? 0 : medicalLocationId!.hashCode) +
      (tags.hashCode) +
      (codes.hashCode) +
      (endOfLife == null ? 0 : endOfLife!.hashCode) +
      (prescriberId == null ? 0 : prescriberId!.hashCode) +
      (valueDate == null ? 0 : valueDate!.hashCode) +
      (openingDate == null ? 0 : openingDate!.hashCode) +
      (closingDate == null ? 0 : closingDate!.hashCode) +
      (deadlineDate == null ? 0 : deadlineDate!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (descr == null ? 0 : descr!.hashCode) +
      (note == null ? 0 : note!.hashCode) +
      (idOpeningContact == null ? 0 : idOpeningContact!.hashCode) +
      (idClosingContact == null ? 0 : idClosingContact!.hashCode) +
      (status.hashCode) +
      (documentIds.hashCode) +
      (numberOfCares == null ? 0 : numberOfCares!.hashCode) +
      (careTeamMemberships.hashCode) +
      (relevant.hashCode) +
      (encryptedSelf == null ? 0 : encryptedSelf!.hashCode);

  @override
  String toString() =>
      'PlanOfActionDto[id=$id, created=$created, modified=$modified, author=$author, responsible=$responsible, medicalLocationId=$medicalLocationId, tags=$tags, codes=$codes, endOfLife=$endOfLife, prescriberId=$prescriberId, valueDate=$valueDate, openingDate=$openingDate, closingDate=$closingDate, deadlineDate=$deadlineDate, name=$name, descr=$descr, note=$note, idOpeningContact=$idOpeningContact, idClosingContact=$idClosingContact, status=$status, documentIds=$documentIds, numberOfCares=$numberOfCares, careTeamMemberships=$careTeamMemberships, relevant=$relevant, encryptedSelf=$encryptedSelf]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = id;
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
    if (prescriberId != null) {
      json[r'prescriberId'] = prescriberId;
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
    if (deadlineDate != null) {
      json[r'deadlineDate'] = deadlineDate;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (descr != null) {
      json[r'descr'] = descr;
    }
    if (note != null) {
      json[r'note'] = note;
    }
    if (idOpeningContact != null) {
      json[r'idOpeningContact'] = idOpeningContact;
    }
    if (idClosingContact != null) {
      json[r'idClosingContact'] = idClosingContact;
    }
    json[r'status'] = status;
    json[r'documentIds'] = documentIds.toList();
    if (numberOfCares != null) {
      json[r'numberOfCares'] = numberOfCares;
    }
    json[r'careTeamMemberships'] = careTeamMemberships;
    json[r'relevant'] = relevant;
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [PlanOfActionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlanOfActionDto? fromJson(dynamic value) {
    if (value is PlanOfActionDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PlanOfActionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PlanOfActionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PlanOfActionDto(
        id: mapValueOfType<String>(json, r'id')!,
        created: mapValueOfType<int>(json, r'created'),
        modified: mapValueOfType<int>(json, r'modified'),
        author: mapValueOfType<String>(json, r'author'),
        responsible: mapValueOfType<String>(json, r'responsible'),
        medicalLocationId: mapValueOfType<String>(json, r'medicalLocationId'),
        tags: CodeStubDto.listFromJson(json[r'tags'])!.toSet(),
        codes: CodeStubDto.listFromJson(json[r'codes'])!.toSet(),
        endOfLife: mapValueOfType<int>(json, r'endOfLife'),
        prescriberId: mapValueOfType<String>(json, r'prescriberId'),
        valueDate: mapValueOfType<int>(json, r'valueDate'),
        openingDate: mapValueOfType<int>(json, r'openingDate'),
        closingDate: mapValueOfType<int>(json, r'closingDate'),
        deadlineDate: mapValueOfType<int>(json, r'deadlineDate'),
        name: mapValueOfType<String>(json, r'name'),
        descr: mapValueOfType<String>(json, r'descr'),
        note: mapValueOfType<String>(json, r'note'),
        idOpeningContact: mapValueOfType<String>(json, r'idOpeningContact'),
        idClosingContact: mapValueOfType<String>(json, r'idClosingContact'),
        status: mapValueOfType<int>(json, r'status')!,
        documentIds: json[r'documentIds'] is Set
            ? (json[r'documentIds'] as Set).cast<String>()
            : json[r'documentIds'] is List
                ? ((json[r'documentIds'] as List).toSet()).cast<String>()
                : const {},
        numberOfCares: mapValueOfType<int>(json, r'numberOfCares'),
        careTeamMemberships: CareTeamMembershipDto.listFromJson(json[r'careTeamMemberships'])!,
        relevant: mapValueOfType<bool>(json, r'relevant')!,
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<PlanOfActionDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PlanOfActionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlanOfActionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PlanOfActionDto> mapFromJson(dynamic json) {
    final map = <String, PlanOfActionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PlanOfActionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PlanOfActionDto-objects as value to a dart map
  static Map<String, List<PlanOfActionDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PlanOfActionDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PlanOfActionDto.listFromJson(
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
    'status',
    'documentIds',
    'careTeamMemberships',
    'relevant',
  };
}
