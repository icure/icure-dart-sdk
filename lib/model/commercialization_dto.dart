//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CommercializationDto {
  /// Returns a new [CommercializationDto] instance.
  CommercializationDto({
    this.from,
    this.to,
    this.reason,
    this.endOfComercialization,
    this.impact,
    this.additionalInformation,
  });

  int from;

  int to;

  SamTextDto reason;

  SamTextDto endOfComercialization;

  SamTextDto impact;

  SamTextDto additionalInformation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CommercializationDto &&
     other.from == from &&
     other.to == to &&
     other.reason == reason &&
     other.endOfComercialization == endOfComercialization &&
     other.impact == impact &&
     other.additionalInformation == additionalInformation;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (from == null ? 0 : from.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (reason == null ? 0 : reason.hashCode) +
    (endOfComercialization == null ? 0 : endOfComercialization.hashCode) +
    (impact == null ? 0 : impact.hashCode) +
    (additionalInformation == null ? 0 : additionalInformation.hashCode);

  @override
  String toString() => 'CommercializationDto[from=$from, to=$to, reason=$reason, endOfComercialization=$endOfComercialization, impact=$impact, additionalInformation=$additionalInformation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (from != null) {
      json[r'from'] = from;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (reason != null) {
      json[r'reason'] = reason;
    }
    if (endOfComercialization != null) {
      json[r'endOfComercialization'] = endOfComercialization;
    }
    if (impact != null) {
      json[r'impact'] = impact;
    }
    if (additionalInformation != null) {
      json[r'additionalInformation'] = additionalInformation;
    }
    return json;
  }

  /// Returns a new [CommercializationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CommercializationDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CommercializationDto(
        from: mapValueOfType<int>(json, r'from'),
        to: mapValueOfType<int>(json, r'to'),
        reason: SamTextDto.fromJson(json[r'reason']),
        endOfComercialization: SamTextDto.fromJson(json[r'endOfComercialization']),
        impact: SamTextDto.fromJson(json[r'impact']),
        additionalInformation: SamTextDto.fromJson(json[r'additionalInformation']),
      );
    }
    return null;
  }

  static List<CommercializationDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CommercializationDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CommercializationDto>[];

  static Map<String, CommercializationDto> mapFromJson(dynamic json) {
    final map = <String, CommercializationDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CommercializationDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CommercializationDto-objects as value to a dart map
  static Map<String, List<CommercializationDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CommercializationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CommercializationDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

