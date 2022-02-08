//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListOfPropertiesDto {
  /// Returns a new [ListOfPropertiesDto] instance.
  ListOfPropertiesDto({
    this.properties = const {},
  });

  Set<PropertyStubDto> properties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListOfPropertiesDto &&
     other.properties == properties;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (properties == null ? 0 : properties.hashCode);

  @override
  String toString() => 'ListOfPropertiesDto[properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'properties'] = properties;
    return json;
  }

  /// Returns a new [ListOfPropertiesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListOfPropertiesDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ListOfPropertiesDto(
        properties: PropertyStubDto.listFromJson(json[r'properties']).toSet(),
      );
    }
    return null;
  }

  static List<ListOfPropertiesDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ListOfPropertiesDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ListOfPropertiesDto>[];

  static Map<String, ListOfPropertiesDto> mapFromJson(dynamic json) {
    final map = <String, ListOfPropertiesDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ListOfPropertiesDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListOfPropertiesDto-objects as value to a dart map
  static Map<String, List<ListOfPropertiesDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListOfPropertiesDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ListOfPropertiesDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

