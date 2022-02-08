//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LabelledOccurenceDto {
  /// Returns a new [LabelledOccurenceDto] instance.
  LabelledOccurenceDto({
    this.label,
    this.occurence,
  });

  String label;

  int occurence;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LabelledOccurenceDto &&
     other.label == label &&
     other.occurence == occurence;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (label == null ? 0 : label.hashCode) +
    (occurence == null ? 0 : occurence.hashCode);

  @override
  String toString() => 'LabelledOccurenceDto[label=$label, occurence=$occurence]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (label != null) {
      json[r'label'] = label;
    }
    if (occurence != null) {
      json[r'occurence'] = occurence;
    }
    return json;
  }

  /// Returns a new [LabelledOccurenceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LabelledOccurenceDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return LabelledOccurenceDto(
        label: mapValueOfType<String>(json, r'label'),
        occurence: mapValueOfType<int>(json, r'occurence'),
      );
    }
    return null;
  }

  static List<LabelledOccurenceDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(LabelledOccurenceDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <LabelledOccurenceDto>[];

  static Map<String, LabelledOccurenceDto> mapFromJson(dynamic json) {
    final map = <String, LabelledOccurenceDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = LabelledOccurenceDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LabelledOccurenceDto-objects as value to a dart map
  static Map<String, List<LabelledOccurenceDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<LabelledOccurenceDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = LabelledOccurenceDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

