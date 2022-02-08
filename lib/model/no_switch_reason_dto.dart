//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NoSwitchReasonDto {
  /// Returns a new [NoSwitchReasonDto] instance.
  NoSwitchReasonDto({
    this.code,
    this.description,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SamTextDto? description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NoSwitchReasonDto &&
     other.code == code &&
     other.description == description;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code == null ? 0 : code!.hashCode) +
    (description == null ? 0 : description!.hashCode);

  @override
  String toString() => 'NoSwitchReasonDto[code=$code, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json[r'code'] = code;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    return json;
  }

  /// Returns a new [NoSwitchReasonDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NoSwitchReasonDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NoSwitchReasonDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NoSwitchReasonDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NoSwitchReasonDto(
        code: mapValueOfType<String>(json, r'code'),
        description: SamTextDto.fromJson(json[r'description']),
      );
    }
    return null;
  }

  static List<NoSwitchReasonDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NoSwitchReasonDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NoSwitchReasonDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NoSwitchReasonDto> mapFromJson(dynamic json) {
    final map = <String, NoSwitchReasonDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NoSwitchReasonDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NoSwitchReasonDto-objects as value to a dart map
  static Map<String, List<NoSwitchReasonDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NoSwitchReasonDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NoSwitchReasonDto.listFromJson(entry.value, growable: growable,);
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

