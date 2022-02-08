//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CalendarItemTagDto {
  /// Returns a new [CalendarItemTagDto] instance.
  CalendarItemTagDto({
    this.code,
    this.date,
    this.userId,
    this.userName,
  });

  String code;

  int date;

  String userId;

  String userName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CalendarItemTagDto &&
     other.code == code &&
     other.date == date &&
     other.userId == userId &&
     other.userName == userName;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (code == null ? 0 : code.hashCode) +
    (date == null ? 0 : date.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (userName == null ? 0 : userName.hashCode);

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
  static CalendarItemTagDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CalendarItemTagDto(
        code: mapValueOfType<String>(json, r'code'),
        date: mapValueOfType<int>(json, r'date'),
        userId: mapValueOfType<String>(json, r'userId'),
        userName: mapValueOfType<String>(json, r'userName'),
      );
    }
    return null;
  }

  static List<CalendarItemTagDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CalendarItemTagDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CalendarItemTagDto>[];

  static Map<String, CalendarItemTagDto> mapFromJson(dynamic json) {
    final map = <String, CalendarItemTagDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CalendarItemTagDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CalendarItemTagDto-objects as value to a dart map
  static Map<String, List<CalendarItemTagDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CalendarItemTagDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CalendarItemTagDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

