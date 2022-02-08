//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? regimeType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? from;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? to;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? feeAmount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CopaymentDto &&
     other.regimeType == regimeType &&
     other.from == from &&
     other.to == to &&
     other.feeAmount == feeAmount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (regimeType == null ? 0 : regimeType!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (feeAmount == null ? 0 : feeAmount!.hashCode);

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
  static CopaymentDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CopaymentDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CopaymentDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CopaymentDto(
        regimeType: mapValueOfType<int>(json, r'regimeType'),
        from: mapValueOfType<int>(json, r'from'),
        to: mapValueOfType<int>(json, r'to'),
        feeAmount: mapValueOfType<String>(json, r'feeAmount'),
      );
    }
    return null;
  }

  static List<CopaymentDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CopaymentDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CopaymentDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CopaymentDto> mapFromJson(dynamic json) {
    final map = <String, CopaymentDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CopaymentDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CopaymentDto-objects as value to a dart map
  static Map<String, List<CopaymentDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CopaymentDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CopaymentDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

