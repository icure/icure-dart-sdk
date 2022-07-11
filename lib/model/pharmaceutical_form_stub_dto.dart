//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class PharmaceuticalFormStubDto {
  /// Returns a new [PharmaceuticalFormStubDto] instance.
  PharmaceuticalFormStubDto({
    this.id,
    this.code,
    this.name,
    this.standardForms = const [],
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
  SamTextDto? name;

  List<CodeStubDto> standardForms;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PharmaceuticalFormStubDto && other.id == id && other.code == code && other.name == name && other.standardForms == standardForms;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) + (code == null ? 0 : code!.hashCode) + (name == null ? 0 : name!.hashCode) + (standardForms.hashCode);

  @override
  String toString() => 'PharmaceuticalFormStubDto[id=$id, code=$code, name=$name, standardForms=$standardForms]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (code != null) {
      json[r'code'] = code;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    json[r'standardForms'] = standardForms;
    return json;
  }

  /// Returns a new [PharmaceuticalFormStubDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PharmaceuticalFormStubDto? fromJson(dynamic value) {
    if (value is PharmaceuticalFormStubDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PharmaceuticalFormStubDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PharmaceuticalFormStubDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PharmaceuticalFormStubDto(
        id: mapValueOfType<String>(json, r'id'),
        code: mapValueOfType<String>(json, r'code'),
        name: SamTextDto.fromJson(json[r'name']),
        standardForms: CodeStubDto.listFromJson(json[r'standardForms'])!,
      );
    }
    return null;
  }

  static List<PharmaceuticalFormStubDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PharmaceuticalFormStubDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PharmaceuticalFormStubDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PharmaceuticalFormStubDto> mapFromJson(dynamic json) {
    final map = <String, PharmaceuticalFormStubDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PharmaceuticalFormStubDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PharmaceuticalFormStubDto-objects as value to a dart map
  static Map<String, List<PharmaceuticalFormStubDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PharmaceuticalFormStubDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PharmaceuticalFormStubDto.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'standardForms',
  };
}
