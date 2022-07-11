//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class ListOfPropertiesDto {
  /// Returns a new [ListOfPropertiesDto] instance.
  ListOfPropertiesDto({
    this.properties = const {},
  });

  Set<PropertyStubDto> properties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListOfPropertiesDto && other.properties == properties;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (properties.hashCode);

  @override
  String toString() => 'ListOfPropertiesDto[properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'properties'] = properties.toList();
    return json;
  }

  /// Returns a new [ListOfPropertiesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListOfPropertiesDto? fromJson(dynamic value) {
    if (value is ListOfPropertiesDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListOfPropertiesDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListOfPropertiesDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListOfPropertiesDto(
        properties: PropertyStubDto.listFromJson(json[r'properties'])!.toSet(),
      );
    }
    return null;
  }

  static List<ListOfPropertiesDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ListOfPropertiesDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListOfPropertiesDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListOfPropertiesDto> mapFromJson(dynamic json) {
    final map = <String, ListOfPropertiesDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListOfPropertiesDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListOfPropertiesDto-objects as value to a dart map
  static Map<String, List<ListOfPropertiesDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ListOfPropertiesDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListOfPropertiesDto.listFromJson(
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
  static const requiredKeys = <String>{
    'properties',
  };
}
