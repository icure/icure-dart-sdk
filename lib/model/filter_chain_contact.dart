//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FilterChainContact {
  /// Returns a new [FilterChainContact] instance.
  FilterChainContact({
    required this.filter,
    this.predicate,
  });

  AbstractFilterDtoContact filter;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? predicate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FilterChainContact &&
     other.filter == filter &&
     other.predicate == predicate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (filter.hashCode) +
    (predicate == null ? 0 : predicate!.hashCode);

  @override
  String toString() => 'FilterChainContact[filter=$filter, predicate=$predicate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'filter'] = filter;
    if (predicate != null) {
      json[r'predicate'] = predicate;
    }
    return json;
  }

  /// Returns a new [FilterChainContact] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FilterChainContact? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FilterChainContact[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FilterChainContact[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FilterChainContact(
        filter: AbstractFilterDtoContact.fromJson(json[r'filter'])!,
        predicate: mapValueOfType<Object>(json, r'predicate'),
      );
    }
    return null;
  }

  static List<FilterChainContact>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilterChainContact>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilterChainContact.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FilterChainContact> mapFromJson(dynamic json) {
    final map = <String, FilterChainContact>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FilterChainContact.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FilterChainContact-objects as value to a dart map
  static Map<String, List<FilterChainContact>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FilterChainContact>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FilterChainContact.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'filter',
  };
}

