//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SubstanceStubDto {
  /// Returns a new [SubstanceStubDto] instance.
  SubstanceStubDto({
    this.id,
    this.code,
    this.chemicalForm,
    this.name,
    this.note,
    this.standardSubstances = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? chemicalForm;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SamTextDto? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SamTextDto? note;

  List<StandardSubstanceDto> standardSubstances;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubstanceStubDto &&
     other.id == id &&
     other.code == code &&
     other.chemicalForm == chemicalForm &&
     other.name == name &&
     other.note == note &&
     other.standardSubstances == standardSubstances;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (chemicalForm == null ? 0 : chemicalForm!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (standardSubstances.hashCode);

  @override
  String toString() => 'SubstanceStubDto[id=$id, code=$code, chemicalForm=$chemicalForm, name=$name, note=$note, standardSubstances=$standardSubstances]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (code != null) {
      json[r'code'] = code;
    }
    if (chemicalForm != null) {
      json[r'chemicalForm'] = chemicalForm;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (note != null) {
      json[r'note'] = note;
    }
      json[r'standardSubstances'] = standardSubstances;
    return json;
  }

  /// Returns a new [SubstanceStubDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubstanceStubDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubstanceStubDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubstanceStubDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubstanceStubDto(
        id: mapValueOfType<String>(json, r'id'),
        code: mapValueOfType<String>(json, r'code'),
        chemicalForm: mapValueOfType<String>(json, r'chemicalForm'),
        name: SamTextDto.fromJson(json[r'name']),
        note: SamTextDto.fromJson(json[r'note']),
        standardSubstances: StandardSubstanceDto.listFromJson(json[r'standardSubstances']) ?? const [],
      );
    }
    return null;
  }

  static List<SubstanceStubDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubstanceStubDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubstanceStubDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubstanceStubDto> mapFromJson(dynamic json) {
    final map = <String, SubstanceStubDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubstanceStubDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubstanceStubDto-objects as value to a dart map
  static Map<String, List<SubstanceStubDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubstanceStubDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubstanceStubDto.listFromJson(entry.value, growable: growable,);
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

