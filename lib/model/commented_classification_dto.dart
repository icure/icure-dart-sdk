//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CommentedClassificationDto {
  /// Returns a new [CommentedClassificationDto] instance.
  CommentedClassificationDto({
    this.title,
    this.url,
  });

  SamTextDto title;

  SamTextDto url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CommentedClassificationDto &&
     other.title == title &&
     other.url == url;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (title == null ? 0 : title.hashCode) +
    (url == null ? 0 : url.hashCode);

  @override
  String toString() => 'CommentedClassificationDto[title=$title, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (title != null) {
      json[r'title'] = title;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    return json;
  }

  /// Returns a new [CommentedClassificationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CommentedClassificationDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CommentedClassificationDto(
        title: SamTextDto.fromJson(json[r'title']),
        url: SamTextDto.fromJson(json[r'url']),
      );
    }
    return null;
  }

  static List<CommentedClassificationDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CommentedClassificationDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CommentedClassificationDto>[];

  static Map<String, CommentedClassificationDto> mapFromJson(dynamic json) {
    final map = <String, CommentedClassificationDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CommentedClassificationDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CommentedClassificationDto-objects as value to a dart map
  static Map<String, List<CommentedClassificationDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CommentedClassificationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CommentedClassificationDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

