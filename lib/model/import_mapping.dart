//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class ImportMapping {
  /// Returns a new [ImportMapping] instance.
  ImportMapping({
    this.lifecycle,
    this.content,
    this.cdLocal,
    this.label = const {},
    this.tags = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lifecycle;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cdLocal;

  Map<String, String> label;

  Set<CodeStub> tags;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImportMapping &&
          other.lifecycle == lifecycle &&
          other.content == content &&
          other.cdLocal == cdLocal &&
          other.label == label &&
          other.tags == tags;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (lifecycle == null ? 0 : lifecycle!.hashCode) +
      (content == null ? 0 : content!.hashCode) +
      (cdLocal == null ? 0 : cdLocal!.hashCode) +
      (label.hashCode) +
      (tags.hashCode);

  @override
  String toString() => 'ImportMapping[lifecycle=$lifecycle, content=$content, cdLocal=$cdLocal, label=$label, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (lifecycle != null) {
      json[r'lifecycle'] = lifecycle;
    }
    if (content != null) {
      json[r'content'] = content;
    }
    if (cdLocal != null) {
      json[r'cdLocal'] = cdLocal;
    }
    json[r'label'] = label;
    json[r'tags'] = tags.toList();
    return json;
  }

  /// Returns a new [ImportMapping] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImportMapping? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImportMapping[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImportMapping[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImportMapping(
        lifecycle: mapValueOfType<String>(json, r'lifecycle'),
        content: mapValueOfType<String>(json, r'content'),
        cdLocal: mapValueOfType<String>(json, r'cdLocal'),
        label: mapCastOfType<String, String>(json, r'label')!,
        tags: CodeStub.listFromJson(json[r'tags'])!.toSet(),
      );
    }
    return null;
  }

  static List<ImportMapping>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ImportMapping>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImportMapping.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImportMapping> mapFromJson(dynamic json) {
    final map = <String, ImportMapping>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImportMapping.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImportMapping-objects as value to a dart map
  static Map<String, List<ImportMapping>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ImportMapping>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImportMapping.listFromJson(
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
    'label',
    'tags',
  };
}
