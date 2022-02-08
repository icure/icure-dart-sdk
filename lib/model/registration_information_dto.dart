//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RegistrationInformationDto {
  /// Returns a new [RegistrationInformationDto] instance.
  RegistrationInformationDto({
    @required this.firstName,
    @required this.lastName,
    @required this.emailAddress,
    this.userOptions,
  });

  String firstName;

  String lastName;

  String emailAddress;

  String userOptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegistrationInformationDto &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.emailAddress == emailAddress &&
     other.userOptions == userOptions;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (userOptions == null ? 0 : userOptions.hashCode);

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
  static RegistrationInformationDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RegistrationInformationDto(
        firstName: mapValueOfType<String>(json, r'firstName'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        emailAddress: mapValueOfType<String>(json, r'emailAddress'),
        userOptions: mapValueOfType<String>(json, r'userOptions'),
      );
    }
    return null;
  }

  static List<RegistrationInformationDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RegistrationInformationDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RegistrationInformationDto>[];

  static Map<String, RegistrationInformationDto> mapFromJson(dynamic json) {
    final map = <String, RegistrationInformationDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RegistrationInformationDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RegistrationInformationDto-objects as value to a dart map
  static Map<String, List<RegistrationInformationDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RegistrationInformationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RegistrationInformationDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

