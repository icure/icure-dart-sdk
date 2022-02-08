//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FormLayout {
  /// Returns a new [FormLayout] instance.
  FormLayout({
    this.name,
    this.width,
    this.height,
    this.descr,
    this.tag,
    this.guid,
    this.group,
    this.sections = const [],
    this.importedServiceXPaths = const [],
  });

  String name;

  double width;

  double height;

  String descr;

  Tag tag;

  String guid;

  String group;

  List<FormSection> sections;

  List<String> importedServiceXPaths;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FormLayout &&
     other.name == name &&
     other.width == width &&
     other.height == height &&
     other.descr == descr &&
     other.tag == tag &&
     other.guid == guid &&
     other.group == group &&
     other.sections == sections &&
     other.importedServiceXPaths == importedServiceXPaths;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (name == null ? 0 : name.hashCode) +
    (width == null ? 0 : width.hashCode) +
    (height == null ? 0 : height.hashCode) +
    (descr == null ? 0 : descr.hashCode) +
    (tag == null ? 0 : tag.hashCode) +
    (guid == null ? 0 : guid.hashCode) +
    (group == null ? 0 : group.hashCode) +
    (sections == null ? 0 : sections.hashCode) +
    (importedServiceXPaths == null ? 0 : importedServiceXPaths.hashCode);

  @override
  String toString() => 'FormLayout[name=$name, width=$width, height=$height, descr=$descr, tag=$tag, guid=$guid, group=$group, sections=$sections, importedServiceXPaths=$importedServiceXPaths]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (width != null) {
      json[r'width'] = width;
    }
    if (height != null) {
      json[r'height'] = height;
    }
    if (descr != null) {
      json[r'descr'] = descr;
    }
    if (tag != null) {
      json[r'tag'] = tag;
    }
    if (guid != null) {
      json[r'guid'] = guid;
    }
    if (group != null) {
      json[r'group'] = group;
    }
    if (sections != null) {
      json[r'sections'] = sections;
    }
    if (importedServiceXPaths != null) {
      json[r'importedServiceXPaths'] = importedServiceXPaths;
    }
    return json;
  }

  /// Returns a new [FormLayout] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FormLayout fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FormLayout(
        name: mapValueOfType<String>(json, r'name'),
        width: mapValueOfType<double>(json, r'width'),
        height: mapValueOfType<double>(json, r'height'),
        descr: mapValueOfType<String>(json, r'descr'),
        tag: Tag.fromJson(json[r'tag']),
        guid: mapValueOfType<String>(json, r'guid'),
        group: mapValueOfType<String>(json, r'group'),
        sections: FormSection.listFromJson(json[r'sections']),
        importedServiceXPaths: json[r'importedServiceXPaths'] is List
          ? (json[r'importedServiceXPaths'] as List).cast<String>()
          : null,
      );
    }
    return null;
  }

  static List<FormLayout> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FormLayout.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FormLayout>[];

  static Map<String, FormLayout> mapFromJson(dynamic json) {
    final map = <String, FormLayout>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FormLayout.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FormLayout-objects as value to a dart map
  static Map<String, List<FormLayout>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FormLayout>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FormLayout.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

