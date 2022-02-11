//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class CheckSMFPatientResult {
  /// Returns a new [CheckSMFPatientResult] instance.
  CheckSMFPatientResult({
    required this.firstName,
    required this.lastName,
    required this.ssin,
    this.dateOfBirth,
    required this.exists,
    this.existingPatientId,
  });

  String firstName;

  String lastName;

  String ssin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dateOfBirth;

  bool exists;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? existingPatientId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is CheckSMFPatientResult &&
          other.firstName == firstName &&
          other.lastName == lastName &&
          other.ssin == ssin &&
          other.dateOfBirth == dateOfBirth &&
          other.exists == exists &&
          other.existingPatientId == existingPatientId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
  (firstName.hashCode) +
      (lastName.hashCode) +
      (ssin.hashCode) +
      (dateOfBirth == null ? 0 : dateOfBirth!.hashCode) +
      (exists.hashCode) +
      (existingPatientId == null ? 0 : existingPatientId!.hashCode);

  @override
  String toString() =>
      'CheckSMFPatientResult[firstName=$firstName, lastName=$lastName, ssin=$ssin, dateOfBirth=$dateOfBirth, exists=$exists, existingPatientId=$existingPatientId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'firstName'] = firstName;
    json[r'lastName'] = lastName;
    json[r'ssin'] = ssin;
    if (dateOfBirth != null) {
      json[r'dateOfBirth'] = dateOfBirth;
    }
    json[r'exists'] = exists;
    if (existingPatientId != null) {
      json[r'existingPatientId'] = existingPatientId;
    }
    return json;
  }

  /// Returns a new [CheckSMFPatientResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CheckSMFPatientResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CheckSMFPatientResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CheckSMFPatientResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CheckSMFPatientResult(
        firstName: mapValueOfType<String>(json, r'firstName')!,
        lastName: mapValueOfType<String>(json, r'lastName')!,
        ssin: mapValueOfType<String>(json, r'ssin')!,
        dateOfBirth: mapValueOfType<int>(json, r'dateOfBirth'),
        exists: mapValueOfType<bool>(json, r'exists')!,
        existingPatientId: mapValueOfType<String>(json, r'existingPatientId'),
      );
    }
    return null;
  }

  static List<CheckSMFPatientResult>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckSMFPatientResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckSMFPatientResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CheckSMFPatientResult> mapFromJson(dynamic json) {
    final map = <String, CheckSMFPatientResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CheckSMFPatientResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CheckSMFPatientResult-objects as value to a dart map
  static Map<String, List<CheckSMFPatientResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CheckSMFPatientResult>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CheckSMFPatientResult.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'firstName',
    'lastName',
    'ssin',
    'exists',
  };
}

