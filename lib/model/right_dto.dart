//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class RightDto {
  /// Returns a new [RightDto] instance.
  RightDto({
    this.userId,
    this.read = false,
    this.write = false,
    this.administration = false,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  bool read;

  bool write;

  bool administration;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RightDto && other.userId == userId && other.read == read && other.write == write && other.administration == administration;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (userId == null ? 0 : userId!.hashCode) + (read.hashCode) + (write.hashCode) + (administration.hashCode);

  @override
  String toString() => 'RightDto[userId=$userId, read=$read, write=$write, administration=$administration]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (userId != null) {
      json[r'userId'] = userId;
    }
    json[r'read'] = read;
    json[r'write'] = write;
    json[r'administration'] = administration;
    return json;
  }

  /// Returns a new [RightDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RightDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RightDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RightDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RightDto(
        userId: mapValueOfType<String>(json, r'userId'),
        read: mapValueOfType<bool>(json, r'read')!,
        write: mapValueOfType<bool>(json, r'write')!,
        administration: mapValueOfType<bool>(json, r'administration')!,
      );
    }
    return null;
  }

  static List<RightDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RightDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RightDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RightDto> mapFromJson(dynamic json) {
    final map = <String, RightDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RightDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RightDto-objects as value to a dart map
  static Map<String, List<RightDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RightDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RightDto.listFromJson(
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
  static const requiredKeys = <String>{
    'read',
    'write',
    'administration',
  };
}
