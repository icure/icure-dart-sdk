//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class FormTemplateLayout {
  /// Returns a new [FormTemplateLayout] instance.
  FormTemplateLayout({
    required this.form,
    this.sections = const [],
    this.description,
    this.keywords = const [],
  });

  String form;

  List<Section> sections;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  List<String> keywords;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FormTemplateLayout &&
          other.form == form &&
          other.sections == sections &&
          other.description == description &&
          other.keywords == keywords;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (form.hashCode) + (sections.hashCode) + (description == null ? 0 : description!.hashCode) + (keywords.hashCode);

  @override
  String toString() => 'FormTemplateLayout[form=$form, sections=$sections, description=$description, keywords=$keywords]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'form'] = form;
    json[r'sections'] = sections;
    if (description != null) {
      json[r'description'] = description;
    }
    json[r'keywords'] = keywords;
    return json;
  }

  /// Returns a new [FormTemplateLayout] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FormTemplateLayout? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FormTemplateLayout[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FormTemplateLayout[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FormTemplateLayout(
        form: mapValueOfType<String>(json, r'form')!,
        sections: Section.listFromJson(json[r'sections'])!,
        description: mapValueOfType<String>(json, r'description'),
        keywords: json[r'keywords'] is List ? (json[r'keywords'] as List).cast<String>() : const [],
      );
    }
    return null;
  }

  static List<FormTemplateLayout>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FormTemplateLayout>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FormTemplateLayout.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FormTemplateLayout> mapFromJson(dynamic json) {
    final map = <String, FormTemplateLayout>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FormTemplateLayout.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FormTemplateLayout-objects as value to a dart map
  static Map<String, List<FormTemplateLayout>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<FormTemplateLayout>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FormTemplateLayout.listFromJson(
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
    'form',
    'sections',
  };
}
