//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserGroupDto {
  /// Returns a new [UserGroupDto] instance.
  UserGroupDto({
    this.groupId,
    this.userId,
    this.groupName,
  });

  String groupId;

  String userId;

  String groupName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserGroupDto &&
     other.groupId == groupId &&
     other.userId == userId &&
     other.groupName == groupName;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (groupId == null ? 0 : groupId.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (groupName == null ? 0 : groupName.hashCode);

  @override
  String toString() => 'UserGroupDto[groupId=$groupId, userId=$userId, groupName=$groupName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (groupId != null) {
      json[r'groupId'] = groupId;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    if (groupName != null) {
      json[r'groupName'] = groupName;
    }
    return json;
  }

  /// Returns a new [UserGroupDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserGroupDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return UserGroupDto(
        groupId: mapValueOfType<String>(json, r'groupId'),
        userId: mapValueOfType<String>(json, r'userId'),
        groupName: mapValueOfType<String>(json, r'groupName'),
      );
    }
    return null;
  }

  static List<UserGroupDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(UserGroupDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <UserGroupDto>[];

  static Map<String, UserGroupDto> mapFromJson(dynamic json) {
    final map = <String, UserGroupDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = UserGroupDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UserGroupDto-objects as value to a dart map
  static Map<String, List<UserGroupDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UserGroupDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = UserGroupDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

