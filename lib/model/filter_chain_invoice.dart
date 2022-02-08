//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FilterChainInvoice {
  /// Returns a new [FilterChainInvoice] instance.
  FilterChainInvoice({
    @required this.filter,
    this.predicate,
  });

  AbstractFilterDtoInvoice filter;

  Object predicate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FilterChainInvoice &&
     other.filter == filter &&
     other.predicate == predicate;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (filter == null ? 0 : filter.hashCode) +
    (predicate == null ? 0 : predicate.hashCode);

  @override
  String toString() => 'FilterChainInvoice[filter=$filter, predicate=$predicate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'filter'] = filter;
    if (predicate != null) {
      json[r'predicate'] = predicate;
    }
    return json;
  }

  /// Returns a new [FilterChainInvoice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FilterChainInvoice fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FilterChainInvoice(
        filter: AbstractFilterDtoInvoice.fromJson(json[r'filter']),
        predicate: mapValueOfType<Object>(json, r'predicate'),
      );
    }
    return null;
  }

  static List<FilterChainInvoice> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FilterChainInvoice.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FilterChainInvoice>[];

  static Map<String, FilterChainInvoice> mapFromJson(dynamic json) {
    final map = <String, FilterChainInvoice>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FilterChainInvoice.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FilterChainInvoice-objects as value to a dart map
  static Map<String, List<FilterChainInvoice>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FilterChainInvoice>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FilterChainInvoice.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

