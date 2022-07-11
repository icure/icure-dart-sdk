//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class AnnotationDto {
  /// Returns a new [AnnotationDto] instance.
  AnnotationDto({
    required this.id,
    this.author,
    this.created,
    this.modified,
    this.text,
    this.location,
  });

  /// The Id of the Annotation. We encourage using either a v4 UUID or a HL7 Id.
  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? author;

  /// The timestamp (unix epoch in ms) of creation of this note, will be filled automatically if missing. Not enforced by the application server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

  /// The timestamp (unix epoch in ms) of the latest modification of this note, will be filled automatically if missing. Not enforced by the application server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? modified;

  /// Text contained in the note, written as markdown.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  /// Defines to which part of the corresponding information the note is related to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? location;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnnotationDto &&
          other.id == id &&
          other.author == author &&
          other.created == created &&
          other.modified == modified &&
          other.text == text &&
          other.location == location;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (author == null ? 0 : author!.hashCode) +
      (created == null ? 0 : created!.hashCode) +
      (modified == null ? 0 : modified!.hashCode) +
      (text == null ? 0 : text!.hashCode) +
      (location == null ? 0 : location!.hashCode);

  @override
  String toString() => 'AnnotationDto[id=$id, author=$author, created=$created, modified=$modified, text=$text, location=$location]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = id;
    if (author != null) {
      json[r'author'] = author;
    }
    if (created != null) {
      json[r'created'] = created;
    }
    if (modified != null) {
      json[r'modified'] = modified;
    }
    if (text != null) {
      json[r'text'] = text;
    }
    if (location != null) {
      json[r'location'] = location;
    }
    return json;
  }

  /// Returns a new [AnnotationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnnotationDto? fromJson(dynamic value) {
    if (value is AnnotationDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnnotationDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnnotationDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnnotationDto(
        id: mapValueOfType<String>(json, r'id')!,
        author: mapValueOfType<String>(json, r'author'),
        created: mapValueOfType<int>(json, r'created'),
        modified: mapValueOfType<int>(json, r'modified'),
        text: mapValueOfType<String>(json, r'text'),
        location: mapValueOfType<String>(json, r'location'),
      );
    }
    return null;
  }

  static List<AnnotationDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AnnotationDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnnotationDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnnotationDto> mapFromJson(dynamic json) {
    final map = <String, AnnotationDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnnotationDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnnotationDto-objects as value to a dart map
  static Map<String, List<AnnotationDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AnnotationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnnotationDto.listFromJson(
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
    'id',
  };
}
