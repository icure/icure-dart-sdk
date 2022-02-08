//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NoSwitchReasonDto {
  /// Returns a new [NoSwitchReasonDto] instance.
  NoSwitchReasonDto({
    this.code,
    this.description,
  });

  String code;

  SamTextDto description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NoSwitchReasonDto &&
     other.code == code &&
     other.description == description;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (code == null ? 0 : code.hashCode) +
    (description == null ? 0 : description.hashCode);

  @override
  String toString() => 'NoSwitchReasonDto[code=$code, description=$description]';

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

  /// Returns a new [NoSwitchReasonDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NoSwitchReasonDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NoSwitchReasonDto(
        code: mapValueOfType<String>(json, r'code'),
        description: SamTextDto.fromJson(json[r'description']),
      );
    }
    return null;
  }

  static List<NoSwitchReasonDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NoSwitchReasonDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NoSwitchReasonDto>[];

  static Map<String, NoSwitchReasonDto> mapFromJson(dynamic json) {
    final map = <String, NoSwitchReasonDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NoSwitchReasonDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NoSwitchReasonDto-objects as value to a dart map
  static Map<String, List<NoSwitchReasonDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NoSwitchReasonDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NoSwitchReasonDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

