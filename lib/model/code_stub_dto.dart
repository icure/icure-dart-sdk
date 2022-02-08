//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CodeStubDto {
  /// Returns a new [CodeStubDto] instance.
  CodeStubDto({
    this.id,
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
  bool operator ==(Object other) => identical(this, other) || other is CodeStubDto &&
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
  String toString() => 'CodeStubDto[id=$id, context=$context, type=$type, code=$code, version=$version, label=$label]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
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

  /// Returns a new [CodeStubDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CodeStubDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CodeStubDto(
        id: mapValueOfType<String>(json, r'id'),
        context: mapValueOfType<String>(json, r'context'),
        type: mapValueOfType<String>(json, r'type'),
        code: mapValueOfType<String>(json, r'code'),
        version: mapValueOfType<String>(json, r'version'),
        label: mapCastOfType<String, String>(json, r'label'),
      );
    }
    return null;
  }

  static List<CodeStubDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CodeStubDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CodeStubDto>[];

  static Map<String, CodeStubDto> mapFromJson(dynamic json) {
    final map = <String, CodeStubDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CodeStubDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CodeStubDto-objects as value to a dart map
  static Map<String, List<CodeStubDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CodeStubDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CodeStubDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

