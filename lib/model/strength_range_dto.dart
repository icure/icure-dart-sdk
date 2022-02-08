//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StrengthRangeDto {
  /// Returns a new [StrengthRangeDto] instance.
  StrengthRangeDto({
    this.numeratorRange,
    this.denominator,
  });

  NumeratorRangeDto numeratorRange;

  QuantityDto denominator;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StrengthRangeDto &&
     other.numeratorRange == numeratorRange &&
     other.denominator == denominator;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (numeratorRange == null ? 0 : numeratorRange.hashCode) +
    (denominator == null ? 0 : denominator.hashCode);

  @override
  String toString() => 'StrengthRangeDto[numeratorRange=$numeratorRange, denominator=$denominator]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (numeratorRange != null) {
      json[r'numeratorRange'] = numeratorRange;
    }
    if (denominator != null) {
      json[r'denominator'] = denominator;
    }
    return json;
  }

  /// Returns a new [StrengthRangeDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StrengthRangeDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return StrengthRangeDto(
        numeratorRange: NumeratorRangeDto.fromJson(json[r'numeratorRange']),
        denominator: QuantityDto.fromJson(json[r'denominator']),
      );
    }
    return null;
  }

  static List<StrengthRangeDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(StrengthRangeDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <StrengthRangeDto>[];

  static Map<String, StrengthRangeDto> mapFromJson(dynamic json) {
    final map = <String, StrengthRangeDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = StrengthRangeDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of StrengthRangeDto-objects as value to a dart map
  static Map<String, List<StrengthRangeDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<StrengthRangeDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = StrengthRangeDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

