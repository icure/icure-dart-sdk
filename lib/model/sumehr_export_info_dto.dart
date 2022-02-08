//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SumehrExportInfoDto {
  /// Returns a new [SumehrExportInfoDto] instance.
  SumehrExportInfoDto({
    this.secretForeignKeys = const [],
    this.excludedIds = const [],
    this.recipient,
    this.softwareName,
    this.softwareVersion,
    this.comment = '""',
    this.includeIrrelevantInformation,
    this.services = const [],
    this.healthElements = const [],
  });

  List<String> secretForeignKeys;

  List<String> excludedIds;

  HealthcarePartyDto recipient;

  String softwareName;

  String softwareVersion;

  String comment;

  bool includeIrrelevantInformation;

  List<ServiceDto> services;

  List<HealthElementDto> healthElements;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SumehrExportInfoDto &&
     other.secretForeignKeys == secretForeignKeys &&
     other.excludedIds == excludedIds &&
     other.recipient == recipient &&
     other.softwareName == softwareName &&
     other.softwareVersion == softwareVersion &&
     other.comment == comment &&
     other.includeIrrelevantInformation == includeIrrelevantInformation &&
     other.services == services &&
     other.healthElements == healthElements;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (secretForeignKeys == null ? 0 : secretForeignKeys.hashCode) +
    (excludedIds == null ? 0 : excludedIds.hashCode) +
    (recipient == null ? 0 : recipient.hashCode) +
    (softwareName == null ? 0 : softwareName.hashCode) +
    (softwareVersion == null ? 0 : softwareVersion.hashCode) +
    (comment == null ? 0 : comment.hashCode) +
    (includeIrrelevantInformation == null ? 0 : includeIrrelevantInformation.hashCode) +
    (services == null ? 0 : services.hashCode) +
    (healthElements == null ? 0 : healthElements.hashCode);

  @override
  String toString() => 'SumehrExportInfoDto[secretForeignKeys=$secretForeignKeys, excludedIds=$excludedIds, recipient=$recipient, softwareName=$softwareName, softwareVersion=$softwareVersion, comment=$comment, includeIrrelevantInformation=$includeIrrelevantInformation, services=$services, healthElements=$healthElements]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'secretForeignKeys'] = secretForeignKeys;
      json[r'excludedIds'] = excludedIds;
    if (recipient != null) {
      json[r'recipient'] = recipient;
    }
    if (softwareName != null) {
      json[r'softwareName'] = softwareName;
    }
    if (softwareVersion != null) {
      json[r'softwareVersion'] = softwareVersion;
    }
      json[r'comment'] = comment;
    if (includeIrrelevantInformation != null) {
      json[r'includeIrrelevantInformation'] = includeIrrelevantInformation;
    }
    if (services != null) {
      json[r'services'] = services;
    }
    if (healthElements != null) {
      json[r'healthElements'] = healthElements;
    }
    return json;
  }

  /// Returns a new [SumehrExportInfoDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SumehrExportInfoDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SumehrExportInfoDto(
        secretForeignKeys: json[r'secretForeignKeys'] is List
          ? (json[r'secretForeignKeys'] as List).cast<String>()
          : null,
        excludedIds: json[r'excludedIds'] is List
          ? (json[r'excludedIds'] as List).cast<String>()
          : null,
        recipient: HealthcarePartyDto.fromJson(json[r'recipient']),
        softwareName: mapValueOfType<String>(json, r'softwareName'),
        softwareVersion: mapValueOfType<String>(json, r'softwareVersion'),
        comment: mapValueOfType<String>(json, r'comment'),
        includeIrrelevantInformation: mapValueOfType<bool>(json, r'includeIrrelevantInformation'),
        services: ServiceDto.listFromJson(json[r'services']),
        healthElements: HealthElementDto.listFromJson(json[r'healthElements']),
      );
    }
    return null;
  }

  static List<SumehrExportInfoDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SumehrExportInfoDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SumehrExportInfoDto>[];

  static Map<String, SumehrExportInfoDto> mapFromJson(dynamic json) {
    final map = <String, SumehrExportInfoDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SumehrExportInfoDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SumehrExportInfoDto-objects as value to a dart map
  static Map<String, List<SumehrExportInfoDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SumehrExportInfoDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SumehrExportInfoDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

