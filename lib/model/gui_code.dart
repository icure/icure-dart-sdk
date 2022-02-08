//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GuiCode {
  /// Returns a new [GuiCode] instance.
  GuiCode({
    this.type,
    this.code,
  });

  String type;

  String code;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GuiCode &&
     other.type == type &&
     other.code == code;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (type == null ? 0 : type.hashCode) +
    (code == null ? 0 : code.hashCode);

  @override
  String toString() => 'GuiCode[type=$type, code=$code]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (type != null) {
      json[r'type'] = type;
    }
    if (code != null) {
      json[r'code'] = code;
    }
    return json;
  }

  /// Returns a new [GuiCode] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GuiCode fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GuiCode(
        type: mapValueOfType<String>(json, r'type'),
        code: mapValueOfType<String>(json, r'code'),
      );
    }
    return null;
  }

  static List<GuiCode> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GuiCode.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GuiCode>[];

  static Map<String, GuiCode> mapFromJson(dynamic json) {
    final map = <String, GuiCode>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GuiCode.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GuiCode-objects as value to a dart map
  static Map<String, List<GuiCode>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GuiCode>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GuiCode.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

