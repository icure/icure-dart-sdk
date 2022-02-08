//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FormColumn {
  /// Returns a new [FormColumn] instance.
  FormColumn({
    this.formDataList = const [],
    this.columns,
    this.shouldDisplay,
  });

  List<FormLayoutData> formDataList;

  String columns;

  bool shouldDisplay;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FormColumn &&
     other.formDataList == formDataList &&
     other.columns == columns &&
     other.shouldDisplay == shouldDisplay;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (formDataList == null ? 0 : formDataList.hashCode) +
    (columns == null ? 0 : columns.hashCode) +
    (shouldDisplay == null ? 0 : shouldDisplay.hashCode);

  @override
  String toString() => 'FormColumn[formDataList=$formDataList, columns=$columns, shouldDisplay=$shouldDisplay]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (formDataList != null) {
      json[r'formDataList'] = formDataList;
    }
    if (columns != null) {
      json[r'columns'] = columns;
    }
    if (shouldDisplay != null) {
      json[r'shouldDisplay'] = shouldDisplay;
    }
    return json;
  }

  /// Returns a new [FormColumn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FormColumn fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FormColumn(
        formDataList: FormLayoutData.listFromJson(json[r'formDataList']),
        columns: mapValueOfType<String>(json, r'columns'),
        shouldDisplay: mapValueOfType<bool>(json, r'shouldDisplay'),
      );
    }
    return null;
  }

  static List<FormColumn> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FormColumn.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FormColumn>[];

  static Map<String, FormColumn> mapFromJson(dynamic json) {
    final map = <String, FormColumn>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FormColumn.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FormColumn-objects as value to a dart map
  static Map<String, List<FormColumn>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FormColumn>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FormColumn.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

