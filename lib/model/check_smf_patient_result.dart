//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CheckSMFPatientResult {
  /// Returns a new [CheckSMFPatientResult] instance.
  CheckSMFPatientResult({
    @required this.firstName,
    @required this.lastName,
    @required this.ssin,
    this.dateOfBirth,
    @required this.exists,
    this.existingPatientId,
  });

  String firstName;

  String lastName;

  String ssin;

  int dateOfBirth;

  bool exists;

  String existingPatientId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CheckSMFPatientResult &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.ssin == ssin &&
     other.dateOfBirth == dateOfBirth &&
     other.exists == exists &&
     other.existingPatientId == existingPatientId;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (ssin == null ? 0 : ssin.hashCode) +
    (dateOfBirth == null ? 0 : dateOfBirth.hashCode) +
    (exists == null ? 0 : exists.hashCode) +
    (existingPatientId == null ? 0 : existingPatientId.hashCode);

  @override
  String toString() => 'CheckSMFPatientResult[firstName=$firstName, lastName=$lastName, ssin=$ssin, dateOfBirth=$dateOfBirth, exists=$exists, existingPatientId=$existingPatientId]';

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
  static CheckSMFPatientResult fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CheckSMFPatientResult(
        firstName: mapValueOfType<String>(json, r'firstName'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        ssin: mapValueOfType<String>(json, r'ssin'),
        dateOfBirth: mapValueOfType<int>(json, r'dateOfBirth'),
        exists: mapValueOfType<bool>(json, r'exists'),
        existingPatientId: mapValueOfType<String>(json, r'existingPatientId'),
      );
    }
    return null;
  }

  static List<CheckSMFPatientResult> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CheckSMFPatientResult.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CheckSMFPatientResult>[];

  static Map<String, CheckSMFPatientResult> mapFromJson(dynamic json) {
    final map = <String, CheckSMFPatientResult>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CheckSMFPatientResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CheckSMFPatientResult-objects as value to a dart map
  static Map<String, List<CheckSMFPatientResult>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CheckSMFPatientResult>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CheckSMFPatientResult.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

