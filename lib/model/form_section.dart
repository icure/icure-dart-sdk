//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FormSection {
  /// Returns a new [FormSection] instance.
  FormSection({
    this.icon,
    this.title,
    this.columns,
    this.formColumns = const [],
  });

  String icon;

  String title;

  int columns;

  List<FormColumn> formColumns;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FormSection &&
     other.icon == icon &&
     other.title == title &&
     other.columns == columns &&
     other.formColumns == formColumns;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (icon == null ? 0 : icon.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (columns == null ? 0 : columns.hashCode) +
    (formColumns == null ? 0 : formColumns.hashCode);

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
    if (formColumns != null) {
      json[r'formColumns'] = formColumns;
    }
    return json;
  }

  /// Returns a new [FormSection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FormSection fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FormSection(
        icon: mapValueOfType<String>(json, r'icon'),
        title: mapValueOfType<String>(json, r'title'),
        columns: mapValueOfType<int>(json, r'columns'),
        formColumns: FormColumn.listFromJson(json[r'formColumns']),
      );
    }
    return null;
  }

  static List<FormSection> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FormSection.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FormSection>[];

  static Map<String, FormSection> mapFromJson(dynamic json) {
    final map = <String, FormSection>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FormSection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FormSection-objects as value to a dart map
  static Map<String, List<FormSection>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FormSection>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FormSection.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

