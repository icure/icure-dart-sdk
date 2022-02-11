//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class ReplicationInfoDto {
  /// Returns a new [ReplicationInfoDto] instance.
  ReplicationInfoDto({
    required this.active,
    required this.running,
    this.pendingFrom,
    this.pendingTo,
  });

  bool active;

  bool running;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pendingFrom;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pendingTo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReplicationInfoDto &&
     other.active == active &&
     other.running == running &&
     other.pendingFrom == pendingFrom &&
     other.pendingTo == pendingTo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (active.hashCode) +
    (running.hashCode) +
    (pendingFrom == null ? 0 : pendingFrom!.hashCode) +
    (pendingTo == null ? 0 : pendingTo!.hashCode);

  @override
  String toString() => 'ReplicationInfoDto[active=$active, running=$running, pendingFrom=$pendingFrom, pendingTo=$pendingTo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'active'] = active;
      json[r'running'] = running;
    if (pendingFrom != null) {
      json[r'pendingFrom'] = pendingFrom;
    }
    if (pendingTo != null) {
      json[r'pendingTo'] = pendingTo;
    }
    return json;
  }

  /// Returns a new [ReplicationInfoDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReplicationInfoDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReplicationInfoDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReplicationInfoDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReplicationInfoDto(
        active: mapValueOfType<bool>(json, r'active')!,
        running: mapValueOfType<bool>(json, r'running')!,
        pendingFrom: mapValueOfType<int>(json, r'pendingFrom'),
        pendingTo: mapValueOfType<int>(json, r'pendingTo'),
      );
    }
    return null;
  }

  static List<ReplicationInfoDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReplicationInfoDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReplicationInfoDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReplicationInfoDto> mapFromJson(dynamic json) {
    final map = <String, ReplicationInfoDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReplicationInfoDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReplicationInfoDto-objects as value to a dart map
  static Map<String, List<ReplicationInfoDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReplicationInfoDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReplicationInfoDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'active',
    'running',
  };
}

