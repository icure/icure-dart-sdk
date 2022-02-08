//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class KeywordSubwordDto {
  /// Returns a new [KeywordSubwordDto] instance.
  KeywordSubwordDto({
    this.value,
    this.subWords = const [],
  });

  String value;

  List<KeywordSubwordDto> subWords;

  @override
  bool operator ==(Object other) => identical(this, other) || other is KeywordSubwordDto &&
     other.value == value &&
     other.subWords == subWords;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (value == null ? 0 : value.hashCode) +
    (subWords == null ? 0 : subWords.hashCode);

  @override
  String toString() => 'KeywordSubwordDto[value=$value, subWords=$subWords]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (value != null) {
      json[r'value'] = value;
    }
    if (subWords != null) {
      json[r'subWords'] = subWords;
    }
    return json;
  }

  /// Returns a new [KeywordSubwordDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KeywordSubwordDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return KeywordSubwordDto(
        value: mapValueOfType<String>(json, r'value'),
        subWords: KeywordSubwordDto.listFromJson(json[r'subWords']),
      );
    }
    return null;
  }

  static List<KeywordSubwordDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(KeywordSubwordDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <KeywordSubwordDto>[];

  static Map<String, KeywordSubwordDto> mapFromJson(dynamic json) {
    final map = <String, KeywordSubwordDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = KeywordSubwordDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of KeywordSubwordDto-objects as value to a dart map
  static Map<String, List<KeywordSubwordDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<KeywordSubwordDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = KeywordSubwordDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

