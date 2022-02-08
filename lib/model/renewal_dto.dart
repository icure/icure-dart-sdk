//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RenewalDto {
  /// Returns a new [RenewalDto] instance.
  RenewalDto({
    this.decimal,
    this.duration,
  });

  int decimal;

  DurationDto duration;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RenewalDto &&
     other.decimal == decimal &&
     other.duration == duration;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (decimal == null ? 0 : decimal.hashCode) +
    (duration == null ? 0 : duration.hashCode);

  @override
  String toString() => 'RenewalDto[decimal=$decimal, duration=$duration]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (decimal != null) {
      json[r'decimal'] = decimal;
    }
    if (duration != null) {
      json[r'duration'] = duration;
    }
    return json;
  }

  /// Returns a new [RenewalDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RenewalDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RenewalDto(
        decimal: mapValueOfType<int>(json, r'decimal'),
        duration: DurationDto.fromJson(json[r'duration']),
      );
    }
    return null;
  }

  static List<RenewalDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RenewalDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RenewalDto>[];

  static Map<String, RenewalDto> mapFromJson(dynamic json) {
    final map = <String, RenewalDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RenewalDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RenewalDto-objects as value to a dart map
  static Map<String, List<RenewalDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RenewalDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RenewalDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

