//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RegimenItemDto {
  /// Returns a new [RegimenItemDto] instance.
  RegimenItemDto({
    this.date,
    this.dayNumber,
    this.weekday,
    this.dayPeriod,
    this.timeOfDay,
    this.administratedQuantity,
  });

  int date;

  int dayNumber;

  Weekday weekday;

  CodeStubDto dayPeriod;

  int timeOfDay;

  AdministrationQuantity administratedQuantity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegimenItemDto &&
     other.date == date &&
     other.dayNumber == dayNumber &&
     other.weekday == weekday &&
     other.dayPeriod == dayPeriod &&
     other.timeOfDay == timeOfDay &&
     other.administratedQuantity == administratedQuantity;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (date == null ? 0 : date.hashCode) +
    (dayNumber == null ? 0 : dayNumber.hashCode) +
    (weekday == null ? 0 : weekday.hashCode) +
    (dayPeriod == null ? 0 : dayPeriod.hashCode) +
    (timeOfDay == null ? 0 : timeOfDay.hashCode) +
    (administratedQuantity == null ? 0 : administratedQuantity.hashCode);

  @override
  String toString() => 'RegimenItemDto[date=$date, dayNumber=$dayNumber, weekday=$weekday, dayPeriod=$dayPeriod, timeOfDay=$timeOfDay, administratedQuantity=$administratedQuantity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (date != null) {
      json[r'date'] = date;
    }
    if (dayNumber != null) {
      json[r'dayNumber'] = dayNumber;
    }
    if (weekday != null) {
      json[r'weekday'] = weekday;
    }
    if (dayPeriod != null) {
      json[r'dayPeriod'] = dayPeriod;
    }
    if (timeOfDay != null) {
      json[r'timeOfDay'] = timeOfDay;
    }
    if (administratedQuantity != null) {
      json[r'administratedQuantity'] = administratedQuantity;
    }
    return json;
  }

  /// Returns a new [RegimenItemDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegimenItemDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RegimenItemDto(
        date: mapValueOfType<int>(json, r'date'),
        dayNumber: mapValueOfType<int>(json, r'dayNumber'),
        weekday: Weekday.fromJson(json[r'weekday']),
        dayPeriod: CodeStubDto.fromJson(json[r'dayPeriod']),
        timeOfDay: mapValueOfType<int>(json, r'timeOfDay'),
        administratedQuantity: AdministrationQuantity.fromJson(json[r'administratedQuantity']),
      );
    }
    return null;
  }

  static List<RegimenItemDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RegimenItemDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RegimenItemDto>[];

  static Map<String, RegimenItemDto> mapFromJson(dynamic json) {
    final map = <String, RegimenItemDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RegimenItemDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RegimenItemDto-objects as value to a dart map
  static Map<String, List<RegimenItemDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RegimenItemDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RegimenItemDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

