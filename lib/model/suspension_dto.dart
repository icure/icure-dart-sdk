//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SuspensionDto {
  /// Returns a new [SuspensionDto] instance.
  SuspensionDto({
    this.beginMoment,
    this.endMoment,
    this.suspensionReason,
  });

  int beginMoment;

  int endMoment;

  String suspensionReason;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SuspensionDto &&
     other.beginMoment == beginMoment &&
     other.endMoment == endMoment &&
     other.suspensionReason == suspensionReason;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (beginMoment == null ? 0 : beginMoment.hashCode) +
    (endMoment == null ? 0 : endMoment.hashCode) +
    (suspensionReason == null ? 0 : suspensionReason.hashCode);

  @override
  String toString() => 'SuspensionDto[beginMoment=$beginMoment, endMoment=$endMoment, suspensionReason=$suspensionReason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (beginMoment != null) {
      json[r'beginMoment'] = beginMoment;
    }
    if (endMoment != null) {
      json[r'endMoment'] = endMoment;
    }
    if (suspensionReason != null) {
      json[r'suspensionReason'] = suspensionReason;
    }
    return json;
  }

  /// Returns a new [SuspensionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SuspensionDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SuspensionDto(
        beginMoment: mapValueOfType<int>(json, r'beginMoment'),
        endMoment: mapValueOfType<int>(json, r'endMoment'),
        suspensionReason: mapValueOfType<String>(json, r'suspensionReason'),
      );
    }
    return null;
  }

  static List<SuspensionDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SuspensionDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SuspensionDto>[];

  static Map<String, SuspensionDto> mapFromJson(dynamic json) {
    final map = <String, SuspensionDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SuspensionDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SuspensionDto-objects as value to a dart map
  static Map<String, List<SuspensionDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SuspensionDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SuspensionDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

