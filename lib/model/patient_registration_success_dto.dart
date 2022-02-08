//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PatientRegistrationSuccessDto {
  /// Returns a new [PatientRegistrationSuccessDto] instance.
  PatientRegistrationSuccessDto({
    @required this.userLogin,
    @required this.userId,
    @required this.token,
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
    (userLogin == null ? 0 : userLogin.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (token == null ? 0 : token.hashCode);

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
  static PatientRegistrationSuccessDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PatientRegistrationSuccessDto(
        userLogin: mapValueOfType<String>(json, r'userLogin'),
        userId: mapValueOfType<String>(json, r'userId'),
        token: mapValueOfType<String>(json, r'token'),
      );
    }
    return null;
  }

  static List<PatientRegistrationSuccessDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PatientRegistrationSuccessDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PatientRegistrationSuccessDto>[];

  static Map<String, PatientRegistrationSuccessDto> mapFromJson(dynamic json) {
    final map = <String, PatientRegistrationSuccessDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PatientRegistrationSuccessDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PatientRegistrationSuccessDto-objects as value to a dart map
  static Map<String, List<PatientRegistrationSuccessDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PatientRegistrationSuccessDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PatientRegistrationSuccessDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

