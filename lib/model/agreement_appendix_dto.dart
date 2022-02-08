//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AgreementAppendixDto {
  /// Returns a new [AgreementAppendixDto] instance.
  AgreementAppendixDto({
    this.docSeq,
    this.verseSeq,
    this.documentId,
    this.path,
  });

  int docSeq;

  int verseSeq;

  String documentId;

  String path;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgreementAppendixDto &&
     other.docSeq == docSeq &&
     other.verseSeq == verseSeq &&
     other.documentId == documentId &&
     other.path == path;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (docSeq == null ? 0 : docSeq.hashCode) +
    (verseSeq == null ? 0 : verseSeq.hashCode) +
    (documentId == null ? 0 : documentId.hashCode) +
    (path == null ? 0 : path.hashCode);

  @override
  String toString() => 'AgreementAppendixDto[docSeq=$docSeq, verseSeq=$verseSeq, documentId=$documentId, path=$path]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (docSeq != null) {
      json[r'docSeq'] = docSeq;
    }
    if (verseSeq != null) {
      json[r'verseSeq'] = verseSeq;
    }
    if (documentId != null) {
      json[r'documentId'] = documentId;
    }
    if (path != null) {
      json[r'path'] = path;
    }
    return json;
  }

  /// Returns a new [AgreementAppendixDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgreementAppendixDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AgreementAppendixDto(
        docSeq: mapValueOfType<int>(json, r'docSeq'),
        verseSeq: mapValueOfType<int>(json, r'verseSeq'),
        documentId: mapValueOfType<String>(json, r'documentId'),
        path: mapValueOfType<String>(json, r'path'),
      );
    }
    return null;
  }

  static List<AgreementAppendixDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AgreementAppendixDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AgreementAppendixDto>[];

  static Map<String, AgreementAppendixDto> mapFromJson(dynamic json) {
    final map = <String, AgreementAppendixDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AgreementAppendixDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AgreementAppendixDto-objects as value to a dart map
  static Map<String, List<AgreementAppendixDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AgreementAppendixDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AgreementAppendixDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

