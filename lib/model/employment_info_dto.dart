//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmploymentInfoDto {
  /// Returns a new [EmploymentInfoDto] instance.
  EmploymentInfoDto({
    this.startDate,
    this.endDate,
    this.professionType,
    this.employer,
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
  CodeStubDto? professionType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EmployerDto? employer;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmploymentInfoDto &&
     other.startDate == startDate &&
     other.endDate == endDate &&
     other.professionType == professionType &&
     other.employer == employer;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (professionType == null ? 0 : professionType!.hashCode) +
    (employer == null ? 0 : employer!.hashCode);

  @override
  String toString() => 'EmploymentInfoDto[startDate=$startDate, endDate=$endDate, professionType=$professionType, employer=$employer]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (startDate != null) {
      json[r'startDate'] = startDate;
    }
    if (endDate != null) {
      json[r'endDate'] = endDate;
    }
    if (professionType != null) {
      json[r'professionType'] = professionType;
    }
    if (employer != null) {
      json[r'employer'] = employer;
    }
    return json;
  }

  /// Returns a new [EmploymentInfoDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmploymentInfoDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmploymentInfoDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmploymentInfoDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmploymentInfoDto(
        startDate: mapValueOfType<int>(json, r'startDate'),
        endDate: mapValueOfType<int>(json, r'endDate'),
        professionType: CodeStubDto.fromJson(json[r'professionType']),
        employer: EmployerDto.fromJson(json[r'employer']),
      );
    }
    return null;
  }

  static List<EmploymentInfoDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmploymentInfoDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmploymentInfoDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmploymentInfoDto> mapFromJson(dynamic json) {
    final map = <String, EmploymentInfoDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmploymentInfoDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmploymentInfoDto-objects as value to a dart map
  static Map<String, List<EmploymentInfoDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmploymentInfoDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmploymentInfoDto.listFromJson(entry.value, growable: growable,);
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

