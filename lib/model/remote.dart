//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Remote {
  /// Returns a new [Remote] instance.
  Remote({
    @required this.url,
    this.auth,
  });

  String url;

  Authentication auth;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Remote &&
     other.url == url &&
     other.auth == auth;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (url == null ? 0 : url.hashCode) +
    (auth == null ? 0 : auth.hashCode);

  @override
  String toString() => 'Remote[url=$url, auth=$auth]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'url'] = url;
    if (auth != null) {
      json[r'auth'] = auth;
    }
    return json;
  }

  /// Returns a new [Remote] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Remote fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Remote(
        url: mapValueOfType<String>(json, r'url'),
        auth: Authentication.fromJson(json[r'auth']),
      );
    }
    return null;
  }

  static List<Remote> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Remote.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Remote>[];

  static Map<String, Remote> mapFromJson(dynamic json) {
    final map = <String, Remote>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Remote.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Remote-objects as value to a dart map
  static Map<String, List<Remote>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Remote>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Remote.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

