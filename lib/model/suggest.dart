//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class Suggest {
  /// Returns a new [Suggest] instance.
  Suggest({
    this.filterKey,
    this.filterValue,
    this.entityClass,
    this.fieldValue,
    this.fieldDisplay,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filterKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filterValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entityClass;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fieldValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fieldDisplay;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Suggest &&
          other.filterKey == filterKey &&
          other.filterValue == filterValue &&
          other.entityClass == entityClass &&
          other.fieldValue == fieldValue &&
          other.fieldDisplay == fieldDisplay;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (filterKey == null ? 0 : filterKey!.hashCode) +
      (filterValue == null ? 0 : filterValue!.hashCode) +
      (entityClass == null ? 0 : entityClass!.hashCode) +
      (fieldValue == null ? 0 : fieldValue!.hashCode) +
      (fieldDisplay == null ? 0 : fieldDisplay!.hashCode);

  @override
  String toString() =>
      'Suggest[filterKey=$filterKey, filterValue=$filterValue, entityClass=$entityClass, fieldValue=$fieldValue, fieldDisplay=$fieldDisplay]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (filterKey != null) {
      json[r'filterKey'] = filterKey;
    }
    if (filterValue != null) {
      json[r'filterValue'] = filterValue;
    }
    if (entityClass != null) {
      json[r'entityClass'] = entityClass;
    }
    if (fieldValue != null) {
      json[r'fieldValue'] = fieldValue;
    }
    if (fieldDisplay != null) {
      json[r'fieldDisplay'] = fieldDisplay;
    }
    return json;
  }

  /// Returns a new [Suggest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Suggest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Suggest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Suggest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Suggest(
        filterKey: mapValueOfType<String>(json, r'filterKey'),
        filterValue: mapValueOfType<String>(json, r'filterValue'),
        entityClass: mapValueOfType<String>(json, r'entityClass'),
        fieldValue: mapValueOfType<String>(json, r'fieldValue'),
        fieldDisplay: mapValueOfType<String>(json, r'fieldDisplay'),
      );
    }
    return null;
  }

  static List<Suggest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Suggest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Suggest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Suggest> mapFromJson(dynamic json) {
    final map = <String, Suggest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Suggest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Suggest-objects as value to a dart map
  static Map<String, List<Suggest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Suggest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Suggest.listFromJson(
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
  static const requiredKeys = <String>{};
}
