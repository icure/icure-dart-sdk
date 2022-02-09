//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CodeStubDto? relatedCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CodeStubDto? relatedPeriodicity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PeriodicityDto &&
     other.relatedCode == relatedCode &&
     other.relatedPeriodicity == relatedPeriodicity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (relatedCode == null ? 0 : relatedCode!.hashCode) +
    (relatedPeriodicity == null ? 0 : relatedPeriodicity!.hashCode);

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
  static PeriodicityDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PeriodicityDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PeriodicityDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PeriodicityDto(
        relatedCode: CodeStubDto.fromJson(json[r'relatedCode']),
        relatedPeriodicity: CodeStubDto.fromJson(json[r'relatedPeriodicity']),
      );
    }
    return null;
  }

  static List<PeriodicityDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PeriodicityDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PeriodicityDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PeriodicityDto> mapFromJson(dynamic json) {
    final map = <String, PeriodicityDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PeriodicityDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PeriodicityDto-objects as value to a dart map
  static Map<String, List<PeriodicityDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PeriodicityDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PeriodicityDto.listFromJson(entry.value, growable: growable,);
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

