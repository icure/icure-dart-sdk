//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GuiCodeType {
  /// Returns a new [GuiCodeType] instance.
  GuiCodeType({
    this.type,
  });

  String type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GuiCodeType &&
     other.type == type;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (type == null ? 0 : type.hashCode);

  @override
  String toString() => 'GuiCodeType[type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (type != null) {
      json[r'type'] = type;
    }
    return json;
  }

  /// Returns a new [GuiCodeType] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GuiCodeType fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GuiCodeType(
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<GuiCodeType> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GuiCodeType.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GuiCodeType>[];

  static Map<String, GuiCodeType> mapFromJson(dynamic json) {
    final map = <String, GuiCodeType>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GuiCodeType.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GuiCodeType-objects as value to a dart map
  static Map<String, List<GuiCodeType>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GuiCodeType>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GuiCodeType.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

