//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FilterChainCode {
  /// Returns a new [FilterChainCode] instance.
  FilterChainCode({
    @required this.filter,
    this.predicate,
  });

  AbstractFilterDtoCode filter;

  Object predicate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FilterChainCode &&
     other.filter == filter &&
     other.predicate == predicate;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (filter == null ? 0 : filter.hashCode) +
    (predicate == null ? 0 : predicate.hashCode);

  @override
  String toString() => 'FilterChainCode[filter=$filter, predicate=$predicate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'filter'] = filter;
    if (predicate != null) {
      json[r'predicate'] = predicate;
    }
    return json;
  }

  /// Returns a new [FilterChainCode] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FilterChainCode fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FilterChainCode(
        filter: AbstractFilterDtoCode.fromJson(json[r'filter']),
        predicate: mapValueOfType<Object>(json, r'predicate'),
      );
    }
    return null;
  }

  static List<FilterChainCode> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FilterChainCode.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FilterChainCode>[];

  static Map<String, FilterChainCode> mapFromJson(dynamic json) {
    final map = <String, FilterChainCode>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FilterChainCode.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FilterChainCode-objects as value to a dart map
  static Map<String, List<FilterChainCode>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FilterChainCode>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FilterChainCode.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

