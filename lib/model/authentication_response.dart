//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class AuthenticationResponse {
  /// Returns a new [AuthenticationResponse] instance.
  AuthenticationResponse({
    this.healthcarePartyId,
    this.reason,
    required this.successful,
    this.username,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? healthcarePartyId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  bool successful;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is AuthenticationResponse &&
          other.healthcarePartyId == healthcarePartyId &&
          other.reason == reason &&
          other.successful == successful &&
          other.username == username;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
  (healthcarePartyId == null ? 0 : healthcarePartyId!.hashCode) +
      (reason == null ? 0 : reason!.hashCode) +
      (successful.hashCode) +
      (username == null ? 0 : username!.hashCode);

  @override
  String toString() => 'AuthenticationResponse[healthcarePartyId=$healthcarePartyId, reason=$reason, successful=$successful, username=$username]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (healthcarePartyId != null) {
      json[r'healthcarePartyId'] = healthcarePartyId;
    }
    if (reason != null) {
      json[r'reason'] = reason;
    }
    json[r'successful'] = successful;
    if (username != null) {
      json[r'username'] = username;
    }
    return json;
  }

  /// Returns a new [AuthenticationResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthenticationResponse? fromJson(dynamic value) {
    if (value is AuthenticationResponse) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuthenticationResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuthenticationResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuthenticationResponse(
        healthcarePartyId: mapValueOfType<String>(json, r'healthcarePartyId'),
        reason: mapValueOfType<String>(json, r'reason'),
        successful: mapValueOfType<bool>(json, r'successful')!,
        username: mapValueOfType<String>(json, r'username'),
      );
    }
    return null;
  }

  static List<AuthenticationResponse>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuthenticationResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthenticationResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuthenticationResponse> mapFromJson(dynamic json) {
    final map = <String, AuthenticationResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthenticationResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuthenticationResponse-objects as value to a dart map
  static Map<String, List<AuthenticationResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuthenticationResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthenticationResponse.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'successful',
  };
}

