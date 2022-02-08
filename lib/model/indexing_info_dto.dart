//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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
    (statuses.hashCode);

  @override
  String toString() => 'IndexingInfoDto[statuses=$statuses]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'statuses'] = statuses;
    return json;
  }

  /// Returns a new [IndexingInfoDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexingInfoDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexingInfoDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexingInfoDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexingInfoDto(
        statuses: mapCastOfType<String, num>(json, r'statuses') ?? const {},
      );
    }
    return null;
  }

  static List<IndexingInfoDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexingInfoDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexingInfoDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexingInfoDto> mapFromJson(dynamic json) {
    final map = <String, IndexingInfoDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexingInfoDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexingInfoDto-objects as value to a dart map
  static Map<String, List<IndexingInfoDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexingInfoDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexingInfoDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

