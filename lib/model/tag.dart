//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Tag {
  /// Returns a new [Tag] instance.
  Tag({
    this.type,
    this.tag,
  });

  String type;

  String tag;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Tag &&
     other.type == type &&
     other.tag == tag;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (type == null ? 0 : type.hashCode) +
    (tag == null ? 0 : tag.hashCode);

  @override
  String toString() => 'Tag[type=$type, tag=$tag]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (type != null) {
      json[r'type'] = type;
    }
    if (tag != null) {
      json[r'tag'] = tag;
    }
    return json;
  }

  /// Returns a new [Tag] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Tag fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Tag(
        type: mapValueOfType<String>(json, r'type'),
        tag: mapValueOfType<String>(json, r'tag'),
      );
    }
    return null;
  }

  static List<Tag> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Tag.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Tag>[];

  static Map<String, Tag> mapFromJson(dynamic json) {
    final map = <String, Tag>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Tag.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Tag-objects as value to a dart map
  static Map<String, List<Tag>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Tag>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Tag.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

