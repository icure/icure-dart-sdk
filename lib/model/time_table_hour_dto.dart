//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class TimeTableHourDto {
  /// Returns a new [TimeTableHourDto] instance.
  TimeTableHourDto({
    this.startHour,
    this.endHour,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startHour;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endHour;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeTableHourDto && other.startHour == startHour && other.endHour == endHour;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (startHour == null ? 0 : startHour!.hashCode) + (endHour == null ? 0 : endHour!.hashCode);

  @override
  String toString() => 'TimeTableHourDto[startHour=$startHour, endHour=$endHour]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (startHour != null) {
      json[r'startHour'] = startHour;
    }
    if (endHour != null) {
      json[r'endHour'] = endHour;
    }
    return json;
  }

  /// Returns a new [TimeTableHourDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TimeTableHourDto? fromJson(dynamic value) {
    if (value is TimeTableHourDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TimeTableHourDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TimeTableHourDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TimeTableHourDto(
        startHour: mapValueOfType<int>(json, r'startHour'),
        endHour: mapValueOfType<int>(json, r'endHour'),
      );
    }
    return null;
  }

  static List<TimeTableHourDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TimeTableHourDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimeTableHourDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TimeTableHourDto> mapFromJson(dynamic json) {
    final map = <String, TimeTableHourDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeTableHourDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TimeTableHourDto-objects as value to a dart map
  static Map<String, List<TimeTableHourDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TimeTableHourDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeTableHourDto.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
