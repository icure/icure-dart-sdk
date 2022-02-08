//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReplicationDto {
  /// Returns a new [ReplicationDto] instance.
  ReplicationDto({
    @required this.id,
    this.rev,
    this.deletionDate,
    this.name,
    this.context,
    this.databaseSynchronizations = const [],
  });

  String id;

  String rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  int deletionDate;

  String name;

  String context;

  List<DatabaseSynchronizationDto> databaseSynchronizations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReplicationDto &&
     other.id == id &&
     other.rev == rev &&
     other.deletionDate == deletionDate &&
     other.name == name &&
     other.context == context &&
     other.databaseSynchronizations == databaseSynchronizations;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (rev == null ? 0 : rev.hashCode) +
    (deletionDate == null ? 0 : deletionDate.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (context == null ? 0 : context.hashCode) +
    (databaseSynchronizations == null ? 0 : databaseSynchronizations.hashCode);

  @override
  String toString() => 'ReplicationDto[id=$id, rev=$rev, deletionDate=$deletionDate, name=$name, context=$context, databaseSynchronizations=$databaseSynchronizations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (rev != null) {
      json[r'rev'] = rev;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (context != null) {
      json[r'context'] = context;
    }
      json[r'databaseSynchronizations'] = databaseSynchronizations;
    return json;
  }

  /// Returns a new [ReplicationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReplicationDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ReplicationDto(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        name: mapValueOfType<String>(json, r'name'),
        context: mapValueOfType<String>(json, r'context'),
        databaseSynchronizations: DatabaseSynchronizationDto.listFromJson(json[r'databaseSynchronizations']),
      );
    }
    return null;
  }

  static List<ReplicationDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ReplicationDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ReplicationDto>[];

  static Map<String, ReplicationDto> mapFromJson(dynamic json) {
    final map = <String, ReplicationDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ReplicationDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ReplicationDto-objects as value to a dart map
  static Map<String, List<ReplicationDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ReplicationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ReplicationDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

