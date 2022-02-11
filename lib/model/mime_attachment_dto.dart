//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class MimeAttachmentDto {
  /// Returns a new [MimeAttachmentDto] instance.
  MimeAttachmentDto({
    this.data,
    this.fileName,
    this.mimeType,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? data;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fileName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mimeType;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MimeAttachmentDto && other.data == data && other.fileName == fileName && other.mimeType == mimeType;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (data == null ? 0 : data!.hashCode) + (fileName == null ? 0 : fileName!.hashCode) + (mimeType == null ? 0 : mimeType!.hashCode);

  @override
  String toString() => 'MimeAttachmentDto[data=$data, fileName=$fileName, mimeType=$mimeType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (data != null) {
      json[r'data'] = data;
    }
    if (fileName != null) {
      json[r'fileName'] = fileName;
    }
    if (mimeType != null) {
      json[r'mimeType'] = mimeType;
    }
    return json;
  }

  /// Returns a new [MimeAttachmentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MimeAttachmentDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MimeAttachmentDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MimeAttachmentDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MimeAttachmentDto(
        data: mapValueOfType<String>(json, r'data'),
        fileName: mapValueOfType<String>(json, r'fileName'),
        mimeType: mapValueOfType<String>(json, r'mimeType'),
      );
    }
    return null;
  }

  static List<MimeAttachmentDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MimeAttachmentDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MimeAttachmentDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MimeAttachmentDto> mapFromJson(dynamic json) {
    final map = <String, MimeAttachmentDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MimeAttachmentDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MimeAttachmentDto-objects as value to a dart map
  static Map<String, List<MimeAttachmentDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MimeAttachmentDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MimeAttachmentDto.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
