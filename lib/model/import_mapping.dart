//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImportMapping {
  /// Returns a new [ImportMapping] instance.
  ImportMapping({
    this.lifecycle,
    this.content,
    this.cdLocal,
    this.label = const {},
    this.tags = const {},
  });

  String lifecycle;

  String content;

  String cdLocal;

  Map<String, String> label;

  Set<CodeStub> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImportMapping &&
     other.lifecycle == lifecycle &&
     other.content == content &&
     other.cdLocal == cdLocal &&
     other.label == label &&
     other.tags == tags;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (lifecycle == null ? 0 : lifecycle.hashCode) +
    (content == null ? 0 : content.hashCode) +
    (cdLocal == null ? 0 : cdLocal.hashCode) +
    (label == null ? 0 : label.hashCode) +
    (tags == null ? 0 : tags.hashCode);

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
      json[r'tags'] = tags;
    return json;
  }

  /// Returns a new [ImportMapping] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImportMapping fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ImportMapping(
        lifecycle: mapValueOfType<String>(json, r'lifecycle'),
        content: mapValueOfType<String>(json, r'content'),
        cdLocal: mapValueOfType<String>(json, r'cdLocal'),
        label: mapCastOfType<String, String>(json, r'label'),
        tags: CodeStub.listFromJson(json[r'tags']),
      );
    }
    return null;
  }

  static List<ImportMapping> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ImportMapping.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ImportMapping>[];

  static Map<String, ImportMapping> mapFromJson(dynamic json) {
    final map = <String, ImportMapping>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ImportMapping.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ImportMapping-objects as value to a dart map
  static Map<String, List<ImportMapping>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ImportMapping>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ImportMapping.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

