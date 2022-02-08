//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TimeSeriesDto {
  /// Returns a new [TimeSeriesDto] instance.
  TimeSeriesDto({
    this.fields = const [],
    this.samples = const [],
    this.min = const [],
    this.max = const [],
    this.mean = const [],
    this.median = const [],
    this.variance = const [],
  });

  List<String> fields;

  List<List<double>> samples;

  List<double> min;

  List<double> max;

  List<double> mean;

  List<double> median;

  List<double> variance;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeSeriesDto &&
     other.fields == fields &&
     other.samples == samples &&
     other.min == min &&
     other.max == max &&
     other.mean == mean &&
     other.median == median &&
     other.variance == variance;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (fields == null ? 0 : fields.hashCode) +
    (samples == null ? 0 : samples.hashCode) +
    (min == null ? 0 : min.hashCode) +
    (max == null ? 0 : max.hashCode) +
    (mean == null ? 0 : mean.hashCode) +
    (median == null ? 0 : median.hashCode) +
    (variance == null ? 0 : variance.hashCode);

  @override
  String toString() => 'TimeSeriesDto[fields=$fields, samples=$samples, min=$min, max=$max, mean=$mean, median=$median, variance=$variance]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'fields'] = fields;
      json[r'samples'] = samples;
      json[r'min'] = min;
      json[r'max'] = max;
      json[r'mean'] = mean;
      json[r'median'] = median;
      json[r'variance'] = variance;
    return json;
  }

  /// Returns a new [TimeSeriesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TimeSeriesDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return TimeSeriesDto(
        fields: json[r'fields'] is List
          ? (json[r'fields'] as List).cast<String>()
          : null,
        samples: json[r'samples'] is List
          ? (json[r'samples'] as List).map(
              (e) => e == null ? null : (e as List).cast<double>()
            ).toList(growable: false)
          : null,
        min: json[r'min'] is List
          ? (json[r'min'] as List).cast<double>()
          : null,
        max: json[r'max'] is List
          ? (json[r'max'] as List).cast<double>()
          : null,
        mean: json[r'mean'] is List
          ? (json[r'mean'] as List).cast<double>()
          : null,
        median: json[r'median'] is List
          ? (json[r'median'] as List).cast<double>()
          : null,
        variance: json[r'variance'] is List
          ? (json[r'variance'] as List).cast<double>()
          : null,
      );
    }
    return null;
  }

  static List<TimeSeriesDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TimeSeriesDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TimeSeriesDto>[];

  static Map<String, TimeSeriesDto> mapFromJson(dynamic json) {
    final map = <String, TimeSeriesDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = TimeSeriesDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TimeSeriesDto-objects as value to a dart map
  static Map<String, List<TimeSeriesDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TimeSeriesDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = TimeSeriesDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

