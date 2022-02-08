//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AtcDto {
  /// Returns a new [AtcDto] instance.
  AtcDto({
    this.code,
    this.description,
  });

  String code;

  String description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AtcDto &&
     other.code == code &&
     other.description == description;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (code == null ? 0 : code.hashCode) +
    (description == null ? 0 : description.hashCode);

  @override
  String toString() => 'AtcDto[code=$code, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json[r'code'] = code;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    return json;
  }

  /// Returns a new [AtcDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AtcDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AtcDto(
        code: mapValueOfType<String>(json, r'code'),
        description: mapValueOfType<String>(json, r'description'),
      );
    }
    return null;
  }

  static List<AtcDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AtcDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AtcDto>[];

  static Map<String, AtcDto> mapFromJson(dynamic json) {
    final map = <String, AtcDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AtcDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AtcDto-objects as value to a dart map
  static Map<String, List<AtcDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AtcDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AtcDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

