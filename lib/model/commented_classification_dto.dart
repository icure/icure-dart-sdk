//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class CommentedClassificationDto {
  /// Returns a new [CommentedClassificationDto] instance.
  CommentedClassificationDto({
    this.title,
    this.url,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SamTextDto? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SamTextDto? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CommentedClassificationDto &&
     other.title == title &&
     other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'CommentedClassificationDto[title=$title, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (title != null) {
      json[r'title'] = title;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    return json;
  }

  /// Returns a new [CommentedClassificationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CommentedClassificationDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CommentedClassificationDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CommentedClassificationDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CommentedClassificationDto(
        title: SamTextDto.fromJson(json[r'title']),
        url: SamTextDto.fromJson(json[r'url']),
      );
    }
    return null;
  }

  static List<CommentedClassificationDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CommentedClassificationDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CommentedClassificationDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CommentedClassificationDto> mapFromJson(dynamic json) {
    final map = <String, CommentedClassificationDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CommentedClassificationDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CommentedClassificationDto-objects as value to a dart map
  static Map<String, List<CommentedClassificationDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CommentedClassificationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CommentedClassificationDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

