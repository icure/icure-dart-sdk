//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class LetterValueDto {
  /// Returns a new [LetterValueDto] instance.
  LetterValueDto({
    this.letter,
    this.index,
    this.coefficient,
    this.value,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? letter;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? index;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? coefficient;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LetterValueDto &&
     other.letter == letter &&
     other.index == index &&
     other.coefficient == coefficient &&
     other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (letter == null ? 0 : letter!.hashCode) +
    (index == null ? 0 : index!.hashCode) +
    (coefficient == null ? 0 : coefficient!.hashCode) +
    (value == null ? 0 : value!.hashCode);

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
  static LetterValueDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LetterValueDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LetterValueDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LetterValueDto(
        letter: mapValueOfType<String>(json, r'letter'),
        index: mapValueOfType<String>(json, r'index'),
        coefficient: mapValueOfType<double>(json, r'coefficient'),
        value: mapValueOfType<double>(json, r'value'),
      );
    }
    return null;
  }

  static List<LetterValueDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LetterValueDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LetterValueDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LetterValueDto> mapFromJson(dynamic json) {
    final map = <String, LetterValueDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LetterValueDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LetterValueDto-objects as value to a dart map
  static Map<String, List<LetterValueDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LetterValueDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LetterValueDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

