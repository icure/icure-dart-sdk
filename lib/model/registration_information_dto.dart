//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class RegistrationInformationDto {
  /// Returns a new [RegistrationInformationDto] instance.
  RegistrationInformationDto({
    required this.firstName,
    required this.lastName,
    required this.emailAddress,
    this.userOptions,
  });

  String firstName;

  String lastName;

  String emailAddress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userOptions;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RegistrationInformationDto &&
          other.firstName == firstName &&
          other.lastName == lastName &&
          other.emailAddress == emailAddress &&
          other.userOptions == userOptions;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (firstName.hashCode) + (lastName.hashCode) + (emailAddress.hashCode) + (userOptions == null ? 0 : userOptions!.hashCode);

  @override
  String toString() => 'RegistrationInformationDto[firstName=$firstName, lastName=$lastName, emailAddress=$emailAddress, userOptions=$userOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'firstName'] = firstName;
    json[r'lastName'] = lastName;
    json[r'emailAddress'] = emailAddress;
    if (userOptions != null) {
      json[r'userOptions'] = userOptions;
    }
    return json;
  }

  /// Returns a new [RegistrationInformationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegistrationInformationDto? fromJson(dynamic value) {
    if (value is RegistrationInformationDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RegistrationInformationDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RegistrationInformationDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RegistrationInformationDto(
        firstName: mapValueOfType<String>(json, r'firstName')!,
        lastName: mapValueOfType<String>(json, r'lastName')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        userOptions: mapValueOfType<String>(json, r'userOptions'),
      );
    }
    return null;
  }

  static List<RegistrationInformationDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RegistrationInformationDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegistrationInformationDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegistrationInformationDto> mapFromJson(dynamic json) {
    final map = <String, RegistrationInformationDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegistrationInformationDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegistrationInformationDto-objects as value to a dart map
  static Map<String, List<RegistrationInformationDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RegistrationInformationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegistrationInformationDto.listFromJson(
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
    'firstName',
    'lastName',
    'emailAddress',
  };
}
