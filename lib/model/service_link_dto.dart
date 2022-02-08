//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ServiceLinkDto {
  /// Returns a new [ServiceLinkDto] instance.
  ServiceLinkDto({
    this.serviceId,
  });

  String serviceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServiceLinkDto &&
     other.serviceId == serviceId;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (serviceId == null ? 0 : serviceId.hashCode);

  @override
  String toString() => 'ServiceLinkDto[serviceId=$serviceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (serviceId != null) {
      json[r'serviceId'] = serviceId;
    }
    return json;
  }

  /// Returns a new [ServiceLinkDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServiceLinkDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ServiceLinkDto(
        serviceId: mapValueOfType<String>(json, r'serviceId'),
      );
    }
    return null;
  }

  static List<ServiceLinkDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ServiceLinkDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ServiceLinkDto>[];

  static Map<String, ServiceLinkDto> mapFromJson(dynamic json) {
    final map = <String, ServiceLinkDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ServiceLinkDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ServiceLinkDto-objects as value to a dart map
  static Map<String, List<ServiceLinkDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ServiceLinkDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ServiceLinkDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

