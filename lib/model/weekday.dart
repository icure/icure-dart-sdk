//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Weekday {
  /// Returns a new [Weekday] instance.
  Weekday({
    this.weekday,
    this.weekNumber,
  });

  CodeStubDto weekday;

  int weekNumber;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Weekday &&
     other.weekday == weekday &&
     other.weekNumber == weekNumber;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (weekday == null ? 0 : weekday.hashCode) +
    (weekNumber == null ? 0 : weekNumber.hashCode);

  @override
  String toString() => 'Weekday[weekday=$weekday, weekNumber=$weekNumber]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (weekday != null) {
      json[r'weekday'] = weekday;
    }
    if (weekNumber != null) {
      json[r'weekNumber'] = weekNumber;
    }
    return json;
  }

  /// Returns a new [Weekday] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Weekday fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Weekday(
        weekday: CodeStubDto.fromJson(json[r'weekday']),
        weekNumber: mapValueOfType<int>(json, r'weekNumber'),
      );
    }
    return null;
  }

  static List<Weekday> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Weekday.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Weekday>[];

  static Map<String, Weekday> mapFromJson(dynamic json) {
    final map = <String, Weekday>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Weekday.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Weekday-objects as value to a dart map
  static Map<String, List<Weekday>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Weekday>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Weekday.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

