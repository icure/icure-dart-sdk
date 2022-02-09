//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DiaryNoteExportInfoDto {
  /// Returns a new [DiaryNoteExportInfoDto] instance.
  DiaryNoteExportInfoDto({
    this.secretForeignKeys = const [],
    this.excludedIds = const [],
    this.recipient,
    this.softwareName,
    this.softwareVersion,
    this.tags = const [],
    this.contexts = const [],
    this.psy,
    this.documentId,
    this.attachmentId,
    this.note,
  });

  List<String> secretForeignKeys;

  List<String> excludedIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HealthcarePartyDto? recipient;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? softwareName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? softwareVersion;

  List<String> tags;

  List<String> contexts;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? psy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? documentId;

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
  String? note;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DiaryNoteExportInfoDto &&
     other.secretForeignKeys == secretForeignKeys &&
     other.excludedIds == excludedIds &&
     other.recipient == recipient &&
     other.softwareName == softwareName &&
     other.softwareVersion == softwareVersion &&
     other.tags == tags &&
     other.contexts == contexts &&
     other.psy == psy &&
     other.documentId == documentId &&
     other.attachmentId == attachmentId &&
     other.note == note;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (secretForeignKeys.hashCode) +
    (excludedIds.hashCode) +
    (recipient == null ? 0 : recipient!.hashCode) +
    (softwareName == null ? 0 : softwareName!.hashCode) +
    (softwareVersion == null ? 0 : softwareVersion!.hashCode) +
    (tags.hashCode) +
    (contexts.hashCode) +
    (psy == null ? 0 : psy!.hashCode) +
    (documentId == null ? 0 : documentId!.hashCode) +
    (attachmentId == null ? 0 : attachmentId!.hashCode) +
    (note == null ? 0 : note!.hashCode);

  @override
  String toString() => 'DiaryNoteExportInfoDto[secretForeignKeys=$secretForeignKeys, excludedIds=$excludedIds, recipient=$recipient, softwareName=$softwareName, softwareVersion=$softwareVersion, tags=$tags, contexts=$contexts, psy=$psy, documentId=$documentId, attachmentId=$attachmentId, note=$note]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'secretForeignKeys'] = secretForeignKeys;
      json[r'excludedIds'] = excludedIds;
    if (recipient != null) {
      json[r'recipient'] = recipient;
    }
    if (softwareName != null) {
      json[r'softwareName'] = softwareName;
    }
    if (softwareVersion != null) {
      json[r'softwareVersion'] = softwareVersion;
    }
      json[r'tags'] = tags;
      json[r'contexts'] = contexts;
    if (psy != null) {
      json[r'psy'] = psy;
    }
    if (documentId != null) {
      json[r'documentId'] = documentId;
    }
    if (attachmentId != null) {
      json[r'attachmentId'] = attachmentId;
    }
    if (note != null) {
      json[r'note'] = note;
    }
    return json;
  }

  /// Returns a new [DiaryNoteExportInfoDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DiaryNoteExportInfoDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DiaryNoteExportInfoDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DiaryNoteExportInfoDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DiaryNoteExportInfoDto(
        secretForeignKeys: json[r'secretForeignKeys'] is List
            ? (json[r'secretForeignKeys'] as List).cast<String>()
            : const [],
        excludedIds: json[r'excludedIds'] is List
            ? (json[r'excludedIds'] as List).cast<String>()
            : const [],
        recipient: HealthcarePartyDto.fromJson(json[r'recipient']),
        softwareName: mapValueOfType<String>(json, r'softwareName'),
        softwareVersion: mapValueOfType<String>(json, r'softwareVersion'),
        tags: json[r'tags'] is List
            ? (json[r'tags'] as List).cast<String>()
            : const [],
        contexts: json[r'contexts'] is List
            ? (json[r'contexts'] as List).cast<String>()
            : const [],
        psy: mapValueOfType<bool>(json, r'psy'),
        documentId: mapValueOfType<String>(json, r'documentId'),
        attachmentId: mapValueOfType<String>(json, r'attachmentId'),
        note: mapValueOfType<String>(json, r'note'),
      );
    }
    return null;
  }

  static List<DiaryNoteExportInfoDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DiaryNoteExportInfoDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DiaryNoteExportInfoDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DiaryNoteExportInfoDto> mapFromJson(dynamic json) {
    final map = <String, DiaryNoteExportInfoDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DiaryNoteExportInfoDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DiaryNoteExportInfoDto-objects as value to a dart map
  static Map<String, List<DiaryNoteExportInfoDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DiaryNoteExportInfoDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DiaryNoteExportInfoDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'secretForeignKeys',
    'excludedIds',
    'tags',
    'contexts',
  };
}

