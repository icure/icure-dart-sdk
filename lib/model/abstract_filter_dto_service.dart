//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AbstractFilterDtoService {
  /// Returns a new [AbstractFilterDtoService] instance.
  AbstractFilterDtoService({
    this.desc,
  });

  String desc;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AbstractFilterDtoService &&
     other.desc == desc;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (desc == null ? 0 : desc.hashCode);

  @override
  String toString() => 'AbstractFilterDtoService[desc=$desc]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (desc != null) {
      json[r'desc'] = desc;
    }
    return json;
  }

  /// Returns a new [AbstractFilterDtoService] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AbstractFilterDtoService fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AbstractFilterDtoService(
        desc: mapValueOfType<String>(json, r'desc'),
      );
    }
    return null;
  }

  static List<AbstractFilterDtoService> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AbstractFilterDtoService.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AbstractFilterDtoService>[];

  static Map<String, AbstractFilterDtoService> mapFromJson(dynamic json) {
    final map = <String, AbstractFilterDtoService>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AbstractFilterDtoService.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AbstractFilterDtoService-objects as value to a dart map
  static Map<String, List<AbstractFilterDtoService>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AbstractFilterDtoService>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AbstractFilterDtoService.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

