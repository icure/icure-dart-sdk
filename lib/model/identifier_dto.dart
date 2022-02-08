//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IdentifierDto {
  /// Returns a new [IdentifierDto] instance.
  IdentifierDto({
    this.id,
    this.assigner,
    this.start,
    this.end,
    this.system,
    this.type,
    this.use,
    this.value,
  });

  String id;

  String assigner;

  String start;

  String end;

  String system;

  CodeStubDto type;

  String use;

  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IdentifierDto &&
     other.id == id &&
     other.assigner == assigner &&
     other.start == start &&
     other.end == end &&
     other.system == system &&
     other.type == type &&
     other.use == use &&
     other.value == value;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (assigner == null ? 0 : assigner.hashCode) +
    (start == null ? 0 : start.hashCode) +
    (end == null ? 0 : end.hashCode) +
    (system == null ? 0 : system.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (use == null ? 0 : use.hashCode) +
    (value == null ? 0 : value.hashCode);

  @override
  String toString() => 'IdentifierDto[id=$id, assigner=$assigner, start=$start, end=$end, system=$system, type=$type, use=$use, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (assigner != null) {
      json[r'assigner'] = assigner;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    if (end != null) {
      json[r'end'] = end;
    }
    if (system != null) {
      json[r'system'] = system;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (use != null) {
      json[r'use'] = use;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    return json;
  }

  /// Returns a new [IdentifierDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IdentifierDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return IdentifierDto(
        id: mapValueOfType<String>(json, r'id'),
        assigner: mapValueOfType<String>(json, r'assigner'),
        start: mapValueOfType<String>(json, r'start'),
        end: mapValueOfType<String>(json, r'end'),
        system: mapValueOfType<String>(json, r'system'),
        type: CodeStubDto.fromJson(json[r'type']),
        use: mapValueOfType<String>(json, r'use'),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<IdentifierDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(IdentifierDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <IdentifierDto>[];

  static Map<String, IdentifierDto> mapFromJson(dynamic json) {
    final map = <String, IdentifierDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = IdentifierDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of IdentifierDto-objects as value to a dart map
  static Map<String, List<IdentifierDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<IdentifierDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = IdentifierDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

