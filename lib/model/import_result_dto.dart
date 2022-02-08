//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

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

  PatientDto patient;

  List<HealthElementDto> hes;

  List<ContactDto> ctcs;

  List<String> warnings;

  List<String> errors;

  List<FormDto> forms;

  List<HealthcarePartyDto> hcps;

  List<DocumentDto> documents;

  Map<String, MimeAttachmentDto> attachments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImportResultDto &&
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
    (patient == null ? 0 : patient.hashCode) +
    (hes == null ? 0 : hes.hashCode) +
    (ctcs == null ? 0 : ctcs.hashCode) +
    (warnings == null ? 0 : warnings.hashCode) +
    (errors == null ? 0 : errors.hashCode) +
    (forms == null ? 0 : forms.hashCode) +
    (hcps == null ? 0 : hcps.hashCode) +
    (documents == null ? 0 : documents.hashCode) +
    (attachments == null ? 0 : attachments.hashCode);

  @override
  String toString() => 'ImportResultDto[patient=$patient, hes=$hes, ctcs=$ctcs, warnings=$warnings, errors=$errors, forms=$forms, hcps=$hcps, documents=$documents, attachments=$attachments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (patient != null) {
      json[r'patient'] = patient;
    }
    if (hes != null) {
      json[r'hes'] = hes;
    }
    if (ctcs != null) {
      json[r'ctcs'] = ctcs;
    }
    if (warnings != null) {
      json[r'warnings'] = warnings;
    }
    if (errors != null) {
      json[r'errors'] = errors;
    }
    if (forms != null) {
      json[r'forms'] = forms;
    }
    if (hcps != null) {
      json[r'hcps'] = hcps;
    }
    if (documents != null) {
      json[r'documents'] = documents;
    }
    if (attachments != null) {
      json[r'attachments'] = attachments;
    }
    return json;
  }

  /// Returns a new [ImportResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImportResultDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ImportResultDto(
        patient: PatientDto.fromJson(json[r'patient']),
        hes: HealthElementDto.listFromJson(json[r'hes']),
        ctcs: ContactDto.listFromJson(json[r'ctcs']),
        warnings: json[r'warnings'] is List
          ? (json[r'warnings'] as List).cast<String>()
          : null,
        errors: json[r'errors'] is List
          ? (json[r'errors'] as List).cast<String>()
          : null,
        forms: FormDto.listFromJson(json[r'forms']),
        hcps: HealthcarePartyDto.listFromJson(json[r'hcps']),
        documents: DocumentDto.listFromJson(json[r'documents']),
        attachments: mapValueOfType<Map<String, MimeAttachmentDto>>(json, r'attachments'),
      );
    }
    return null;
  }

  static List<ImportResultDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ImportResultDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ImportResultDto>[];

  static Map<String, ImportResultDto> mapFromJson(dynamic json) {
    final map = <String, ImportResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ImportResultDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ImportResultDto-objects as value to a dart map
  static Map<String, List<ImportResultDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ImportResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ImportResultDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

