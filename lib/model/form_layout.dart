//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? width;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? height;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? descr;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Tag? tag;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? guid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? group;

  List<FormSection> sections;

  List<String> importedServiceXPaths;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is FormLayout &&
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
  (name == null ? 0 : name!.hashCode) +
      (width == null ? 0 : width!.hashCode) +
      (height == null ? 0 : height!.hashCode) +
      (descr == null ? 0 : descr!.hashCode) +
      (tag == null ? 0 : tag!.hashCode) +
      (guid == null ? 0 : guid!.hashCode) +
      (group == null ? 0 : group!.hashCode) +
      (sections.hashCode) +
      (importedServiceXPaths.hashCode);

  @override
  String toString() =>
      'FormLayout[name=$name, width=$width, height=$height, descr=$descr, tag=$tag, guid=$guid, group=$group, sections=$sections, importedServiceXPaths=$importedServiceXPaths]';

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
    json[r'sections'] = sections;
    json[r'importedServiceXPaths'] = importedServiceXPaths;
    return json;
  }

  /// Returns a new [FormLayout] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FormLayout? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FormLayout[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FormLayout[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FormLayout(
        name: mapValueOfType<String>(json, r'name'),
        width: mapValueOfType<double>(json, r'width'),
        height: mapValueOfType<double>(json, r'height'),
        descr: mapValueOfType<String>(json, r'descr'),
        tag: Tag.fromJson(json[r'tag']),
        guid: mapValueOfType<String>(json, r'guid'),
        group: mapValueOfType<String>(json, r'group'),
        sections: FormSection.listFromJson(json[r'sections']) ?? const [],
        importedServiceXPaths: json[r'importedServiceXPaths'] is List
            ? (json[r'importedServiceXPaths'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<FormLayout>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FormLayout>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FormLayout.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FormLayout> mapFromJson(dynamic json) {
    final map = <String, FormLayout>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FormLayout.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FormLayout-objects as value to a dart map
  static Map<String, List<FormLayout>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FormLayout>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FormLayout.listFromJson(entry.value, growable: growable,);
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

