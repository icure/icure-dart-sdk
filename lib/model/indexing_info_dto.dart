//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IndexingInfoDto {
  /// Returns a new [IndexingInfoDto] instance.
  IndexingInfoDto({
    this.statuses = const {},
  });

  Map<String, num> statuses;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexingInfoDto &&
     other.statuses == statuses;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (statuses == null ? 0 : statuses.hashCode);

  @override
  String toString() => 'IndexingInfoDto[statuses=$statuses]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (statuses != null) {
      json[r'statuses'] = statuses;
    }
    return json;
  }

  /// Returns a new [IndexingInfoDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexingInfoDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return IndexingInfoDto(
        statuses: mapCastOfType<String, num>(json, r'statuses'),
      );
    }
    return null;
  }

  static List<IndexingInfoDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(IndexingInfoDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <IndexingInfoDto>[];

  static Map<String, IndexingInfoDto> mapFromJson(dynamic json) {
    final map = <String, IndexingInfoDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = IndexingInfoDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of IndexingInfoDto-objects as value to a dart map
  static Map<String, List<IndexingInfoDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<IndexingInfoDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = IndexingInfoDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

