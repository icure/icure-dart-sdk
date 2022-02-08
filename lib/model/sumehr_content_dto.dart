//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

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
  bool operator ==(Object other) => identical(this, other) || other is SumehrContentDto &&
     other.services == services &&
     other.healthElements == healthElements &&
     other.partnerships == partnerships &&
     other.patientHealthcareParties == patientHealthcareParties;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (services == null ? 0 : services.hashCode) +
    (healthElements == null ? 0 : healthElements.hashCode) +
    (partnerships == null ? 0 : partnerships.hashCode) +
    (patientHealthcareParties == null ? 0 : patientHealthcareParties.hashCode);

  @override
  String toString() => 'SumehrContentDto[services=$services, healthElements=$healthElements, partnerships=$partnerships, patientHealthcareParties=$patientHealthcareParties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (services != null) {
      json[r'services'] = services;
    }
    if (healthElements != null) {
      json[r'healthElements'] = healthElements;
    }
    if (partnerships != null) {
      json[r'partnerships'] = partnerships;
    }
    if (patientHealthcareParties != null) {
      json[r'patientHealthcareParties'] = patientHealthcareParties;
    }
    return json;
  }

  /// Returns a new [SumehrContentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SumehrContentDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SumehrContentDto(
        services: ServiceDto.listFromJson(json[r'services']),
        healthElements: HealthElementDto.listFromJson(json[r'healthElements']),
        partnerships: PartnershipDto.listFromJson(json[r'partnerships']),
        patientHealthcareParties: PatientHealthCarePartyDto.listFromJson(json[r'patientHealthcareParties']),
      );
    }
    return null;
  }

  static List<SumehrContentDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SumehrContentDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SumehrContentDto>[];

  static Map<String, SumehrContentDto> mapFromJson(dynamic json) {
    final map = <String, SumehrContentDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SumehrContentDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SumehrContentDto-objects as value to a dart map
  static Map<String, List<SumehrContentDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SumehrContentDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SumehrContentDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

