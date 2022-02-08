//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SamTextDto {
  /// Returns a new [SamTextDto] instance.
  SamTextDto({
    this.fr,
    this.nl,
    this.de,
    this.en,
  });

  String fr;

  String nl;

  String de;

  String en;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SamTextDto &&
     other.fr == fr &&
     other.nl == nl &&
     other.de == de &&
     other.en == en;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (fr == null ? 0 : fr.hashCode) +
    (nl == null ? 0 : nl.hashCode) +
    (de == null ? 0 : de.hashCode) +
    (en == null ? 0 : en.hashCode);

  @override
  String toString() => 'SamTextDto[fr=$fr, nl=$nl, de=$de, en=$en]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fr != null) {
      json[r'fr'] = fr;
    }
    if (nl != null) {
      json[r'nl'] = nl;
    }
    if (de != null) {
      json[r'de'] = de;
    }
    if (en != null) {
      json[r'en'] = en;
    }
    return json;
  }

  /// Returns a new [SamTextDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SamTextDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SamTextDto(
        fr: mapValueOfType<String>(json, r'fr'),
        nl: mapValueOfType<String>(json, r'nl'),
        de: mapValueOfType<String>(json, r'de'),
        en: mapValueOfType<String>(json, r'en'),
      );
    }
    return null;
  }

  static List<SamTextDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SamTextDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SamTextDto>[];

  static Map<String, SamTextDto> mapFromJson(dynamic json) {
    final map = <String, SamTextDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SamTextDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SamTextDto-objects as value to a dart map
  static Map<String, List<SamTextDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SamTextDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SamTextDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

