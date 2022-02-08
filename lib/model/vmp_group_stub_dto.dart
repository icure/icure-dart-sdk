//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VmpGroupStubDto {
  /// Returns a new [VmpGroupStubDto] instance.
  VmpGroupStubDto({
    @required this.id,
    this.code,
    this.name,
    this.productId,
  });

  String id;

  String code;

  SamTextDto name;

  String productId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VmpGroupStubDto &&
     other.id == id &&
     other.code == code &&
     other.name == name &&
     other.productId == productId;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (code == null ? 0 : code.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (productId == null ? 0 : productId.hashCode);

  @override
  String toString() => 'VmpGroupStubDto[id=$id, code=$code, name=$name, productId=$productId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (code != null) {
      json[r'code'] = code;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (productId != null) {
      json[r'productId'] = productId;
    }
    return json;
  }

  /// Returns a new [VmpGroupStubDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VmpGroupStubDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return VmpGroupStubDto(
        id: mapValueOfType<String>(json, r'id'),
        code: mapValueOfType<String>(json, r'code'),
        name: SamTextDto.fromJson(json[r'name']),
        productId: mapValueOfType<String>(json, r'productId'),
      );
    }
    return null;
  }

  static List<VmpGroupStubDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(VmpGroupStubDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <VmpGroupStubDto>[];

  static Map<String, VmpGroupStubDto> mapFromJson(dynamic json) {
    final map = <String, VmpGroupStubDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = VmpGroupStubDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of VmpGroupStubDto-objects as value to a dart map
  static Map<String, List<VmpGroupStubDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<VmpGroupStubDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = VmpGroupStubDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

