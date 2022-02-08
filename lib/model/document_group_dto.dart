//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DocumentGroupDto {
  /// Returns a new [DocumentGroupDto] instance.
  DocumentGroupDto({
    this.guid,
    this.name,
  });

  String guid;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DocumentGroupDto &&
     other.guid == guid &&
     other.name == name;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (guid == null ? 0 : guid.hashCode) +
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'DocumentGroupDto[guid=$guid, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (guid != null) {
      json[r'guid'] = guid;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  /// Returns a new [DocumentGroupDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DocumentGroupDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return DocumentGroupDto(
        guid: mapValueOfType<String>(json, r'guid'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<DocumentGroupDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DocumentGroupDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DocumentGroupDto>[];

  static Map<String, DocumentGroupDto> mapFromJson(dynamic json) {
    final map = <String, DocumentGroupDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = DocumentGroupDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DocumentGroupDto-objects as value to a dart map
  static Map<String, List<DocumentGroupDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DocumentGroupDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = DocumentGroupDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

