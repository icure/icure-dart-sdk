//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class DatabaseInitialisationDto {
  /// Returns a new [DatabaseInitialisationDto] instance.
  DatabaseInitialisationDto({
    this.users = const [],
    this.healthcareParties = const [],
    this.replication,
  });

  List<UserDto> users;

  List<HealthcarePartyDto> healthcareParties;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ReplicationDto? replication;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is DatabaseInitialisationDto && other.users == users && other.healthcareParties == healthcareParties &&
              other.replication == replication;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
  (users.hashCode) + (healthcareParties.hashCode) + (replication == null ? 0 : replication!.hashCode);

  @override
  String toString() => 'DatabaseInitialisationDto[users=$users, healthcareParties=$healthcareParties, replication=$replication]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'users'] = users;
    json[r'healthcareParties'] = healthcareParties;
    if (replication != null) {
      json[r'replication'] = replication;
    }
    return json;
  }

  /// Returns a new [DatabaseInitialisationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DatabaseInitialisationDto? fromJson(dynamic value) {
    if (value is DatabaseInitialisationDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DatabaseInitialisationDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DatabaseInitialisationDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DatabaseInitialisationDto(
        users: UserDto.listFromJson(json[r'users']) ?? const [],
        healthcareParties: HealthcarePartyDto.listFromJson(json[r'healthcareParties']) ?? const [],
        replication: ReplicationDto.fromJson(json[r'replication']),
      );
    }
    return null;
  }

  static List<DatabaseInitialisationDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DatabaseInitialisationDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DatabaseInitialisationDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DatabaseInitialisationDto> mapFromJson(dynamic json) {
    final map = <String, DatabaseInitialisationDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DatabaseInitialisationDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DatabaseInitialisationDto-objects as value to a dart map
  static Map<String, List<DatabaseInitialisationDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DatabaseInitialisationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DatabaseInitialisationDto.listFromJson(
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
