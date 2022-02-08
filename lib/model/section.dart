//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Section {
  /// Returns a new [Section] instance.
  Section({
    @required this.section,
    this.fields = const [],
    this.description,
    this.keywords = const [],
  });

  String section;

  List<Object> fields;

  String description;

  List<String> keywords;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Section &&
     other.section == section &&
     other.fields == fields &&
     other.description == description &&
     other.keywords == keywords;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (section == null ? 0 : section.hashCode) +
    (fields == null ? 0 : fields.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (keywords == null ? 0 : keywords.hashCode);

  @override
  String toString() => 'Section[section=$section, fields=$fields, description=$description, keywords=$keywords]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'section'] = section;
      json[r'fields'] = fields;
    if (description != null) {
      json[r'description'] = description;
    }
    if (keywords != null) {
      json[r'keywords'] = keywords;
    }
    return json;
  }

  /// Returns a new [Section] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Section fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Section(
        section: mapValueOfType<String>(json, r'section'),
        fields: List.from((json[r'fields' as List].cast<Object>())),
        description: mapValueOfType<String>(json, r'description'),
        keywords: json[r'keywords'] is List
            ? (json[r'keywords'] as List).cast<String>()
            : null,
      );
    }
    return null;
  }

  static List<Section> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Section.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Section>[];

  static Map<String, Section> mapFromJson(dynamic json) {
    final map = <String, Section>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Section.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Section-objects as value to a dart map
  static Map<String, List<Section>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Section>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Section.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

