//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class ImportResultDto {
  /// Returns a new [ImportResultDto] instance.
  ImportResultDto({
    this.patient,
    this.hes = const [],
    this.ctcs = const [],
    this.warnings = const [],
    this.errors = const [],
    this.forms = const [],
    this.hcps = const [],
    this.documents = const [],
    this.attachments = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PatientDto? patient;

  List<HealthElementDto> hes;

  List<ContactDto> ctcs;

  List<String> warnings;

  List<String> errors;

  List<FormDto> forms;

  List<HealthcarePartyDto> hcps;

  List<DocumentDto> documents;

  Map<String, MimeAttachmentDto> attachments;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is ImportResultDto &&
          other.patient == patient &&
          other.hes == hes &&
          other.ctcs == ctcs &&
          other.warnings == warnings &&
          other.errors == errors &&
          other.forms == forms &&
          other.hcps == hcps &&
          other.documents == documents &&
          other.attachments == attachments;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
  (patient == null ? 0 : patient!.hashCode) +
      (hes.hashCode) +
      (ctcs.hashCode) +
      (warnings.hashCode) +
      (errors.hashCode) +
      (forms.hashCode) +
      (hcps.hashCode) +
      (documents.hashCode) +
      (attachments.hashCode);

  @override
  String toString() =>
      'ImportResultDto[patient=$patient, hes=$hes, ctcs=$ctcs, warnings=$warnings, errors=$errors, forms=$forms, hcps=$hcps, documents=$documents, attachments=$attachments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (patient != null) {
      json[r'patient'] = patient;
    }
    json[r'hes'] = hes;
    json[r'ctcs'] = ctcs;
    json[r'warnings'] = warnings;
    json[r'errors'] = errors;
    json[r'forms'] = forms;
    json[r'hcps'] = hcps;
    json[r'documents'] = documents;
    json[r'attachments'] = attachments;
    return json;
  }

  /// Returns a new [ImportResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImportResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImportResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImportResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImportResultDto(
        patient: PatientDto.fromJson(json[r'patient']),
        hes: HealthElementDto.listFromJson(json[r'hes']) ?? const [],
        ctcs: ContactDto.listFromJson(json[r'ctcs']) ?? const [],
        warnings: json[r'warnings'] is List
            ? (json[r'warnings'] as List).cast<String>()
            : const [],
        errors: json[r'errors'] is List
            ? (json[r'errors'] as List).cast<String>()
            : const [],
        forms: FormDto.listFromJson(json[r'forms']) ?? const [],
        hcps: HealthcarePartyDto.listFromJson(json[r'hcps']) ?? const [],
        documents: DocumentDto.listFromJson(json[r'documents']) ?? const [],
        attachments: mapValueOfType<Map<String, MimeAttachmentDto>>(json, r'attachments') ?? const {},
      );
    }
    return null;
  }

  static List<ImportResultDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImportResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImportResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImportResultDto> mapFromJson(dynamic json) {
    final map = <String, ImportResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImportResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImportResultDto-objects as value to a dart map
  static Map<String, List<ImportResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImportResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImportResultDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

