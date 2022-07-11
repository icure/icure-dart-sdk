//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class TimeTableItemDto {
  /// Returns a new [TimeTableItemDto] instance.
  TimeTableItemDto({
    this.days = const [],
    this.hours = const [],
    this.recurrenceTypes = const [],
    this.calendarItemTypeId,
    required this.homeVisit,
    this.placeId,
    required this.unavailable,
  });

  List<String> days;

  List<TimeTableHourDto> hours;

  List<String> recurrenceTypes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? calendarItemTypeId;

  bool homeVisit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? placeId;

  bool unavailable;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimeTableItemDto &&
          other.days == days &&
          other.hours == hours &&
          other.recurrenceTypes == recurrenceTypes &&
          other.calendarItemTypeId == calendarItemTypeId &&
          other.homeVisit == homeVisit &&
          other.placeId == placeId &&
          other.unavailable == unavailable;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (days.hashCode) +
      (hours.hashCode) +
      (recurrenceTypes.hashCode) +
      (calendarItemTypeId == null ? 0 : calendarItemTypeId!.hashCode) +
      (homeVisit.hashCode) +
      (placeId == null ? 0 : placeId!.hashCode) +
      (unavailable.hashCode);

  @override
  String toString() =>
      'TimeTableItemDto[days=$days, hours=$hours, recurrenceTypes=$recurrenceTypes, calendarItemTypeId=$calendarItemTypeId, homeVisit=$homeVisit, placeId=$placeId, unavailable=$unavailable]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'days'] = days;
    json[r'hours'] = hours;
    json[r'recurrenceTypes'] = recurrenceTypes;
    if (calendarItemTypeId != null) {
      json[r'calendarItemTypeId'] = calendarItemTypeId;
    }
    json[r'homeVisit'] = homeVisit;
    if (placeId != null) {
      json[r'placeId'] = placeId;
    }
    json[r'unavailable'] = unavailable;
    return json;
  }

  /// Returns a new [TimeTableItemDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TimeTableItemDto? fromJson(dynamic value) {
    if (value is TimeTableItemDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TimeTableItemDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TimeTableItemDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TimeTableItemDto(
        days: json[r'days'] is List ? (json[r'days'] as List).cast<String>() : const [],
        hours: TimeTableHourDto.listFromJson(json[r'hours'])!,
        recurrenceTypes: json[r'recurrenceTypes'] is List ? (json[r'recurrenceTypes'] as List).cast<String>() : const [],
        calendarItemTypeId: mapValueOfType<String>(json, r'calendarItemTypeId'),
        homeVisit: mapValueOfType<bool>(json, r'homeVisit')!,
        placeId: mapValueOfType<String>(json, r'placeId'),
        unavailable: mapValueOfType<bool>(json, r'unavailable')!,
      );
    }
    return null;
  }

  static List<TimeTableItemDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TimeTableItemDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimeTableItemDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TimeTableItemDto> mapFromJson(dynamic json) {
    final map = <String, TimeTableItemDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeTableItemDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TimeTableItemDto-objects as value to a dart map
  static Map<String, List<TimeTableItemDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TimeTableItemDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeTableItemDto.listFromJson(
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
  static const requiredKeys = <String>{
    'days',
    'hours',
    'recurrenceTypes',
    'homeVisit',
    'unavailable',
  };
}
