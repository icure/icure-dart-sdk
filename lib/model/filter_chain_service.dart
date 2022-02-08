//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FilterChainService {
  /// Returns a new [FilterChainService] instance.
  FilterChainService({
    @required this.filter,
    this.predicate,
  });

  AbstractFilterDtoService filter;

  Object predicate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FilterChainService &&
     other.filter == filter &&
     other.predicate == predicate;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (filter == null ? 0 : filter.hashCode) +
    (predicate == null ? 0 : predicate.hashCode);

  @override
  String toString() => 'FilterChainService[filter=$filter, predicate=$predicate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'filter'] = filter;
    if (predicate != null) {
      json[r'predicate'] = predicate;
    }
    return json;
  }

  /// Returns a new [FilterChainService] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FilterChainService fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FilterChainService(
        filter: AbstractFilterDtoService.fromJson(json[r'filter']),
        predicate: mapValueOfType<Object>(json, r'predicate'),
      );
    }
    return null;
  }

  static List<FilterChainService> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FilterChainService.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FilterChainService>[];

  static Map<String, FilterChainService> mapFromJson(dynamic json) {
    final map = <String, FilterChainService>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FilterChainService.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FilterChainService-objects as value to a dart map
  static Map<String, List<FilterChainService>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FilterChainService>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FilterChainService.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

