//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class PatientRegistrationSuccessDto {
  /// Returns a new [PatientRegistrationSuccessDto] instance.
  PatientRegistrationSuccessDto({
    required this.userLogin,
    required this.userId,
    required this.token,
  });

  String userLogin;

  String userId;

  String token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatientRegistrationSuccessDto &&
     other.userLogin == userLogin &&
     other.userId == userId &&
     other.token == token;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userLogin.hashCode) +
    (userId.hashCode) +
    (token.hashCode);

  @override
  String toString() => 'PatientRegistrationSuccessDto[userLogin=$userLogin, userId=$userId, token=$token]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'userLogin'] = userLogin;
      json[r'userId'] = userId;
      json[r'token'] = token;
    return json;
  }

  /// Returns a new [PatientRegistrationSuccessDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatientRegistrationSuccessDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatientRegistrationSuccessDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatientRegistrationSuccessDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatientRegistrationSuccessDto(
        userLogin: mapValueOfType<String>(json, r'userLogin')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        token: mapValueOfType<String>(json, r'token')!,
      );
    }
    return null;
  }

  static List<PatientRegistrationSuccessDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatientRegistrationSuccessDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatientRegistrationSuccessDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatientRegistrationSuccessDto> mapFromJson(dynamic json) {
    final map = <String, PatientRegistrationSuccessDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatientRegistrationSuccessDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatientRegistrationSuccessDto-objects as value to a dart map
  static Map<String, List<PatientRegistrationSuccessDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatientRegistrationSuccessDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatientRegistrationSuccessDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'userLogin',
    'userId',
    'token',
  };
}

