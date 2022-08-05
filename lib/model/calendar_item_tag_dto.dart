//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class CalendarItemTagDto {
  /// Returns a new [CalendarItemTagDto] instance.
  CalendarItemTagDto({
    this.code,
    this.date,
    this.userId,
    this.userName,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? date;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userName;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is CalendarItemTagDto &&
          other.code == code &&
          other.date == date &&
          other.userId == userId &&
          other.userName == userName;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
  (code == null ? 0 : code!.hashCode) +
      (date == null ? 0 : date!.hashCode) +
      (userId == null ? 0 : userId!.hashCode) +
      (userName == null ? 0 : userName!.hashCode);

  @override
  String toString() => 'CalendarItemTagDto[code=$code, date=$date, userId=$userId, userName=$userName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json[r'code'] = code;
    }
    if (date != null) {
      json[r'date'] = date;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    if (userName != null) {
      json[r'userName'] = userName;
    }
    return json;
  }

  /// Returns a new [CalendarItemTagDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CalendarItemTagDto? fromJson(dynamic value) {
    if (value is CalendarItemTagDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CalendarItemTagDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CalendarItemTagDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CalendarItemTagDto(
        code: mapValueOfType<String>(json, r'code'),
        date: mapValueOfType<int>(json, r'date'),
        userId: mapValueOfType<String>(json, r'userId'),
        userName: mapValueOfType<String>(json, r'userName'),
      );
    }
    return null;
  }

  static List<CalendarItemTagDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CalendarItemTagDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CalendarItemTagDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CalendarItemTagDto> mapFromJson(dynamic json) {
    final map = <String, CalendarItemTagDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CalendarItemTagDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CalendarItemTagDto-objects as value to a dart map
  static Map<String, List<CalendarItemTagDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CalendarItemTagDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CalendarItemTagDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
