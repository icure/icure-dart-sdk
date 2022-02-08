//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthenticationResponse {
  /// Returns a new [AuthenticationResponse] instance.
  AuthenticationResponse({
    this.healthcarePartyId,
    this.reason,
    @required this.successful,
    this.username,
  });

  String healthcarePartyId;

  String reason;

  bool successful;

  String username;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthenticationResponse &&
     other.healthcarePartyId == healthcarePartyId &&
     other.reason == reason &&
     other.successful == successful &&
     other.username == username;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (healthcarePartyId == null ? 0 : healthcarePartyId.hashCode) +
    (reason == null ? 0 : reason.hashCode) +
    (successful == null ? 0 : successful.hashCode) +
    (username == null ? 0 : username.hashCode);

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
  static AuthenticationResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AuthenticationResponse(
        healthcarePartyId: mapValueOfType<String>(json, r'healthcarePartyId'),
        reason: mapValueOfType<String>(json, r'reason'),
        successful: mapValueOfType<bool>(json, r'successful'),
        username: mapValueOfType<String>(json, r'username'),
      );
    }
    return null;
  }

  static List<AuthenticationResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AuthenticationResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AuthenticationResponse>[];

  static Map<String, AuthenticationResponse> mapFromJson(dynamic json) {
    final map = <String, AuthenticationResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AuthenticationResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AuthenticationResponse-objects as value to a dart map
  static Map<String, List<AuthenticationResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AuthenticationResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AuthenticationResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

