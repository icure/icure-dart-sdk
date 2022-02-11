//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class StrengthRangeDto {
  /// Returns a new [StrengthRangeDto] instance.
  StrengthRangeDto({
    this.numeratorRange,
    this.denominator,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumeratorRangeDto? numeratorRange;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  QuantityDto? denominator;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is StrengthRangeDto &&
          other.numeratorRange == numeratorRange &&
          other.denominator == denominator;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
  (numeratorRange == null ? 0 : numeratorRange!.hashCode) +
      (denominator == null ? 0 : denominator!.hashCode);

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
  static StrengthRangeDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StrengthRangeDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StrengthRangeDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StrengthRangeDto(
        numeratorRange: NumeratorRangeDto.fromJson(json[r'numeratorRange']),
        denominator: QuantityDto.fromJson(json[r'denominator']),
      );
    }
    return null;
  }

  static List<StrengthRangeDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StrengthRangeDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StrengthRangeDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StrengthRangeDto> mapFromJson(dynamic json) {
    final map = <String, StrengthRangeDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StrengthRangeDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StrengthRangeDto-objects as value to a dart map
  static Map<String, List<StrengthRangeDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StrengthRangeDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StrengthRangeDto.listFromJson(entry.value, growable: growable,);
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

