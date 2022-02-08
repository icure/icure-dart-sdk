//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MeasureDto {
  /// Returns a new [MeasureDto] instance.
  MeasureDto({
    this.value,
    this.min,
    this.max,
    this.ref,
    this.severity,
    this.severityCode,
    this.evolution,
    this.unit,
    this.unitCodes = const {},
    this.comment,
    this.comparator,
  });

  double value;

  double min;

  double max;

  double ref;

  int severity;

  String severityCode;

  int evolution;

  String unit;

  Set<CodeStubDto> unitCodes;

  String comment;

  String comparator;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MeasureDto &&
     other.value == value &&
     other.min == min &&
     other.max == max &&
     other.ref == ref &&
     other.severity == severity &&
     other.severityCode == severityCode &&
     other.evolution == evolution &&
     other.unit == unit &&
     other.unitCodes == unitCodes &&
     other.comment == comment &&
     other.comparator == comparator;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (value == null ? 0 : value.hashCode) +
    (min == null ? 0 : min.hashCode) +
    (max == null ? 0 : max.hashCode) +
    (ref == null ? 0 : ref.hashCode) +
    (severity == null ? 0 : severity.hashCode) +
    (severityCode == null ? 0 : severityCode.hashCode) +
    (evolution == null ? 0 : evolution.hashCode) +
    (unit == null ? 0 : unit.hashCode) +
    (unitCodes == null ? 0 : unitCodes.hashCode) +
    (comment == null ? 0 : comment.hashCode) +
    (comparator == null ? 0 : comparator.hashCode);

  @override
  String toString() => 'MeasureDto[value=$value, min=$min, max=$max, ref=$ref, severity=$severity, severityCode=$severityCode, evolution=$evolution, unit=$unit, unitCodes=$unitCodes, comment=$comment, comparator=$comparator]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (value != null) {
      json[r'value'] = value;
    }
    if (min != null) {
      json[r'min'] = min;
    }
    if (max != null) {
      json[r'max'] = max;
    }
    if (ref != null) {
      json[r'ref'] = ref;
    }
    if (severity != null) {
      json[r'severity'] = severity;
    }
    if (severityCode != null) {
      json[r'severityCode'] = severityCode;
    }
    if (evolution != null) {
      json[r'evolution'] = evolution;
    }
    if (unit != null) {
      json[r'unit'] = unit;
    }
    if (unitCodes != null) {
      json[r'unitCodes'] = unitCodes;
    }
    if (comment != null) {
      json[r'comment'] = comment;
    }
    if (comparator != null) {
      json[r'comparator'] = comparator;
    }
    return json;
  }

  /// Returns a new [MeasureDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MeasureDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MeasureDto(
        value: mapValueOfType<double>(json, r'value'),
        min: mapValueOfType<double>(json, r'min'),
        max: mapValueOfType<double>(json, r'max'),
        ref: mapValueOfType<double>(json, r'ref'),
        severity: mapValueOfType<int>(json, r'severity'),
        severityCode: mapValueOfType<String>(json, r'severityCode'),
        evolution: mapValueOfType<int>(json, r'evolution'),
        unit: mapValueOfType<String>(json, r'unit'),
        unitCodes: CodeStubDto.listFromJson(json[r'unitCodes']),
        comment: mapValueOfType<String>(json, r'comment'),
        comparator: mapValueOfType<String>(json, r'comparator'),
      );
    }
    return null;
  }

  static List<MeasureDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MeasureDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MeasureDto>[];

  static Map<String, MeasureDto> mapFromJson(dynamic json) {
    final map = <String, MeasureDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = MeasureDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MeasureDto-objects as value to a dart map
  static Map<String, List<MeasureDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MeasureDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = MeasureDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

