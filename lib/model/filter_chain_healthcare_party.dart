//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FilterChainHealthcareParty {
  /// Returns a new [FilterChainHealthcareParty] instance.
  FilterChainHealthcareParty({
    @required this.filter,
    this.predicate,
  });

  AbstractFilterDtoHealthcareParty filter;

  Object predicate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FilterChainHealthcareParty &&
     other.filter == filter &&
     other.predicate == predicate;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (filter == null ? 0 : filter.hashCode) +
    (predicate == null ? 0 : predicate.hashCode);

  @override
  String toString() => 'FilterChainHealthcareParty[filter=$filter, predicate=$predicate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'filter'] = filter;
    if (predicate != null) {
      json[r'predicate'] = predicate;
    }
    return json;
  }

  /// Returns a new [FilterChainHealthcareParty] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FilterChainHealthcareParty fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FilterChainHealthcareParty(
        filter: AbstractFilterDtoHealthcareParty.fromJson(json[r'filter']),
        predicate: mapValueOfType<Object>(json, r'predicate'),
      );
    }
    return null;
  }

  static List<FilterChainHealthcareParty> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FilterChainHealthcareParty.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FilterChainHealthcareParty>[];

  static Map<String, FilterChainHealthcareParty> mapFromJson(dynamic json) {
    final map = <String, FilterChainHealthcareParty>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FilterChainHealthcareParty.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FilterChainHealthcareParty-objects as value to a dart map
  static Map<String, List<FilterChainHealthcareParty>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FilterChainHealthcareParty>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FilterChainHealthcareParty.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

