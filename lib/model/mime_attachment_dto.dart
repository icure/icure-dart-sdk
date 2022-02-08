//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MimeAttachmentDto {
  /// Returns a new [MimeAttachmentDto] instance.
  MimeAttachmentDto({
    this.data,
    this.fileName,
    this.mimeType,
  });

  String data;

  String fileName;

  String mimeType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MimeAttachmentDto &&
     other.data == data &&
     other.fileName == fileName &&
     other.mimeType == mimeType;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (data == null ? 0 : data.hashCode) +
    (fileName == null ? 0 : fileName.hashCode) +
    (mimeType == null ? 0 : mimeType.hashCode);

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
  static MimeAttachmentDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MimeAttachmentDto(
        data: mapValueOfType<String>(json, r'data'),
        fileName: mapValueOfType<String>(json, r'fileName'),
        mimeType: mapValueOfType<String>(json, r'mimeType'),
      );
    }
    return null;
  }

  static List<MimeAttachmentDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MimeAttachmentDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MimeAttachmentDto>[];

  static Map<String, MimeAttachmentDto> mapFromJson(dynamic json) {
    final map = <String, MimeAttachmentDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = MimeAttachmentDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MimeAttachmentDto-objects as value to a dart map
  static Map<String, List<MimeAttachmentDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MimeAttachmentDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = MimeAttachmentDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

