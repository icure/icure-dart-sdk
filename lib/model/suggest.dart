//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Suggest {
  /// Returns a new [Suggest] instance.
  Suggest({
    this.filterKey,
    this.filterValue,
    this.entityClass,
    this.fieldValue,
    this.fieldDisplay,
  });

  String filterKey;

  String filterValue;

  String entityClass;

  String fieldValue;

  String fieldDisplay;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Suggest &&
     other.filterKey == filterKey &&
     other.filterValue == filterValue &&
     other.entityClass == entityClass &&
     other.fieldValue == fieldValue &&
     other.fieldDisplay == fieldDisplay;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (filterKey == null ? 0 : filterKey.hashCode) +
    (filterValue == null ? 0 : filterValue.hashCode) +
    (entityClass == null ? 0 : entityClass.hashCode) +
    (fieldValue == null ? 0 : fieldValue.hashCode) +
    (fieldDisplay == null ? 0 : fieldDisplay.hashCode);

  @override
  String toString() => 'Suggest[filterKey=$filterKey, filterValue=$filterValue, entityClass=$entityClass, fieldValue=$fieldValue, fieldDisplay=$fieldDisplay]';

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
  static Suggest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
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

  static List<Suggest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Suggest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Suggest>[];

  static Map<String, Suggest> mapFromJson(dynamic json) {
    final map = <String, Suggest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Suggest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Suggest-objects as value to a dart map
  static Map<String, List<Suggest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Suggest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Suggest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

