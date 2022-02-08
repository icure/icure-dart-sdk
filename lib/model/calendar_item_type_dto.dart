//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CalendarItemTypeDto {
  /// Returns a new [CalendarItemTypeDto] instance.
  CalendarItemTypeDto({
    @required this.id,
    this.rev,
    this.deletionDate,
    this.name,
    this.color,
    this.duration = 0,
    this.externalRef,
    this.mikronoId,
    this.docIds = const {},
    this.otherInfos = const {},
    this.subjectByLanguage = const {},
  });

  String id;

  String rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  int deletionDate;

  String name;

  String color;

  int duration;

  String externalRef;

  String mikronoId;

  Set<String> docIds;

  Map<String, String> otherInfos;

  Map<String, String> subjectByLanguage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CalendarItemTypeDto &&
     other.id == id &&
     other.rev == rev &&
     other.deletionDate == deletionDate &&
     other.name == name &&
     other.color == color &&
     other.duration == duration &&
     other.externalRef == externalRef &&
     other.mikronoId == mikronoId &&
     other.docIds == docIds &&
     other.otherInfos == otherInfos &&
     other.subjectByLanguage == subjectByLanguage;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (rev == null ? 0 : rev.hashCode) +
    (deletionDate == null ? 0 : deletionDate.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (color == null ? 0 : color.hashCode) +
    (duration == null ? 0 : duration.hashCode) +
    (externalRef == null ? 0 : externalRef.hashCode) +
    (mikronoId == null ? 0 : mikronoId.hashCode) +
    (docIds == null ? 0 : docIds.hashCode) +
    (otherInfos == null ? 0 : otherInfos.hashCode) +
    (subjectByLanguage == null ? 0 : subjectByLanguage.hashCode);

  @override
  String toString() => 'CalendarItemTypeDto[id=$id, rev=$rev, deletionDate=$deletionDate, name=$name, color=$color, duration=$duration, externalRef=$externalRef, mikronoId=$mikronoId, docIds=$docIds, otherInfos=$otherInfos, subjectByLanguage=$subjectByLanguage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (rev != null) {
      json[r'rev'] = rev;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (color != null) {
      json[r'color'] = color;
    }
      json[r'duration'] = duration;
    if (externalRef != null) {
      json[r'externalRef'] = externalRef;
    }
    if (mikronoId != null) {
      json[r'mikronoId'] = mikronoId;
    }
      json[r'docIds'] = docIds;
      json[r'otherInfos'] = otherInfos;
      json[r'subjectByLanguage'] = subjectByLanguage;
    return json;
  }

  /// Returns a new [CalendarItemTypeDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CalendarItemTypeDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CalendarItemTypeDto(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        name: mapValueOfType<String>(json, r'name'),
        color: mapValueOfType<String>(json, r'color'),
        duration: mapValueOfType<int>(json, r'duration'),
        externalRef: mapValueOfType<String>(json, r'externalRef'),
        mikronoId: mapValueOfType<String>(json, r'mikronoId'),
        docIds: json[r'docIds'] is Set
          ? (json[r'docIds'] as Set).cast<String>()
          : null,
        otherInfos: mapCastOfType<String, String>(json, r'otherInfos'),
        subjectByLanguage: mapCastOfType<String, String>(json, r'subjectByLanguage'),
      );
    }
    return null;
  }

  static List<CalendarItemTypeDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CalendarItemTypeDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CalendarItemTypeDto>[];

  static Map<String, CalendarItemTypeDto> mapFromJson(dynamic json) {
    final map = <String, CalendarItemTypeDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CalendarItemTypeDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CalendarItemTypeDto-objects as value to a dart map
  static Map<String, List<CalendarItemTypeDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CalendarItemTypeDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CalendarItemTypeDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

