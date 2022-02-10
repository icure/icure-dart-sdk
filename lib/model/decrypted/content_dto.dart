//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DecryptedContentDto {
  /// Returns a new [DecryptedContentDto] instance.
  DecryptedContentDto({
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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stringValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? numberValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? booleanValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? instantValue;

  /// Value as date. The format could have a all three (day, month and year) or values on any of these three, whatever is known.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? fuzzyDateValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? binaryValue;

  /// Linked document.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? documentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MeasureDto? measureValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MedicationDto? medicationValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TimeSeriesDto? timeSeries;

  List<DecryptedServiceDto> compoundValue;

  List<MeasureDto> ratio;

  List<MeasureDto> range;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is DecryptedContentDto &&
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
  (stringValue == null ? 0 : stringValue!.hashCode) +
      (numberValue == null ? 0 : numberValue!.hashCode) +
      (booleanValue == null ? 0 : booleanValue!.hashCode) +
      (instantValue == null ? 0 : instantValue!.hashCode) +
      (fuzzyDateValue == null ? 0 : fuzzyDateValue!.hashCode) +
      (binaryValue == null ? 0 : binaryValue!.hashCode) +
      (documentId == null ? 0 : documentId!.hashCode) +
      (measureValue == null ? 0 : measureValue!.hashCode) +
      (medicationValue == null ? 0 : medicationValue!.hashCode) +
      (timeSeries == null ? 0 : timeSeries!.hashCode) +
      (compoundValue.hashCode) +
      (ratio.hashCode) +
      (range.hashCode);

  @override
  String toString() =>
      'DecryptedContentDto[stringValue=$stringValue, numberValue=$numberValue, booleanValue=$booleanValue, instantValue=$instantValue, fuzzyDateValue=$fuzzyDateValue, binaryValue=$binaryValue, documentId=$documentId, measureValue=$measureValue, medicationValue=$medicationValue, timeSeries=$timeSeries, compoundValue=$compoundValue, ratio=$ratio, range=$range]';

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
      json[r'instantValue'] = instantValue!.toUtc().toIso8601String();
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
    json[r'compoundValue'] = compoundValue;
    json[r'ratio'] = ratio;
    json[r'range'] = range;
    return json;
  }

  /// Returns a new [DecryptedContentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DecryptedContentDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
          'Required key "DecryptedContentDto[$key]" is missing from JSON.');
          assert(json[key] != null,
          'Required key "DecryptedContentDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DecryptedContentDto(
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
        compoundValue: DecryptedServiceDto.listFromJson(json[r'compoundValue']) ?? const [],
        ratio: MeasureDto.listFromJson(json[r'ratio']) ?? const [],
        range: MeasureDto.listFromJson(json[r'range']) ?? const [],
      );
    }
    return null;
  }

  static List<DecryptedContentDto>? listFromJson(dynamic json, {
    bool growable = false,
  }) {
    final result = <DecryptedContentDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DecryptedContentDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DecryptedContentDto> mapFromJson(dynamic json) {
    final map = <String, DecryptedContentDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DecryptedContentDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DecryptedContentDto-objects as value to a dart map
  static Map<String, List<DecryptedContentDto>> mapListFromJson(dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DecryptedContentDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DecryptedContentDto.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
