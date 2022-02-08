//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FormTemplateLayout {
  /// Returns a new [FormTemplateLayout] instance.
  FormTemplateLayout({
    @required this.form,
    this.sections = const [],
    this.description,
    this.keywords = const [],
  });

  String form;

  List<Section> sections;

  String description;

  List<String> keywords;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FormTemplateLayout &&
     other.form == form &&
     other.sections == sections &&
     other.description == description &&
     other.keywords == keywords;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (form == null ? 0 : form.hashCode) +
    (sections == null ? 0 : sections.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (keywords == null ? 0 : keywords.hashCode);

  @override
  String toString() => 'FormTemplateLayout[form=$form, sections=$sections, description=$description, keywords=$keywords]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'form'] = form;
      json[r'sections'] = sections;
    if (description != null) {
      json[r'description'] = description;
    }
    if (keywords != null) {
      json[r'keywords'] = keywords;
    }
    return json;
  }

  /// Returns a new [FormTemplateLayout] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FormTemplateLayout fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FormTemplateLayout(
        form: mapValueOfType<String>(json, r'form'),
        sections: Section.listFromJson(json[r'sections']),
        description: mapValueOfType<String>(json, r'description'),
        keywords: json[r'keywords'] is List
          ? (json[r'keywords'] as List).cast<String>()
          : null,
      );
    }
    return null;
  }

  static List<FormTemplateLayout> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FormTemplateLayout.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FormTemplateLayout>[];

  static Map<String, FormTemplateLayout> mapFromJson(dynamic json) {
    final map = <String, FormTemplateLayout>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FormTemplateLayout.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FormTemplateLayout-objects as value to a dart map
  static Map<String, List<FormTemplateLayout>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FormTemplateLayout>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FormTemplateLayout.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

