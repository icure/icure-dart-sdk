//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ContentDto {
  /// Returns a new [ContentDto] instance.
  ContentDto({
    this.stringValue,
    this.numberValue,
    this.booleanValue,
    this.instantValue,
    this.fuzzyDateValue,
    this.binaryValue,
    this.documentId,
    this.measureValue,
    this.medicationValue,
    this.timeSeries,
    this.compoundValue = const [],
    this.ratio = const [],
    this.range = const [],
  });

  String stringValue;

  double numberValue;

  bool booleanValue;

  DateTime instantValue;

  /// Value as date. The format could have a all three (day, month and year) or values on any of these three, whatever is known.
  int fuzzyDateValue;

  String binaryValue;

  /// Linked document.
  String documentId;

  MeasureDto measureValue;

  MedicationDto medicationValue;

  TimeSeriesDto timeSeries;

  List<ServiceDto> compoundValue;

  List<MeasureDto> ratio;

  List<MeasureDto> range;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContentDto &&
     other.stringValue == stringValue &&
     other.numberValue == numberValue &&
     other.booleanValue == booleanValue &&
     other.instantValue == instantValue &&
     other.fuzzyDateValue == fuzzyDateValue &&
     other.binaryValue == binaryValue &&
     other.documentId == documentId &&
     other.measureValue == measureValue &&
     other.medicationValue == medicationValue &&
     other.timeSeries == timeSeries &&
     other.compoundValue == compoundValue &&
     other.ratio == ratio &&
     other.range == range;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (stringValue == null ? 0 : stringValue.hashCode) +
    (numberValue == null ? 0 : numberValue.hashCode) +
    (booleanValue == null ? 0 : booleanValue.hashCode) +
    (instantValue == null ? 0 : instantValue.hashCode) +
    (fuzzyDateValue == null ? 0 : fuzzyDateValue.hashCode) +
    (binaryValue == null ? 0 : binaryValue.hashCode) +
    (documentId == null ? 0 : documentId.hashCode) +
    (measureValue == null ? 0 : measureValue.hashCode) +
    (medicationValue == null ? 0 : medicationValue.hashCode) +
    (timeSeries == null ? 0 : timeSeries.hashCode) +
    (compoundValue == null ? 0 : compoundValue.hashCode) +
    (ratio == null ? 0 : ratio.hashCode) +
    (range == null ? 0 : range.hashCode);

  @override
  String toString() => 'ContentDto[stringValue=$stringValue, numberValue=$numberValue, booleanValue=$booleanValue, instantValue=$instantValue, fuzzyDateValue=$fuzzyDateValue, binaryValue=$binaryValue, documentId=$documentId, measureValue=$measureValue, medicationValue=$medicationValue, timeSeries=$timeSeries, compoundValue=$compoundValue, ratio=$ratio, range=$range]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (stringValue != null) {
      json[r'stringValue'] = stringValue;
    }
    if (numberValue != null) {
      json[r'numberValue'] = numberValue;
    }
    if (booleanValue != null) {
      json[r'booleanValue'] = booleanValue;
    }
    if (instantValue != null) {
      json[r'instantValue'] = instantValue.toUtc().toIso8601String();
    }
    if (fuzzyDateValue != null) {
      json[r'fuzzyDateValue'] = fuzzyDateValue;
    }
    if (binaryValue != null) {
      json[r'binaryValue'] = binaryValue;
    }
    if (documentId != null) {
      json[r'documentId'] = documentId;
    }
    if (measureValue != null) {
      json[r'measureValue'] = measureValue;
    }
    if (medicationValue != null) {
      json[r'medicationValue'] = medicationValue;
    }
    if (timeSeries != null) {
      json[r'timeSeries'] = timeSeries;
    }
    if (compoundValue != null) {
      json[r'compoundValue'] = compoundValue;
    }
    if (ratio != null) {
      json[r'ratio'] = ratio;
    }
    if (range != null) {
      json[r'range'] = range;
    }
    return json;
  }

  /// Returns a new [ContentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContentDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ContentDto(
        stringValue: mapValueOfType<String>(json, r'stringValue'),
        numberValue: mapValueOfType<double>(json, r'numberValue'),
        booleanValue: mapValueOfType<bool>(json, r'booleanValue'),
        instantValue: mapDateTime(json, r'instantValue', ''),
        fuzzyDateValue: mapValueOfType<int>(json, r'fuzzyDateValue'),
        binaryValue: mapValueOfType<String>(json, r'binaryValue'),
        documentId: mapValueOfType<String>(json, r'documentId'),
        measureValue: MeasureDto.fromJson(json[r'measureValue']),
        medicationValue: MedicationDto.fromJson(json[r'medicationValue']),
        timeSeries: TimeSeriesDto.fromJson(json[r'timeSeries']),
        compoundValue: ServiceDto.listFromJson(json[r'compoundValue']),
        ratio: MeasureDto.listFromJson(json[r'ratio']),
        range: MeasureDto.listFromJson(json[r'range']),
      );
    }
    return null;
  }

  static List<ContentDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ContentDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ContentDto>[];

  static Map<String, ContentDto> mapFromJson(dynamic json) {
    final map = <String, ContentDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ContentDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ContentDto-objects as value to a dart map
  static Map<String, List<ContentDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ContentDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ContentDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

