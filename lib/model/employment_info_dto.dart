//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmploymentInfoDto {
  /// Returns a new [EmploymentInfoDto] instance.
  EmploymentInfoDto({
    this.startDate,
    this.endDate,
    this.professionType,
    this.employer,
  });

  int startDate;

  int endDate;

  CodeStubDto professionType;

  EmployerDto employer;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmploymentInfoDto &&
     other.startDate == startDate &&
     other.endDate == endDate &&
     other.professionType == professionType &&
     other.employer == employer;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (startDate == null ? 0 : startDate.hashCode) +
    (endDate == null ? 0 : endDate.hashCode) +
    (professionType == null ? 0 : professionType.hashCode) +
    (employer == null ? 0 : employer.hashCode);

  @override
  String toString() => 'EmploymentInfoDto[startDate=$startDate, endDate=$endDate, professionType=$professionType, employer=$employer]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (startDate != null) {
      json[r'startDate'] = startDate;
    }
    if (endDate != null) {
      json[r'endDate'] = endDate;
    }
    if (professionType != null) {
      json[r'professionType'] = professionType;
    }
    if (employer != null) {
      json[r'employer'] = employer;
    }
    return json;
  }

  /// Returns a new [EmploymentInfoDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmploymentInfoDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return EmploymentInfoDto(
        startDate: mapValueOfType<int>(json, r'startDate'),
        endDate: mapValueOfType<int>(json, r'endDate'),
        professionType: CodeStubDto.fromJson(json[r'professionType']),
        employer: EmployerDto.fromJson(json[r'employer']),
      );
    }
    return null;
  }

  static List<EmploymentInfoDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(EmploymentInfoDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <EmploymentInfoDto>[];

  static Map<String, EmploymentInfoDto> mapFromJson(dynamic json) {
    final map = <String, EmploymentInfoDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = EmploymentInfoDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EmploymentInfoDto-objects as value to a dart map
  static Map<String, List<EmploymentInfoDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EmploymentInfoDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = EmploymentInfoDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

