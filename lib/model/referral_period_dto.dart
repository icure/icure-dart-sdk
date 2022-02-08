//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReferralPeriodDto {
  /// Returns a new [ReferralPeriodDto] instance.
  ReferralPeriodDto({
    this.startDate,
    this.endDate,
    this.comment,
  });

  /// The date (unix epoch in ms) when the referral period initiated, will be filled instantaneously.
  DateTime startDate;

  /// The date (unix epoch in ms) the referral period ended, will be instantaneously filled.
  DateTime endDate;

  /// Comments made during the referral.
  String comment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReferralPeriodDto &&
     other.startDate == startDate &&
     other.endDate == endDate &&
     other.comment == comment;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (startDate == null ? 0 : startDate.hashCode) +
    (endDate == null ? 0 : endDate.hashCode) +
    (comment == null ? 0 : comment.hashCode);

  @override
  String toString() => 'ReferralPeriodDto[startDate=$startDate, endDate=$endDate, comment=$comment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (startDate != null) {
      json[r'startDate'] = startDate.toUtc().toIso8601String();
    }
    if (endDate != null) {
      json[r'endDate'] = endDate.toUtc().toIso8601String();
    }
    if (comment != null) {
      json[r'comment'] = comment;
    }
    return json;
  }

  /// Returns a new [ReferralPeriodDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReferralPeriodDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ReferralPeriodDto(
        startDate: mapDateTime(json, r'startDate', ''),
        endDate: mapDateTime(json, r'endDate', ''),
        comment: mapValueOfType<String>(json, r'comment'),
      );
    }
    return null;
  }

  static List<ReferralPeriodDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ReferralPeriodDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ReferralPeriodDto>[];

  static Map<String, ReferralPeriodDto> mapFromJson(dynamic json) {
    final map = <String, ReferralPeriodDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ReferralPeriodDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ReferralPeriodDto-objects as value to a dart map
  static Map<String, List<ReferralPeriodDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ReferralPeriodDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ReferralPeriodDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

