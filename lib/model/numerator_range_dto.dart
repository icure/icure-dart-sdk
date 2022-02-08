//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NumeratorRangeDto {
  /// Returns a new [NumeratorRangeDto] instance.
  NumeratorRangeDto({
    this.min,
    this.max,
    this.unit,
  });

  num min;

  num max;

  String unit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NumeratorRangeDto &&
     other.min == min &&
     other.max == max &&
     other.unit == unit;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (min == null ? 0 : min.hashCode) +
    (max == null ? 0 : max.hashCode) +
    (unit == null ? 0 : unit.hashCode);

  @override
  String toString() => 'NumeratorRangeDto[min=$min, max=$max, unit=$unit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (min != null) {
      json[r'min'] = min;
    }
    if (max != null) {
      json[r'max'] = max;
    }
    if (unit != null) {
      json[r'unit'] = unit;
    }
    return json;
  }

  /// Returns a new [NumeratorRangeDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NumeratorRangeDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NumeratorRangeDto(
        min: json[r'min'] == null
          ? null
          : num.parse(json[r'min'].toString()),
        max: json[r'max'] == null
          ? null
          : num.parse(json[r'max'].toString()),
        unit: mapValueOfType<String>(json, r'unit'),
      );
    }
    return null;
  }

  static List<NumeratorRangeDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NumeratorRangeDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NumeratorRangeDto>[];

  static Map<String, NumeratorRangeDto> mapFromJson(dynamic json) {
    final map = <String, NumeratorRangeDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NumeratorRangeDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NumeratorRangeDto-objects as value to a dart map
  static Map<String, List<NumeratorRangeDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NumeratorRangeDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NumeratorRangeDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

