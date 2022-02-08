//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CodeStub {
  /// Returns a new [CodeStub] instance.
  CodeStub({
    @required this.id,
    this.context,
    this.type,
    this.code,
    this.version,
    this.label = const {},
  });

  String id;

  String context;

  String type;

  String code;

  String version;

  Map<String, String> label;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CodeStub &&
     other.id == id &&
     other.context == context &&
     other.type == type &&
     other.code == code &&
     other.version == version &&
     other.label == label;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (context == null ? 0 : context.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (code == null ? 0 : code.hashCode) +
    (version == null ? 0 : version.hashCode) +
    (label == null ? 0 : label.hashCode);

  @override
  String toString() => 'CodeStub[id=$id, context=$context, type=$type, code=$code, version=$version, label=$label]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_id'] = id;
    if (context != null) {
      json[r'context'] = context;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (code != null) {
      json[r'code'] = code;
    }
    if (version != null) {
      json[r'version'] = version;
    }
    if (label != null) {
      json[r'label'] = label;
    }
    return json;
  }

  /// Returns a new [CodeStub] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CodeStub fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CodeStub(
        id: mapValueOfType<String>(json, r'_id'),
        context: mapValueOfType<String>(json, r'context'),
        type: mapValueOfType<String>(json, r'type'),
        code: mapValueOfType<String>(json, r'code'),
        version: mapValueOfType<String>(json, r'version'),
        label: mapCastOfType<String, String>(json, r'label'),
      );
    }
    return null;
  }

  static List<CodeStub> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CodeStub.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CodeStub>[];

  static Map<String, CodeStub> mapFromJson(dynamic json) {
    final map = <String, CodeStub>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CodeStub.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CodeStub-objects as value to a dart map
  static Map<String, List<CodeStub>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CodeStub>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CodeStub.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

