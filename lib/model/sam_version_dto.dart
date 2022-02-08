//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SamVersionDto {
  /// Returns a new [SamVersionDto] instance.
  SamVersionDto({
    @required this.id,
    this.rev,
    this.deletionDate,
    this.version,
    this.date,
  });

  String id;

  String rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  int deletionDate;

  String version;

  int date;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SamVersionDto &&
     other.id == id &&
     other.rev == rev &&
     other.deletionDate == deletionDate &&
     other.version == version &&
     other.date == date;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (rev == null ? 0 : rev.hashCode) +
    (deletionDate == null ? 0 : deletionDate.hashCode) +
    (version == null ? 0 : version.hashCode) +
    (date == null ? 0 : date.hashCode);

  @override
  String toString() => 'SamVersionDto[id=$id, rev=$rev, deletionDate=$deletionDate, version=$version, date=$date]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (rev != null) {
      json[r'rev'] = rev;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
    }
    if (version != null) {
      json[r'version'] = version;
    }
    if (date != null) {
      json[r'date'] = date;
    }
    return json;
  }

  /// Returns a new [SamVersionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SamVersionDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SamVersionDto(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        version: mapValueOfType<String>(json, r'version'),
        date: mapValueOfType<int>(json, r'date'),
      );
    }
    return null;
  }

  static List<SamVersionDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SamVersionDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SamVersionDto>[];

  static Map<String, SamVersionDto> mapFromJson(dynamic json) {
    final map = <String, SamVersionDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SamVersionDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SamVersionDto-objects as value to a dart map
  static Map<String, List<SamVersionDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SamVersionDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SamVersionDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

