//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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
    @required this.exportAsPMF,
    this.softwareName,
    this.softwareVersion,
  });

  List<String> secretForeignKeys;

  String comment;

  bool exportAsPMF;

  String softwareName;

  String softwareVersion;

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
    (secretForeignKeys == null ? 0 : secretForeignKeys.hashCode) +
    (comment == null ? 0 : comment.hashCode) +
    (exportAsPMF == null ? 0 : exportAsPMF.hashCode) +
    (softwareName == null ? 0 : softwareName.hashCode) +
    (softwareVersion == null ? 0 : softwareVersion.hashCode);

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
  static SoftwareMedicalFileExportDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SoftwareMedicalFileExportDto(
        secretForeignKeys: json[r'secretForeignKeys'] is List
          ? (json[r'secretForeignKeys'] as List).cast<String>()
          : null,
        comment: mapValueOfType<String>(json, r'comment'),
        exportAsPMF: mapValueOfType<bool>(json, r'exportAsPMF'),
        softwareName: mapValueOfType<String>(json, r'softwareName'),
        softwareVersion: mapValueOfType<String>(json, r'softwareVersion'),
      );
    }
    return null;
  }

  static List<SoftwareMedicalFileExportDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SoftwareMedicalFileExportDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SoftwareMedicalFileExportDto>[];

  static Map<String, SoftwareMedicalFileExportDto> mapFromJson(dynamic json) {
    final map = <String, SoftwareMedicalFileExportDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SoftwareMedicalFileExportDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SoftwareMedicalFileExportDto-objects as value to a dart map
  static Map<String, List<SoftwareMedicalFileExportDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SoftwareMedicalFileExportDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SoftwareMedicalFileExportDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

