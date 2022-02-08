//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PeriodicityDto {
  /// Returns a new [PeriodicityDto] instance.
  PeriodicityDto({
    this.relatedCode,
    this.relatedPeriodicity,
  });

  CodeStubDto relatedCode;

  CodeStubDto relatedPeriodicity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PeriodicityDto &&
     other.relatedCode == relatedCode &&
     other.relatedPeriodicity == relatedPeriodicity;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (relatedCode == null ? 0 : relatedCode.hashCode) +
    (relatedPeriodicity == null ? 0 : relatedPeriodicity.hashCode);

  @override
  String toString() => 'PeriodicityDto[relatedCode=$relatedCode, relatedPeriodicity=$relatedPeriodicity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (relatedCode != null) {
      json[r'relatedCode'] = relatedCode;
    }
    if (relatedPeriodicity != null) {
      json[r'relatedPeriodicity'] = relatedPeriodicity;
    }
    return json;
  }

  /// Returns a new [PeriodicityDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PeriodicityDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PeriodicityDto(
        relatedCode: CodeStubDto.fromJson(json[r'relatedCode']),
        relatedPeriodicity: CodeStubDto.fromJson(json[r'relatedPeriodicity']),
      );
    }
    return null;
  }

  static List<PeriodicityDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PeriodicityDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PeriodicityDto>[];

  static Map<String, PeriodicityDto> mapFromJson(dynamic json) {
    final map = <String, PeriodicityDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PeriodicityDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PeriodicityDto-objects as value to a dart map
  static Map<String, List<PeriodicityDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PeriodicityDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PeriodicityDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

