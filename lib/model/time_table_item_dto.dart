//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TimeTableItemDto {
  /// Returns a new [TimeTableItemDto] instance.
  TimeTableItemDto({
    this.days = const [],
    this.hours = const [],
    this.recurrenceTypes = const [],
    this.calendarItemTypeId,
    @required this.homeVisit,
    this.placeId,
    @required this.unavailable,
  });

  List<String> days;

  List<TimeTableHourDto> hours;

  List<String> recurrenceTypes;

  String calendarItemTypeId;

  bool homeVisit;

  String placeId;

  bool unavailable;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeTableItemDto &&
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
    (days == null ? 0 : days.hashCode) +
    (hours == null ? 0 : hours.hashCode) +
    (recurrenceTypes == null ? 0 : recurrenceTypes.hashCode) +
    (calendarItemTypeId == null ? 0 : calendarItemTypeId.hashCode) +
    (homeVisit == null ? 0 : homeVisit.hashCode) +
    (placeId == null ? 0 : placeId.hashCode) +
    (unavailable == null ? 0 : unavailable.hashCode);

  @override
  String toString() => 'TimeTableItemDto[days=$days, hours=$hours, recurrenceTypes=$recurrenceTypes, calendarItemTypeId=$calendarItemTypeId, homeVisit=$homeVisit, placeId=$placeId, unavailable=$unavailable]';

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
  static TimeTableItemDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return TimeTableItemDto(
        days: json[r'days'] is List
          ? (json[r'days'] as List).cast<String>()
          : null,
        hours: TimeTableHourDto.listFromJson(json[r'hours']),
        recurrenceTypes: json[r'recurrenceTypes'] is List
          ? (json[r'recurrenceTypes'] as List).cast<String>()
          : null,
        calendarItemTypeId: mapValueOfType<String>(json, r'calendarItemTypeId'),
        homeVisit: mapValueOfType<bool>(json, r'homeVisit'),
        placeId: mapValueOfType<String>(json, r'placeId'),
        unavailable: mapValueOfType<bool>(json, r'unavailable'),
      );
    }
    return null;
  }

  static List<TimeTableItemDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TimeTableItemDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TimeTableItemDto>[];

  static Map<String, TimeTableItemDto> mapFromJson(dynamic json) {
    final map = <String, TimeTableItemDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = TimeTableItemDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TimeTableItemDto-objects as value to a dart map
  static Map<String, List<TimeTableItemDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TimeTableItemDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = TimeTableItemDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

