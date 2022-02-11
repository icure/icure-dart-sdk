//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class SchoolingInfoDto {
  /// Returns a new [SchoolingInfoDto] instance.
  SchoolingInfoDto({
    this.startDate,
    this.endDate,
    this.school,
    this.typeOfEducation,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? school;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CodeStubDto? typeOfEducation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SchoolingInfoDto &&
     other.startDate == startDate &&
     other.endDate == endDate &&
     other.school == school &&
     other.typeOfEducation == typeOfEducation;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (school == null ? 0 : school!.hashCode) +
    (typeOfEducation == null ? 0 : typeOfEducation!.hashCode);

  @override
  String toString() => 'SchoolingInfoDto[startDate=$startDate, endDate=$endDate, school=$school, typeOfEducation=$typeOfEducation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (startDate != null) {
      json[r'startDate'] = startDate;
    }
    if (endDate != null) {
      json[r'endDate'] = endDate;
    }
    if (school != null) {
      json[r'school'] = school;
    }
    if (typeOfEducation != null) {
      json[r'typeOfEducation'] = typeOfEducation;
    }
    return json;
  }

  /// Returns a new [SchoolingInfoDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SchoolingInfoDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SchoolingInfoDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SchoolingInfoDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SchoolingInfoDto(
        startDate: mapValueOfType<int>(json, r'startDate'),
        endDate: mapValueOfType<int>(json, r'endDate'),
        school: mapValueOfType<String>(json, r'school'),
        typeOfEducation: CodeStubDto.fromJson(json[r'typeOfEducation']),
      );
    }
    return null;
  }

  static List<SchoolingInfoDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SchoolingInfoDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SchoolingInfoDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SchoolingInfoDto> mapFromJson(dynamic json) {
    final map = <String, SchoolingInfoDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SchoolingInfoDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SchoolingInfoDto-objects as value to a dart map
  static Map<String, List<SchoolingInfoDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SchoolingInfoDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SchoolingInfoDto.listFromJson(entry.value, growable: growable,);
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

