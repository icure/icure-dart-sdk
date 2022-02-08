//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VmpStubDto {
  /// Returns a new [VmpStubDto] instance.
  VmpStubDto({
    @required this.id,
    this.code,
    this.vmpGroup,
    this.name,
  });

  String id;

  String code;

  VmpGroupStubDto vmpGroup;

  SamTextDto name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VmpStubDto &&
     other.id == id &&
     other.code == code &&
     other.vmpGroup == vmpGroup &&
     other.name == name;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (code == null ? 0 : code.hashCode) +
    (vmpGroup == null ? 0 : vmpGroup.hashCode) +
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'VmpStubDto[id=$id, code=$code, vmpGroup=$vmpGroup, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (code != null) {
      json[r'code'] = code;
    }
    if (vmpGroup != null) {
      json[r'vmpGroup'] = vmpGroup;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  /// Returns a new [VmpStubDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VmpStubDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return VmpStubDto(
        id: mapValueOfType<String>(json, r'id'),
        code: mapValueOfType<String>(json, r'code'),
        vmpGroup: VmpGroupStubDto.fromJson(json[r'vmpGroup']),
        name: SamTextDto.fromJson(json[r'name']),
      );
    }
    return null;
  }

  static List<VmpStubDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(VmpStubDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <VmpStubDto>[];

  static Map<String, VmpStubDto> mapFromJson(dynamic json) {
    final map = <String, VmpStubDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = VmpStubDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of VmpStubDto-objects as value to a dart map
  static Map<String, List<VmpStubDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<VmpStubDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = VmpStubDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

