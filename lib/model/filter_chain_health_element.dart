//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class FilterChainHealthElement {
  /// Returns a new [FilterChainHealthElement] instance.
  FilterChainHealthElement({
    required this.filter,
    this.predicate,
  });

  AbstractFilterDtoHealthElement filter;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? predicate;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is FilterChainHealthElement &&
          other.filter == filter &&
          other.predicate == predicate;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
  (filter.hashCode) +
      (predicate == null ? 0 : predicate!.hashCode);

  @override
  String toString() => 'FilterChainHealthElement[filter=$filter, predicate=$predicate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'filter'] = filter;
    if (predicate != null) {
      json[r'predicate'] = predicate;
    }
    return json;
  }

  /// Returns a new [FilterChainHealthElement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FilterChainHealthElement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FilterChainHealthElement[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FilterChainHealthElement[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FilterChainHealthElement(
        filter: AbstractFilterDtoHealthElement.fromJson(json[r'filter'])!,
        predicate: mapValueOfType<Object>(json, r'predicate'),
      );
    }
    return null;
  }

  static List<FilterChainHealthElement>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilterChainHealthElement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilterChainHealthElement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FilterChainHealthElement> mapFromJson(dynamic json) {
    final map = <String, FilterChainHealthElement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FilterChainHealthElement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FilterChainHealthElement-objects as value to a dart map
  static Map<String, List<FilterChainHealthElement>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FilterChainHealthElement>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FilterChainHealthElement.listFromJson(entry.value, growable: growable,);
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

