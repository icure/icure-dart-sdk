//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RegistrationSuccessDto {
  /// Returns a new [RegistrationSuccessDto] instance.
  RegistrationSuccessDto({
    @required this.groupId,
    @required this.userId,
    @required this.token,
  });

  String groupId;

  String userId;

  String token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegistrationSuccessDto &&
     other.groupId == groupId &&
     other.userId == userId &&
     other.token == token;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (groupId == null ? 0 : groupId.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (token == null ? 0 : token.hashCode);

  @override
  String toString() => 'RegistrationSuccessDto[groupId=$groupId, userId=$userId, token=$token]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'groupId'] = groupId;
      json[r'userId'] = userId;
      json[r'token'] = token;
    return json;
  }

  /// Returns a new [RegistrationSuccessDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegistrationSuccessDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RegistrationSuccessDto(
        groupId: mapValueOfType<String>(json, r'groupId'),
        userId: mapValueOfType<String>(json, r'userId'),
        token: mapValueOfType<String>(json, r'token'),
      );
    }
    return null;
  }

  static List<RegistrationSuccessDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RegistrationSuccessDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RegistrationSuccessDto>[];

  static Map<String, RegistrationSuccessDto> mapFromJson(dynamic json) {
    final map = <String, RegistrationSuccessDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RegistrationSuccessDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RegistrationSuccessDto-objects as value to a dart map
  static Map<String, List<RegistrationSuccessDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RegistrationSuccessDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RegistrationSuccessDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

