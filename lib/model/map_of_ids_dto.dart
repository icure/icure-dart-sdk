//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MapOfIdsDto {
  /// Returns a new [MapOfIdsDto] instance.
  MapOfIdsDto({
    this.mapOfIds = const {},
  });

  Map<String, List<String>> mapOfIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MapOfIdsDto &&
     other.mapOfIds == mapOfIds;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (mapOfIds == null ? 0 : mapOfIds.hashCode);

  @override
  String toString() => 'MapOfIdsDto[mapOfIds=$mapOfIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'mapOfIds'] = mapOfIds;
    return json;
  }

  /// Returns a new [MapOfIdsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MapOfIdsDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MapOfIdsDto(
        mapOfIds: json[r'mapOfIds'] == null
          ? null
          : mapCastOfType<String, List>(json, r'mapOfIds'),
      );
    }
    return null;
  }

  static List<MapOfIdsDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MapOfIdsDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MapOfIdsDto>[];

  static Map<String, MapOfIdsDto> mapFromJson(dynamic json) {
    final map = <String, MapOfIdsDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = MapOfIdsDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MapOfIdsDto-objects as value to a dart map
  static Map<String, List<MapOfIdsDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MapOfIdsDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = MapOfIdsDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

