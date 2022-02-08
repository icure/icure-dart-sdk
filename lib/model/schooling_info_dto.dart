//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SchoolingInfoDto {
  /// Returns a new [SchoolingInfoDto] instance.
  SchoolingInfoDto({
    this.startDate,
    this.endDate,
    this.school,
    this.typeOfEducation,
  });

  int startDate;

  int endDate;

  String school;

  CodeStubDto typeOfEducation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SchoolingInfoDto &&
     other.startDate == startDate &&
     other.endDate == endDate &&
     other.school == school &&
     other.typeOfEducation == typeOfEducation;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (startDate == null ? 0 : startDate.hashCode) +
    (endDate == null ? 0 : endDate.hashCode) +
    (school == null ? 0 : school.hashCode) +
    (typeOfEducation == null ? 0 : typeOfEducation.hashCode);

  @override
  String toString() => 'SchoolingInfoDto[startDate=$startDate, endDate=$endDate, school=$school, typeOfEducation=$typeOfEducation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (startDate != null) {
      json[r'startDate'] = startDate;
    }
    if (endDate != null) {
      json[r'endDate'] = endDate;
    }
    if (school != null) {
      json[r'school'] = school;
    }
    if (typeOfEducation != null) {
      json[r'typeOfEducation'] = typeOfEducation;
    }
    return json;
  }

  /// Returns a new [SchoolingInfoDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SchoolingInfoDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SchoolingInfoDto(
        startDate: mapValueOfType<int>(json, r'startDate'),
        endDate: mapValueOfType<int>(json, r'endDate'),
        school: mapValueOfType<String>(json, r'school'),
        typeOfEducation: CodeStubDto.fromJson(json[r'typeOfEducation']),
      );
    }
    return null;
  }

  static List<SchoolingInfoDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SchoolingInfoDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SchoolingInfoDto>[];

  static Map<String, SchoolingInfoDto> mapFromJson(dynamic json) {
    final map = <String, SchoolingInfoDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SchoolingInfoDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SchoolingInfoDto-objects as value to a dart map
  static Map<String, List<SchoolingInfoDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SchoolingInfoDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SchoolingInfoDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

