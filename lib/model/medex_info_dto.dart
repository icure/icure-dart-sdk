//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class MedexInfoDto {
  /// Returns a new [MedexInfoDto] instance.
  MedexInfoDto({
    required this.beginDate,
    required this.endDate,
    this.author,
    this.patient,
    this.patientLanguage = '"fr"',
    this.incapacityType = '"incapacity"',
    this.incapacityReason = '"sickness"',
    required this.outOfHomeAllowed,
    this.certificateDate,
    this.contentDate,
    this.diagnosisICPC,
    this.diagnosisICD,
    this.diagnosisDescr,
  });

  int beginDate;

  int endDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HealthcarePartyDto? author;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PatientDto? patient;

  String patientLanguage;

  String incapacityType;

  String incapacityReason;

  bool outOfHomeAllowed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? certificateDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? contentDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? diagnosisICPC;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? diagnosisICD;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? diagnosisDescr;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MedexInfoDto &&
          other.beginDate == beginDate &&
          other.endDate == endDate &&
          other.author == author &&
          other.patient == patient &&
          other.patientLanguage == patientLanguage &&
          other.incapacityType == incapacityType &&
          other.incapacityReason == incapacityReason &&
          other.outOfHomeAllowed == outOfHomeAllowed &&
          other.certificateDate == certificateDate &&
          other.contentDate == contentDate &&
          other.diagnosisICPC == diagnosisICPC &&
          other.diagnosisICD == diagnosisICD &&
          other.diagnosisDescr == diagnosisDescr;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (beginDate.hashCode) +
      (endDate.hashCode) +
      (author == null ? 0 : author!.hashCode) +
      (patient == null ? 0 : patient!.hashCode) +
      (patientLanguage.hashCode) +
      (incapacityType.hashCode) +
      (incapacityReason.hashCode) +
      (outOfHomeAllowed.hashCode) +
      (certificateDate == null ? 0 : certificateDate!.hashCode) +
      (contentDate == null ? 0 : contentDate!.hashCode) +
      (diagnosisICPC == null ? 0 : diagnosisICPC!.hashCode) +
      (diagnosisICD == null ? 0 : diagnosisICD!.hashCode) +
      (diagnosisDescr == null ? 0 : diagnosisDescr!.hashCode);

  @override
  String toString() =>
      'MedexInfoDto[beginDate=$beginDate, endDate=$endDate, author=$author, patient=$patient, patientLanguage=$patientLanguage, incapacityType=$incapacityType, incapacityReason=$incapacityReason, outOfHomeAllowed=$outOfHomeAllowed, certificateDate=$certificateDate, contentDate=$contentDate, diagnosisICPC=$diagnosisICPC, diagnosisICD=$diagnosisICD, diagnosisDescr=$diagnosisDescr]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'beginDate'] = beginDate;
    json[r'endDate'] = endDate;
    if (author != null) {
      json[r'author'] = author;
    }
    if (patient != null) {
      json[r'patient'] = patient;
    }
    json[r'patientLanguage'] = patientLanguage;
    json[r'incapacityType'] = incapacityType;
    json[r'incapacityReason'] = incapacityReason;
    json[r'outOfHomeAllowed'] = outOfHomeAllowed;
    if (certificateDate != null) {
      json[r'certificateDate'] = certificateDate;
    }
    if (contentDate != null) {
      json[r'contentDate'] = contentDate;
    }
    if (diagnosisICPC != null) {
      json[r'diagnosisICPC'] = diagnosisICPC;
    }
    if (diagnosisICD != null) {
      json[r'diagnosisICD'] = diagnosisICD;
    }
    if (diagnosisDescr != null) {
      json[r'diagnosisDescr'] = diagnosisDescr;
    }
    return json;
  }

  /// Returns a new [MedexInfoDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MedexInfoDto? fromJson(dynamic value) {
    if (value is MedexInfoDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MedexInfoDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MedexInfoDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MedexInfoDto(
        beginDate: mapValueOfType<int>(json, r'beginDate')!,
        endDate: mapValueOfType<int>(json, r'endDate')!,
        author: HealthcarePartyDto.fromJson(json[r'author']),
        patient: PatientDto.fromJson(json[r'patient']),
        patientLanguage: mapValueOfType<String>(json, r'patientLanguage')!,
        incapacityType: mapValueOfType<String>(json, r'incapacityType')!,
        incapacityReason: mapValueOfType<String>(json, r'incapacityReason')!,
        outOfHomeAllowed: mapValueOfType<bool>(json, r'outOfHomeAllowed')!,
        certificateDate: mapValueOfType<int>(json, r'certificateDate'),
        contentDate: mapValueOfType<int>(json, r'contentDate'),
        diagnosisICPC: mapValueOfType<String>(json, r'diagnosisICPC'),
        diagnosisICD: mapValueOfType<String>(json, r'diagnosisICD'),
        diagnosisDescr: mapValueOfType<String>(json, r'diagnosisDescr'),
      );
    }
    return null;
  }

  static List<MedexInfoDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MedexInfoDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MedexInfoDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MedexInfoDto> mapFromJson(dynamic json) {
    final map = <String, MedexInfoDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MedexInfoDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MedexInfoDto-objects as value to a dart map
  static Map<String, List<MedexInfoDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MedexInfoDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MedexInfoDto.listFromJson(
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
    'beginDate',
    'endDate',
    'patientLanguage',
    'incapacityType',
    'incapacityReason',
    'outOfHomeAllowed',
  };
}
