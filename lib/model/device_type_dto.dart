//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class DeviceTypeDto {
  /// Returns a new [DeviceTypeDto] instance.
  DeviceTypeDto({
    this.code,
    this.name,
    this.edqmCode,
    this.edqmDefinition,
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
  SamTextDto? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? edqmCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? edqmDefinition;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeviceTypeDto && other.code == code && other.name == name && other.edqmCode == edqmCode && other.edqmDefinition == edqmDefinition;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
  (code == null ? 0 : code!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (edqmCode == null ? 0 : edqmCode!.hashCode) +
      (edqmDefinition == null ? 0 : edqmDefinition!.hashCode);

  @override
  String toString() => 'DeviceTypeDto[code=$code, name=$name, edqmCode=$edqmCode, edqmDefinition=$edqmDefinition]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json[r'code'] = code;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (edqmCode != null) {
      json[r'edqmCode'] = edqmCode;
    }
    if (edqmDefinition != null) {
      json[r'edqmDefinition'] = edqmDefinition;
    }
    return json;
  }

  /// Returns a new [DeviceTypeDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeviceTypeDto? fromJson(dynamic value) {
    if (value is DeviceTypeDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeviceTypeDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeviceTypeDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeviceTypeDto(
        code: mapValueOfType<String>(json, r'code'),
        name: SamTextDto.fromJson(json[r'name']),
        edqmCode: mapValueOfType<String>(json, r'edqmCode'),
        edqmDefinition: mapValueOfType<String>(json, r'edqmDefinition'),
      );
    }
    return null;
  }

  static List<DeviceTypeDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DeviceTypeDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeviceTypeDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeviceTypeDto> mapFromJson(dynamic json) {
    final map = <String, DeviceTypeDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeviceTypeDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeviceTypeDto-objects as value to a dart map
  static Map<String, List<DeviceTypeDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DeviceTypeDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeviceTypeDto.listFromJson(
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
