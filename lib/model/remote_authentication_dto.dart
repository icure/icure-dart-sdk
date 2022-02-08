//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RemoteAuthenticationDto {
  /// Returns a new [RemoteAuthenticationDto] instance.
  RemoteAuthenticationDto({
    this.basic,
  });

  BasicDto basic;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RemoteAuthenticationDto &&
     other.basic == basic;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (basic == null ? 0 : basic.hashCode);

  @override
  String toString() => 'RemoteAuthenticationDto[basic=$basic]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (basic != null) {
      json[r'basic'] = basic;
    }
    return json;
  }

  /// Returns a new [RemoteAuthenticationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RemoteAuthenticationDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RemoteAuthenticationDto(
        basic: BasicDto.fromJson(json[r'basic']),
      );
    }
    return null;
  }

  static List<RemoteAuthenticationDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RemoteAuthenticationDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RemoteAuthenticationDto>[];

  static Map<String, RemoteAuthenticationDto> mapFromJson(dynamic json) {
    final map = <String, RemoteAuthenticationDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RemoteAuthenticationDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RemoteAuthenticationDto-objects as value to a dart map
  static Map<String, List<RemoteAuthenticationDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RemoteAuthenticationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RemoteAuthenticationDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

