//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GroupDto {
  /// Returns a new [GroupDto] instance.
  GroupDto({
    @required this.id,
    this.rev,
    this.deletionDate,
    this.name,
    this.password,
    this.servers = const [],
    @required this.superAdmin,
    this.properties = const {},
    this.superGroup,
  });

  /// The id of the group. We encourage using either a v4 UUID or a HL7 Id.
  String id;

  /// The revision of the group in the database, used for conflict management / optimistic locking.
  String rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  int deletionDate;

  /// Username for the group
  String name;

  /// Password for the group access
  String password;

  /// List of servers accessible to the group
  List<String> servers;

  /// Whether the group has a super admin permission, originally set to no access.
  bool superAdmin;

  /// Extra properties for the user. Those properties are typed (see class Property)
  Set<PropertyStubDto> properties;

  String superGroup;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupDto &&
     other.id == id &&
     other.rev == rev &&
     other.deletionDate == deletionDate &&
     other.name == name &&
     other.password == password &&
     other.servers == servers &&
     other.superAdmin == superAdmin &&
     other.properties == properties &&
     other.superGroup == superGroup;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (rev == null ? 0 : rev.hashCode) +
    (deletionDate == null ? 0 : deletionDate.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (password == null ? 0 : password.hashCode) +
    (servers == null ? 0 : servers.hashCode) +
    (superAdmin == null ? 0 : superAdmin.hashCode) +
    (properties == null ? 0 : properties.hashCode) +
    (superGroup == null ? 0 : superGroup.hashCode);

  @override
  String toString() => 'GroupDto[id=$id, rev=$rev, deletionDate=$deletionDate, name=$name, password=$password, servers=$servers, superAdmin=$superAdmin, properties=$properties, superGroup=$superGroup]';

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
    if (password != null) {
      json[r'password'] = password;
    }
    if (servers != null) {
      json[r'servers'] = servers;
    }
      json[r'superAdmin'] = superAdmin;
      json[r'properties'] = properties;
    if (superGroup != null) {
      json[r'superGroup'] = superGroup;
    }
    return json;
  }

  /// Returns a new [GroupDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GroupDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GroupDto(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        name: mapValueOfType<String>(json, r'name'),
        password: mapValueOfType<String>(json, r'password'),
        servers: json[r'servers'] is List
          ? (json[r'servers'] as List).cast<String>()
          : null,
        superAdmin: mapValueOfType<bool>(json, r'superAdmin'),
        properties: PropertyStubDto.listFromJson(json[r'properties']),
        superGroup: mapValueOfType<String>(json, r'superGroup'),
      );
    }
    return null;
  }

  static List<GroupDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GroupDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GroupDto>[];

  static Map<String, GroupDto> mapFromJson(dynamic json) {
    final map = <String, GroupDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GroupDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GroupDto-objects as value to a dart map
  static Map<String, List<GroupDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GroupDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GroupDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

