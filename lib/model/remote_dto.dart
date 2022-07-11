//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class RemoteDto {
  /// Returns a new [RemoteDto] instance.
  RemoteDto({
    required this.url,
    this.auth,
  });

  String url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RemoteAuthenticationDto? auth;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RemoteDto && other.url == url && other.auth == auth;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (url.hashCode) + (auth == null ? 0 : auth!.hashCode);

  @override
  String toString() => 'RemoteDto[url=$url, auth=$auth]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'url'] = url;
    if (auth != null) {
      json[r'auth'] = auth;
    }
    return json;
  }

  /// Returns a new [RemoteDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RemoteDto? fromJson(dynamic value) {
    if (value is RemoteDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RemoteDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RemoteDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RemoteDto(
        url: mapValueOfType<String>(json, r'url')!,
        auth: RemoteAuthenticationDto.fromJson(json[r'auth']),
      );
    }
    return null;
  }

  static List<RemoteDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RemoteDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RemoteDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RemoteDto> mapFromJson(dynamic json) {
    final map = <String, RemoteDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RemoteDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RemoteDto-objects as value to a dart map
  static Map<String, List<RemoteDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RemoteDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RemoteDto.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'url',
  };
}
