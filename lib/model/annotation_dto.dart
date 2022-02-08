//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AnnotationDto {
  /// Returns a new [AnnotationDto] instance.
  AnnotationDto({
    @required this.id,
    this.author,
    this.created,
    this.modified,
    this.text,
    this.location,
  });

  /// The Id of the Annotation. We encourage using either a v4 UUID or a HL7 Id.
  String id;

  String author;

  /// The timestamp (unix epoch in ms) of creation of this note, will be filled automatically if missing. Not enforced by the application server.
  int created;

  /// The timestamp (unix epoch in ms) of the latest modification of this note, will be filled automatically if missing. Not enforced by the application server.
  int modified;

  /// Text contained in the note, written as markdown.
  String text;

  /// Defines to which part of the corresponding information the note is related to.
  String location;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnnotationDto &&
     other.id == id &&
     other.author == author &&
     other.created == created &&
     other.modified == modified &&
     other.text == text &&
     other.location == location;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (author == null ? 0 : author.hashCode) +
    (created == null ? 0 : created.hashCode) +
    (modified == null ? 0 : modified.hashCode) +
    (text == null ? 0 : text.hashCode) +
    (location == null ? 0 : location.hashCode);

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
  static AnnotationDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AnnotationDto(
        id: mapValueOfType<String>(json, r'id'),
        author: mapValueOfType<String>(json, r'author'),
        created: mapValueOfType<int>(json, r'created'),
        modified: mapValueOfType<int>(json, r'modified'),
        text: mapValueOfType<String>(json, r'text'),
        location: mapValueOfType<String>(json, r'location'),
      );
    }
    return null;
  }

  static List<AnnotationDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AnnotationDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AnnotationDto>[];

  static Map<String, AnnotationDto> mapFromJson(dynamic json) {
    final map = <String, AnnotationDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AnnotationDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AnnotationDto-objects as value to a dart map
  static Map<String, List<AnnotationDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AnnotationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AnnotationDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

