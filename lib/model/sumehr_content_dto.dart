//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class SumehrContentDto {
  /// Returns a new [SumehrContentDto] instance.
  SumehrContentDto({
    this.services = const [],
    this.healthElements = const [],
    this.partnerships = const [],
    this.patientHealthcareParties = const [],
  });

  List<ServiceDto> services;

  List<HealthElementDto> healthElements;

  List<PartnershipDto> partnerships;

  List<PatientHealthCarePartyDto> patientHealthcareParties;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is SumehrContentDto &&
          other.services == services &&
          other.healthElements == healthElements &&
          other.partnerships == partnerships &&
          other.patientHealthcareParties == patientHealthcareParties;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
  (services.hashCode) +
      (healthElements.hashCode) +
      (partnerships.hashCode) +
      (patientHealthcareParties.hashCode);

  @override
  String toString() =>
      'SumehrContentDto[services=$services, healthElements=$healthElements, partnerships=$partnerships, patientHealthcareParties=$patientHealthcareParties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'services'] = services;
    json[r'healthElements'] = healthElements;
    json[r'partnerships'] = partnerships;
    json[r'patientHealthcareParties'] = patientHealthcareParties;
    return json;
  }

  /// Returns a new [SumehrContentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SumehrContentDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SumehrContentDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SumehrContentDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SumehrContentDto(
        services: ServiceDto.listFromJson(json[r'services']) ?? const [],
        healthElements: HealthElementDto.listFromJson(json[r'healthElements']) ?? const [],
        partnerships: PartnershipDto.listFromJson(json[r'partnerships']) ?? const [],
        patientHealthcareParties: PatientHealthCarePartyDto.listFromJson(json[r'patientHealthcareParties']) ?? const [],
      );
    }
    return null;
  }

  static List<SumehrContentDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SumehrContentDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SumehrContentDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SumehrContentDto> mapFromJson(dynamic json) {
    final map = <String, SumehrContentDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SumehrContentDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SumehrContentDto-objects as value to a dart map
  static Map<String, List<SumehrContentDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SumehrContentDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SumehrContentDto.listFromJson(entry.value, growable: growable,);
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

