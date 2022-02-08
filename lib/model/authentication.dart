//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthenticationDto {
  /// Returns a new [AuthenticationDto] instance.
  AuthenticationDto({
    this.basic,
  });

  Basic basic;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthenticationDto &&
     other.basic == basic;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (basic == null ? 0 : basic.hashCode);

  @override
  String toString() => 'Authentication[basic=$basic]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (basic != null) {
      json[r'basic'] = basic;
    }
    return json;
  }

  /// Returns a new [Authentication] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthenticationDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AuthenticationDto(
        basic: Basic.fromJson(json[r'basic']),
      );
    }
    return null;
  }

  static List<AuthenticationDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AuthenticationDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AuthenticationDto>[];

  static Map<String, AuthenticationDto> mapFromJson(dynamic json) {
    final map = <String, AuthenticationDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AuthenticationDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Authentication-objects as value to a dart map
  static Map<String, List<AuthenticationDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AuthenticationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AuthenticationDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

