//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

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

  String justificatifDocumentNumber;

  String supportSerialNumber;

  int timeReadingEIdDocument;

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
    (justificatifDocumentNumber == null ? 0 : justificatifDocumentNumber.hashCode) +
    (supportSerialNumber == null ? 0 : supportSerialNumber.hashCode) +
    (timeReadingEIdDocument == null ? 0 : timeReadingEIdDocument.hashCode) +
    (eidDocumentSupportType == null ? 0 : eidDocumentSupportType.hashCode) +
    (reasonManualEncoding == null ? 0 : reasonManualEncoding.hashCode) +
    (reasonUsingVignette == null ? 0 : reasonUsingVignette.hashCode);

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
  static IdentityDocumentReaderDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return IdentityDocumentReaderDto(
        justificatifDocumentNumber: mapValueOfType<String>(json, r'justificatifDocumentNumber'),
        supportSerialNumber: mapValueOfType<String>(json, r'supportSerialNumber'),
        timeReadingEIdDocument: mapValueOfType<int>(json, r'timeReadingEIdDocument'),
        eidDocumentSupportType: mapValueOfType<int>(json, r'eidDocumentSupportType'),
        reasonManualEncoding: mapValueOfType<int>(json, r'reasonManualEncoding'),
        reasonUsingVignette: mapValueOfType<int>(json, r'reasonUsingVignette'),
      );
    }
    return null;
  }

  static List<IdentityDocumentReaderDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(IdentityDocumentReaderDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <IdentityDocumentReaderDto>[];

  static Map<String, IdentityDocumentReaderDto> mapFromJson(dynamic json) {
    final map = <String, IdentityDocumentReaderDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = IdentityDocumentReaderDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of IdentityDocumentReaderDto-objects as value to a dart map
  static Map<String, List<IdentityDocumentReaderDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<IdentityDocumentReaderDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = IdentityDocumentReaderDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

