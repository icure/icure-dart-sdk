//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AbstractFilterDtoCode {
  /// Returns a new [AbstractFilterDtoCode] instance.
  AbstractFilterDtoCode({
    this.desc,
  });

  String desc;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AbstractFilterDtoCode &&
     other.desc == desc;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (desc == null ? 0 : desc.hashCode);

  @override
  String toString() => 'AbstractFilterDtoCode[desc=$desc]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (desc != null) {
      json[r'desc'] = desc;
    }
    return json;
  }

  /// Returns a new [AbstractFilterDtoCode] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AbstractFilterDtoCode fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AbstractFilterDtoCode(
        desc: mapValueOfType<String>(json, r'desc'),
      );
    }
    return null;
  }

  static List<AbstractFilterDtoCode> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AbstractFilterDtoCode.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AbstractFilterDtoCode>[];

  static Map<String, AbstractFilterDtoCode> mapFromJson(dynamic json) {
    final map = <String, AbstractFilterDtoCode>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AbstractFilterDtoCode.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AbstractFilterDtoCode-objects as value to a dart map
  static Map<String, List<AbstractFilterDtoCode>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AbstractFilterDtoCode>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AbstractFilterDtoCode.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

