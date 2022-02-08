//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CopaymentDto {
  /// Returns a new [CopaymentDto] instance.
  CopaymentDto({
    this.regimeType,
    this.from,
    this.to,
    this.feeAmount,
  });

  int regimeType;

  int from;

  int to;

  String feeAmount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CopaymentDto &&
     other.regimeType == regimeType &&
     other.from == from &&
     other.to == to &&
     other.feeAmount == feeAmount;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (regimeType == null ? 0 : regimeType.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (feeAmount == null ? 0 : feeAmount.hashCode);

  @override
  String toString() => 'CopaymentDto[regimeType=$regimeType, from=$from, to=$to, feeAmount=$feeAmount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (regimeType != null) {
      json[r'regimeType'] = regimeType;
    }
    if (from != null) {
      json[r'from'] = from;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (feeAmount != null) {
      json[r'feeAmount'] = feeAmount;
    }
    return json;
  }

  /// Returns a new [CopaymentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CopaymentDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CopaymentDto(
        regimeType: mapValueOfType<int>(json, r'regimeType'),
        from: mapValueOfType<int>(json, r'from'),
        to: mapValueOfType<int>(json, r'to'),
        feeAmount: mapValueOfType<String>(json, r'feeAmount'),
      );
    }
    return null;
  }

  static List<CopaymentDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CopaymentDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CopaymentDto>[];

  static Map<String, CopaymentDto> mapFromJson(dynamic json) {
    final map = <String, CopaymentDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CopaymentDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CopaymentDto-objects as value to a dart map
  static Map<String, List<CopaymentDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CopaymentDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CopaymentDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

