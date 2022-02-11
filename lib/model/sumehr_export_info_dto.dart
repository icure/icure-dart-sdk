//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HealthcarePartyDto? recipient;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? softwareName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? softwareVersion;

  String comment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? includeIrrelevantInformation;

  List<ServiceDto> services;

  List<HealthElementDto> healthElements;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is SumehrExportInfoDto &&
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
  (secretForeignKeys.hashCode) +
      (excludedIds.hashCode) +
      (recipient == null ? 0 : recipient!.hashCode) +
      (softwareName == null ? 0 : softwareName!.hashCode) +
      (softwareVersion == null ? 0 : softwareVersion!.hashCode) +
      (comment.hashCode) +
      (includeIrrelevantInformation == null ? 0 : includeIrrelevantInformation!.hashCode) +
      (services.hashCode) +
      (healthElements.hashCode);

  @override
  String toString() =>
      'SumehrExportInfoDto[secretForeignKeys=$secretForeignKeys, excludedIds=$excludedIds, recipient=$recipient, softwareName=$softwareName, softwareVersion=$softwareVersion, comment=$comment, includeIrrelevantInformation=$includeIrrelevantInformation, services=$services, healthElements=$healthElements]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'secretForeignKeys'] = secretForeignKeys.toList();
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
    json[r'services'] = services;
    json[r'healthElements'] = healthElements;
    return json;
  }

  /// Returns a new [SumehrExportInfoDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SumehrExportInfoDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SumehrExportInfoDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SumehrExportInfoDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SumehrExportInfoDto(
        secretForeignKeys: json[r'secretForeignKeys'] is List
            ? (json[r'secretForeignKeys'] as List).cast<String>()
            : const [],
        excludedIds: json[r'excludedIds'] is List
            ? (json[r'excludedIds'] as List).cast<String>()
            : const [],
        recipient: HealthcarePartyDto.fromJson(json[r'recipient']),
        softwareName: mapValueOfType<String>(json, r'softwareName'),
        softwareVersion: mapValueOfType<String>(json, r'softwareVersion'),
        comment: mapValueOfType<String>(json, r'comment')!,
        includeIrrelevantInformation: mapValueOfType<bool>(json, r'includeIrrelevantInformation'),
        services: ServiceDto.listFromJson(json[r'services']) ?? const [],
        healthElements: HealthElementDto.listFromJson(json[r'healthElements']) ?? const [],
      );
    }
    return null;
  }

  static List<SumehrExportInfoDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SumehrExportInfoDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SumehrExportInfoDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SumehrExportInfoDto> mapFromJson(dynamic json) {
    final map = <String, SumehrExportInfoDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SumehrExportInfoDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SumehrExportInfoDto-objects as value to a dart map
  static Map<String, List<SumehrExportInfoDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SumehrExportInfoDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SumehrExportInfoDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'secretForeignKeys',
    'excludedIds',
    'comment',
  };
}

