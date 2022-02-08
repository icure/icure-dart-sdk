//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthenticationTokenDto {
  /// Returns a new [AuthenticationTokenDto] instance.
  AuthenticationTokenDto({
    @required this.token,
    @required this.creationTime,
    @required this.validity,
  });

  /// Encrypted token
  String token;

  /// Validity starting time of the token
  int creationTime;

  /// Token validity in seconds
  int validity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthenticationTokenDto &&
     other.token == token &&
     other.creationTime == creationTime &&
     other.validity == validity;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (token == null ? 0 : token.hashCode) +
    (creationTime == null ? 0 : creationTime.hashCode) +
    (validity == null ? 0 : validity.hashCode);

  @override
  String toString() => 'AuthenticationTokenDto[token=$token, creationTime=$creationTime, validity=$validity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'token'] = token;
      json[r'creationTime'] = creationTime;
      json[r'validity'] = validity;
    return json;
  }

  /// Returns a new [AuthenticationTokenDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthenticationTokenDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AuthenticationTokenDto(
        token: mapValueOfType<String>(json, r'token'),
        creationTime: mapValueOfType<int>(json, r'creationTime'),
        validity: mapValueOfType<int>(json, r'validity'),
      );
    }
    return null;
  }

  static List<AuthenticationTokenDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AuthenticationTokenDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AuthenticationTokenDto>[];

  static Map<String, AuthenticationTokenDto> mapFromJson(dynamic json) {
    final map = <String, AuthenticationTokenDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AuthenticationTokenDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AuthenticationTokenDto-objects as value to a dart map
  static Map<String, List<AuthenticationTokenDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AuthenticationTokenDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AuthenticationTokenDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

