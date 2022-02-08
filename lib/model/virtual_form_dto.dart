//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VirtualFormDto {
  /// Returns a new [VirtualFormDto] instance.
  VirtualFormDto({
    this.name,
    this.standardForms = const [],
  });

  SamTextDto name;

  List<CodeStubDto> standardForms;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VirtualFormDto &&
     other.name == name &&
     other.standardForms == standardForms;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (name == null ? 0 : name.hashCode) +
    (standardForms == null ? 0 : standardForms.hashCode);

  @override
  String toString() => 'VirtualFormDto[name=$name, standardForms=$standardForms]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
      json[r'standardForms'] = standardForms;
    return json;
  }

  /// Returns a new [VirtualFormDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VirtualFormDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return VirtualFormDto(
        name: SamTextDto.fromJson(json[r'name']),
        standardForms: CodeStubDto.listFromJson(json[r'standardForms']).toList(),
      );
    }
    return null;
  }

  static List<VirtualFormDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(VirtualFormDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <VirtualFormDto>[];

  static Map<String, VirtualFormDto> mapFromJson(dynamic json) {
    final map = <String, VirtualFormDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = VirtualFormDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of VirtualFormDto-objects as value to a dart map
  static Map<String, List<VirtualFormDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<VirtualFormDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = VirtualFormDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

