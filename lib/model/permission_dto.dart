//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PermissionDto {
  /// Returns a new [PermissionDto] instance.
  PermissionDto({
    this.grants = const {},
    this.revokes = const {},
  });

  /// Granted permissions.
  Set<PermissionItemDto> grants;

  /// Revoked permissions.
  Set<PermissionItemDto> revokes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PermissionDto &&
     other.grants == grants &&
     other.revokes == revokes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (grants.hashCode) +
    (revokes.hashCode);

  @override
  String toString() => 'PermissionDto[grants=$grants, revokes=$revokes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'grants'] = grants;
      json[r'revokes'] = revokes;
    return json;
  }

  /// Returns a new [PermissionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PermissionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PermissionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PermissionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PermissionDto(
        grants: PermissionItemDto.listFromJson(json[r'grants'])!.toSet(),
        revokes: PermissionItemDto.listFromJson(json[r'revokes'])!.toSet(),
      );
    }
    return null;
  }

  static List<PermissionDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PermissionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PermissionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PermissionDto> mapFromJson(dynamic json) {
    final map = <String, PermissionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PermissionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PermissionDto-objects as value to a dart map
  static Map<String, List<PermissionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PermissionDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PermissionDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'grants',
    'revokes',
  };
}

