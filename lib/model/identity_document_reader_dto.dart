//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class IdentityDocumentReaderDto {
  /// Returns a new [IdentityDocumentReaderDto] instance.
  IdentityDocumentReaderDto({
    this.justificatifDocumentNumber,
    this.supportSerialNumber,
    this.timeReadingEIdDocument,
    this.eidDocumentSupportType = 0,
    this.reasonManualEncoding = 0,
    this.reasonUsingVignette = 0,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? justificatifDocumentNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? supportSerialNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timeReadingEIdDocument;

  int eidDocumentSupportType;

  int reasonManualEncoding;

  int reasonUsingVignette;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IdentityDocumentReaderDto &&
     other.justificatifDocumentNumber == justificatifDocumentNumber &&
     other.supportSerialNumber == supportSerialNumber &&
     other.timeReadingEIdDocument == timeReadingEIdDocument &&
     other.eidDocumentSupportType == eidDocumentSupportType &&
     other.reasonManualEncoding == reasonManualEncoding &&
     other.reasonUsingVignette == reasonUsingVignette;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (justificatifDocumentNumber == null ? 0 : justificatifDocumentNumber!.hashCode) +
    (supportSerialNumber == null ? 0 : supportSerialNumber!.hashCode) +
    (timeReadingEIdDocument == null ? 0 : timeReadingEIdDocument!.hashCode) +
    (eidDocumentSupportType.hashCode) +
    (reasonManualEncoding.hashCode) +
    (reasonUsingVignette.hashCode);

  @override
  String toString() => 'IdentityDocumentReaderDto[justificatifDocumentNumber=$justificatifDocumentNumber, supportSerialNumber=$supportSerialNumber, timeReadingEIdDocument=$timeReadingEIdDocument, eidDocumentSupportType=$eidDocumentSupportType, reasonManualEncoding=$reasonManualEncoding, reasonUsingVignette=$reasonUsingVignette]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (justificatifDocumentNumber != null) {
      json[r'justificatifDocumentNumber'] = justificatifDocumentNumber;
    }
    if (supportSerialNumber != null) {
      json[r'supportSerialNumber'] = supportSerialNumber;
    }
    if (timeReadingEIdDocument != null) {
      json[r'timeReadingEIdDocument'] = timeReadingEIdDocument;
    }
      json[r'eidDocumentSupportType'] = eidDocumentSupportType;
      json[r'reasonManualEncoding'] = reasonManualEncoding;
      json[r'reasonUsingVignette'] = reasonUsingVignette;
    return json;
  }

  /// Returns a new [IdentityDocumentReaderDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IdentityDocumentReaderDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IdentityDocumentReaderDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IdentityDocumentReaderDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IdentityDocumentReaderDto(
        justificatifDocumentNumber: mapValueOfType<String>(json, r'justificatifDocumentNumber'),
        supportSerialNumber: mapValueOfType<String>(json, r'supportSerialNumber'),
        timeReadingEIdDocument: mapValueOfType<int>(json, r'timeReadingEIdDocument'),
        eidDocumentSupportType: mapValueOfType<int>(json, r'eidDocumentSupportType')!,
        reasonManualEncoding: mapValueOfType<int>(json, r'reasonManualEncoding')!,
        reasonUsingVignette: mapValueOfType<int>(json, r'reasonUsingVignette')!,
      );
    }
    return null;
  }

  static List<IdentityDocumentReaderDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IdentityDocumentReaderDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IdentityDocumentReaderDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IdentityDocumentReaderDto> mapFromJson(dynamic json) {
    final map = <String, IdentityDocumentReaderDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IdentityDocumentReaderDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IdentityDocumentReaderDto-objects as value to a dart map
  static Map<String, List<IdentityDocumentReaderDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IdentityDocumentReaderDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IdentityDocumentReaderDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'eidDocumentSupportType',
    'reasonManualEncoding',
    'reasonUsingVignette',
  };
}

