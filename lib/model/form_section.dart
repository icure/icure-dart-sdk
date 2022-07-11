//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class FormSection {
  /// Returns a new [FormSection] instance.
  FormSection({
    this.icon,
    this.title,
    this.columns,
    this.formColumns = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? icon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? columns;

  List<FormColumn> formColumns;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FormSection && other.icon == icon && other.title == title && other.columns == columns && other.formColumns == formColumns;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (icon == null ? 0 : icon!.hashCode) +
      (title == null ? 0 : title!.hashCode) +
      (columns == null ? 0 : columns!.hashCode) +
      (formColumns.hashCode);

  @override
  String toString() => 'FormSection[icon=$icon, title=$title, columns=$columns, formColumns=$formColumns]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (icon != null) {
      json[r'icon'] = icon;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (columns != null) {
      json[r'columns'] = columns;
    }
    json[r'formColumns'] = formColumns;
    return json;
  }

  /// Returns a new [FormSection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FormSection? fromJson(dynamic value) {
    if (value is FormSection) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FormSection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FormSection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FormSection(
        icon: mapValueOfType<String>(json, r'icon'),
        title: mapValueOfType<String>(json, r'title'),
        columns: mapValueOfType<int>(json, r'columns'),
        formColumns: FormColumn.listFromJson(json[r'formColumns']) ?? const [],
      );
    }
    return null;
  }

  static List<FormSection>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FormSection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FormSection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FormSection> mapFromJson(dynamic json) {
    final map = <String, FormSection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FormSection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FormSection-objects as value to a dart map
  static Map<String, List<FormSection>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<FormSection>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FormSection.listFromJson(
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
  static const requiredKeys = <String>{};
}
