//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class SamTextDto {
  /// Returns a new [SamTextDto] instance.
  SamTextDto({
    this.fr,
    this.nl,
    this.de,
    this.en,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fr;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? de;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? en;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is SamTextDto && other.fr == fr && other.nl == nl && other.de == de && other.en == en;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (fr == null ? 0 : fr!.hashCode) + (nl == null ? 0 : nl!.hashCode) + (de == null ? 0 : de!.hashCode) + (en == null ? 0 : en!.hashCode);

  @override
  String toString() => 'SamTextDto[fr=$fr, nl=$nl, de=$de, en=$en]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fr != null) {
      json[r'fr'] = fr;
    }
    if (nl != null) {
      json[r'nl'] = nl;
    }
    if (de != null) {
      json[r'de'] = de;
    }
    if (en != null) {
      json[r'en'] = en;
    }
    return json;
  }

  /// Returns a new [SamTextDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SamTextDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SamTextDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SamTextDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SamTextDto(
        fr: mapValueOfType<String>(json, r'fr'),
        nl: mapValueOfType<String>(json, r'nl'),
        de: mapValueOfType<String>(json, r'de'),
        en: mapValueOfType<String>(json, r'en'),
      );
    }
    return null;
  }

  static List<SamTextDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SamTextDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SamTextDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SamTextDto> mapFromJson(dynamic json) {
    final map = <String, SamTextDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SamTextDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SamTextDto-objects as value to a dart map
  static Map<String, List<SamTextDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SamTextDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SamTextDto.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
