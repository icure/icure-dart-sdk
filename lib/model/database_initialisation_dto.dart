//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DatabaseInitialisationDto {
  /// Returns a new [DatabaseInitialisationDto] instance.
  DatabaseInitialisationDto({
    this.users = const [],
    this.healthcareParties = const [],
    this.replication,
  });

  List<UserDto> users;

  List<HealthcarePartyDto> healthcareParties;

  ReplicationDto replication;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DatabaseInitialisationDto &&
     other.users == users &&
     other.healthcareParties == healthcareParties &&
     other.replication == replication;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (users == null ? 0 : users.hashCode) +
    (healthcareParties == null ? 0 : healthcareParties.hashCode) +
    (replication == null ? 0 : replication.hashCode);

  @override
  String toString() => 'DatabaseInitialisationDto[users=$users, healthcareParties=$healthcareParties, replication=$replication]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (users != null) {
      json[r'users'] = users;
    }
    if (healthcareParties != null) {
      json[r'healthcareParties'] = healthcareParties;
    }
    if (replication != null) {
      json[r'replication'] = replication;
    }
    return json;
  }

  /// Returns a new [DatabaseInitialisationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DatabaseInitialisationDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return DatabaseInitialisationDto(
        users: UserDto.listFromJson(json[r'users']),
        healthcareParties: HealthcarePartyDto.listFromJson(json[r'healthcareParties']),
        replication: ReplicationDto.fromJson(json[r'replication']),
      );
    }
    return null;
  }

  static List<DatabaseInitialisationDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DatabaseInitialisationDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DatabaseInitialisationDto>[];

  static Map<String, DatabaseInitialisationDto> mapFromJson(dynamic json) {
    final map = <String, DatabaseInitialisationDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = DatabaseInitialisationDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DatabaseInitialisationDto-objects as value to a dart map
  static Map<String, List<DatabaseInitialisationDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DatabaseInitialisationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = DatabaseInitialisationDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

