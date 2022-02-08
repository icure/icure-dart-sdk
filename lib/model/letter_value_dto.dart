//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LetterValueDto {
  /// Returns a new [LetterValueDto] instance.
  LetterValueDto({
    this.letter,
    this.index,
    this.coefficient,
    this.value,
  });

  String letter;

  String index;

  double coefficient;

  double value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LetterValueDto &&
     other.letter == letter &&
     other.index == index &&
     other.coefficient == coefficient &&
     other.value == value;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (letter == null ? 0 : letter.hashCode) +
    (index == null ? 0 : index.hashCode) +
    (coefficient == null ? 0 : coefficient.hashCode) +
    (value == null ? 0 : value.hashCode);

  @override
  String toString() => 'LetterValueDto[letter=$letter, index=$index, coefficient=$coefficient, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (letter != null) {
      json[r'letter'] = letter;
    }
    if (index != null) {
      json[r'index'] = index;
    }
    if (coefficient != null) {
      json[r'coefficient'] = coefficient;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    return json;
  }

  /// Returns a new [LetterValueDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LetterValueDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return LetterValueDto(
        letter: mapValueOfType<String>(json, r'letter'),
        index: mapValueOfType<String>(json, r'index'),
        coefficient: mapValueOfType<double>(json, r'coefficient'),
        value: mapValueOfType<double>(json, r'value'),
      );
    }
    return null;
  }

  static List<LetterValueDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(LetterValueDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <LetterValueDto>[];

  static Map<String, LetterValueDto> mapFromJson(dynamic json) {
    final map = <String, LetterValueDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = LetterValueDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LetterValueDto-objects as value to a dart map
  static Map<String, List<LetterValueDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<LetterValueDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = LetterValueDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

