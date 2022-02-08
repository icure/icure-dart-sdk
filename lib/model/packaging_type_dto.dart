//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PackagingTypeDto {
  /// Returns a new [PackagingTypeDto] instance.
  PackagingTypeDto({
    this.code,
    this.name,
    this.edqmCode,
    this.edqmDefinition,
  });

  String code;

  SamTextDto name;

  String edqmCode;

  String edqmDefinition;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PackagingTypeDto &&
     other.code == code &&
     other.name == name &&
     other.edqmCode == edqmCode &&
     other.edqmDefinition == edqmDefinition;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (code == null ? 0 : code.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (edqmCode == null ? 0 : edqmCode.hashCode) +
    (edqmDefinition == null ? 0 : edqmDefinition.hashCode);

  @override
  String toString() => 'PackagingTypeDto[code=$code, name=$name, edqmCode=$edqmCode, edqmDefinition=$edqmDefinition]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json[r'code'] = code;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (edqmCode != null) {
      json[r'edqmCode'] = edqmCode;
    }
    if (edqmDefinition != null) {
      json[r'edqmDefinition'] = edqmDefinition;
    }
    return json;
  }

  /// Returns a new [PackagingTypeDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PackagingTypeDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PackagingTypeDto(
        code: mapValueOfType<String>(json, r'code'),
        name: SamTextDto.fromJson(json[r'name']),
        edqmCode: mapValueOfType<String>(json, r'edqmCode'),
        edqmDefinition: mapValueOfType<String>(json, r'edqmDefinition'),
      );
    }
    return null;
  }

  static List<PackagingTypeDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PackagingTypeDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PackagingTypeDto>[];

  static Map<String, PackagingTypeDto> mapFromJson(dynamic json) {
    final map = <String, PackagingTypeDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PackagingTypeDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PackagingTypeDto-objects as value to a dart map
  static Map<String, List<PackagingTypeDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PackagingTypeDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PackagingTypeDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

