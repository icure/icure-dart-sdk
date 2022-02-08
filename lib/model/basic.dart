//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Basic {
  /// Returns a new [Basic] instance.
  Basic({
    @required this.username,
    @required this.password,
  });

  String username;

  String password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Basic &&
     other.username == username &&
     other.password == password;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (username == null ? 0 : username.hashCode) +
    (password == null ? 0 : password.hashCode);

  @override
  String toString() => 'Basic[username=$username, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'username'] = username;
      json[r'password'] = password;
    return json;
  }

  /// Returns a new [Basic] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Basic fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Basic(
        username: mapValueOfType<String>(json, r'username'),
        password: mapValueOfType<String>(json, r'password'),
      );
    }
    return null;
  }

  static List<Basic> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Basic.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Basic>[];

  static Map<String, Basic> mapFromJson(dynamic json) {
    final map = <String, Basic>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Basic.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Basic-objects as value to a dart map
  static Map<String, List<Basic>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Basic>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Basic.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

