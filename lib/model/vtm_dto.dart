//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VtmDto {
  /// Returns a new [VtmDto] instance.
  VtmDto({
    this.from,
    this.to,
    this.code,
    this.name,
  });

  int from;

  int to;

  String code;

  SamTextDto name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VtmDto &&
     other.from == from &&
     other.to == to &&
     other.code == code &&
     other.name == name;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (from == null ? 0 : from.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (code == null ? 0 : code.hashCode) +
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'VtmDto[from=$from, to=$to, code=$code, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (from != null) {
      json[r'from'] = from;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (code != null) {
      json[r'code'] = code;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  /// Returns a new [VtmDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VtmDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return VtmDto(
        from: mapValueOfType<int>(json, r'from'),
        to: mapValueOfType<int>(json, r'to'),
        code: mapValueOfType<String>(json, r'code'),
        name: SamTextDto.fromJson(json[r'name']),
      );
    }
    return null;
  }

  static List<VtmDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(VtmDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <VtmDto>[];

  static Map<String, VtmDto> mapFromJson(dynamic json) {
    final map = <String, VtmDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = VtmDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of VtmDto-objects as value to a dart map
  static Map<String, List<VtmDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<VtmDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = VtmDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

