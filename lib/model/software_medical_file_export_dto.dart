//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SoftwareMedicalFileExportDto {
  /// Returns a new [SoftwareMedicalFileExportDto] instance.
  SoftwareMedicalFileExportDto({
    this.secretForeignKeys = const [],
    this.comment,
    required this.exportAsPMF,
    this.softwareName,
    this.softwareVersion,
  });

  List<String> secretForeignKeys;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? comment;

  bool exportAsPMF;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is SoftwareMedicalFileExportDto &&
     other.secretForeignKeys == secretForeignKeys &&
     other.comment == comment &&
     other.exportAsPMF == exportAsPMF &&
     other.softwareName == softwareName &&
     other.softwareVersion == softwareVersion;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (secretForeignKeys.hashCode) +
    (comment == null ? 0 : comment!.hashCode) +
    (exportAsPMF.hashCode) +
    (softwareName == null ? 0 : softwareName!.hashCode) +
    (softwareVersion == null ? 0 : softwareVersion!.hashCode);

  @override
  String toString() => 'SoftwareMedicalFileExportDto[secretForeignKeys=$secretForeignKeys, comment=$comment, exportAsPMF=$exportAsPMF, softwareName=$softwareName, softwareVersion=$softwareVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'secretForeignKeys'] = secretForeignKeys;
    if (comment != null) {
      json[r'comment'] = comment;
    }
      json[r'exportAsPMF'] = exportAsPMF;
    if (softwareName != null) {
      json[r'softwareName'] = softwareName;
    }
    if (softwareVersion != null) {
      json[r'softwareVersion'] = softwareVersion;
    }
    return json;
  }

  /// Returns a new [SoftwareMedicalFileExportDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SoftwareMedicalFileExportDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SoftwareMedicalFileExportDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SoftwareMedicalFileExportDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SoftwareMedicalFileExportDto(
        secretForeignKeys: json[r'secretForeignKeys'] is List
            ? (json[r'secretForeignKeys'] as List).cast<String>()
            : const [],
        comment: mapValueOfType<String>(json, r'comment'),
        exportAsPMF: mapValueOfType<bool>(json, r'exportAsPMF')!,
        softwareName: mapValueOfType<String>(json, r'softwareName'),
        softwareVersion: mapValueOfType<String>(json, r'softwareVersion'),
      );
    }
    return null;
  }

  static List<SoftwareMedicalFileExportDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SoftwareMedicalFileExportDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SoftwareMedicalFileExportDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SoftwareMedicalFileExportDto> mapFromJson(dynamic json) {
    final map = <String, SoftwareMedicalFileExportDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SoftwareMedicalFileExportDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SoftwareMedicalFileExportDto-objects as value to a dart map
  static Map<String, List<SoftwareMedicalFileExportDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SoftwareMedicalFileExportDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SoftwareMedicalFileExportDto.listFromJson(entry.value, growable: growable,);
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
    'exportAsPMF',
  };
}

