//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  HealthcarePartyDto recipient;

  String softwareName;

  String softwareVersion;

  List<String> tags;

  List<String> contexts;

  bool psy;

  String documentId;

  String attachmentId;

  String note;

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
    (secretForeignKeys == null ? 0 : secretForeignKeys.hashCode) +
    (excludedIds == null ? 0 : excludedIds.hashCode) +
    (recipient == null ? 0 : recipient.hashCode) +
    (softwareName == null ? 0 : softwareName.hashCode) +
    (softwareVersion == null ? 0 : softwareVersion.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (contexts == null ? 0 : contexts.hashCode) +
    (psy == null ? 0 : psy.hashCode) +
    (documentId == null ? 0 : documentId.hashCode) +
    (attachmentId == null ? 0 : attachmentId.hashCode) +
    (note == null ? 0 : note.hashCode);

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
  static DiaryNoteExportInfoDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return DiaryNoteExportInfoDto(
        secretForeignKeys: json[r'secretForeignKeys'] is List
          ? (json[r'secretForeignKeys'] as List).cast<String>()
          : null,
        excludedIds: json[r'excludedIds'] is List
          ? (json[r'excludedIds'] as List).cast<String>()
          : null,
        recipient: HealthcarePartyDto.fromJson(json[r'recipient']),
        softwareName: mapValueOfType<String>(json, r'softwareName'),
        softwareVersion: mapValueOfType<String>(json, r'softwareVersion'),
        tags: json[r'tags'] is List
          ? (json[r'tags'] as List).cast<String>()
          : null,
        contexts: json[r'contexts'] is List
          ? (json[r'contexts'] as List).cast<String>()
          : null,
        psy: mapValueOfType<bool>(json, r'psy'),
        documentId: mapValueOfType<String>(json, r'documentId'),
        attachmentId: mapValueOfType<String>(json, r'attachmentId'),
        note: mapValueOfType<String>(json, r'note'),
      );
    }
    return null;
  }

  static List<DiaryNoteExportInfoDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DiaryNoteExportInfoDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DiaryNoteExportInfoDto>[];

  static Map<String, DiaryNoteExportInfoDto> mapFromJson(dynamic json) {
    final map = <String, DiaryNoteExportInfoDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = DiaryNoteExportInfoDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DiaryNoteExportInfoDto-objects as value to a dart map
  static Map<String, List<DiaryNoteExportInfoDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DiaryNoteExportInfoDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = DiaryNoteExportInfoDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

