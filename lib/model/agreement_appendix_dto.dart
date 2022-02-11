//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class AgreementAppendixDto {
  /// Returns a new [AgreementAppendixDto] instance.
  AgreementAppendixDto({
    this.docSeq,
    this.verseSeq,
    this.documentId,
    this.path,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? docSeq;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? verseSeq;

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
  String? path;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is AgreementAppendixDto &&
          other.docSeq == docSeq &&
          other.verseSeq == verseSeq &&
          other.documentId == documentId &&
          other.path == path;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
  (docSeq == null ? 0 : docSeq!.hashCode) +
      (verseSeq == null ? 0 : verseSeq!.hashCode) +
      (documentId == null ? 0 : documentId!.hashCode) +
      (path == null ? 0 : path!.hashCode);

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
  static AgreementAppendixDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgreementAppendixDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgreementAppendixDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgreementAppendixDto(
        docSeq: mapValueOfType<int>(json, r'docSeq'),
        verseSeq: mapValueOfType<int>(json, r'verseSeq'),
        documentId: mapValueOfType<String>(json, r'documentId'),
        path: mapValueOfType<String>(json, r'path'),
      );
    }
    return null;
  }

  static List<AgreementAppendixDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgreementAppendixDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgreementAppendixDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgreementAppendixDto> mapFromJson(dynamic json) {
    final map = <String, AgreementAppendixDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgreementAppendixDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgreementAppendixDto-objects as value to a dart map
  static Map<String, List<AgreementAppendixDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgreementAppendixDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgreementAppendixDto.listFromJson(entry.value, growable: growable,);
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

