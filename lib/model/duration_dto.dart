//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DurationDto {
  /// Returns a new [DurationDto] instance.
  DurationDto({
    this.value,
    this.unit,
  });

  double value;

  CodeStubDto unit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DurationDto &&
     other.value == value &&
     other.unit == unit;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (value == null ? 0 : value.hashCode) +
    (unit == null ? 0 : unit.hashCode);

  @override
  String toString() => 'DurationDto[value=$value, unit=$unit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (value != null) {
      json[r'value'] = value;
    }
    if (unit != null) {
      json[r'unit'] = unit;
    }
    return json;
  }

  /// Returns a new [DurationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DurationDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return DurationDto(
        value: mapValueOfType<double>(json, r'value'),
        unit: CodeStubDto.fromJson(json[r'unit']),
      );
    }
    return null;
  }

  static List<DurationDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DurationDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DurationDto>[];

  static Map<String, DurationDto> mapFromJson(dynamic json) {
    final map = <String, DurationDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = DurationDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DurationDto-objects as value to a dart map
  static Map<String, List<DurationDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DurationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = DurationDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

