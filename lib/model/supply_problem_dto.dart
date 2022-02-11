//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class SupplyProblemDto {
  /// Returns a new [SupplyProblemDto] instance.
  SupplyProblemDto({
    this.from,
    this.to,
    this.reason,
    this.expectedEndOn,
    this.impact,
    this.additionalInformation,
  });

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
  SamTextDto? reason;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expectedEndOn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SamTextDto? impact;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SamTextDto? additionalInformation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SupplyProblemDto &&
     other.from == from &&
     other.to == to &&
     other.reason == reason &&
     other.expectedEndOn == expectedEndOn &&
     other.impact == impact &&
     other.additionalInformation == additionalInformation;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (from == null ? 0 : from!.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (expectedEndOn == null ? 0 : expectedEndOn!.hashCode) +
    (impact == null ? 0 : impact!.hashCode) +
    (additionalInformation == null ? 0 : additionalInformation!.hashCode);

  @override
  String toString() => 'SupplyProblemDto[from=$from, to=$to, reason=$reason, expectedEndOn=$expectedEndOn, impact=$impact, additionalInformation=$additionalInformation]';

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
    if (expectedEndOn != null) {
      json[r'expectedEndOn'] = expectedEndOn;
    }
    if (impact != null) {
      json[r'impact'] = impact;
    }
    if (additionalInformation != null) {
      json[r'additionalInformation'] = additionalInformation;
    }
    return json;
  }

  /// Returns a new [SupplyProblemDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SupplyProblemDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SupplyProblemDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SupplyProblemDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SupplyProblemDto(
        from: mapValueOfType<int>(json, r'from'),
        to: mapValueOfType<int>(json, r'to'),
        reason: SamTextDto.fromJson(json[r'reason']),
        expectedEndOn: mapValueOfType<int>(json, r'expectedEndOn'),
        impact: SamTextDto.fromJson(json[r'impact']),
        additionalInformation: SamTextDto.fromJson(json[r'additionalInformation']),
      );
    }
    return null;
  }

  static List<SupplyProblemDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SupplyProblemDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SupplyProblemDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SupplyProblemDto> mapFromJson(dynamic json) {
    final map = <String, SupplyProblemDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SupplyProblemDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SupplyProblemDto-objects as value to a dart map
  static Map<String, List<SupplyProblemDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SupplyProblemDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SupplyProblemDto.listFromJson(entry.value, growable: growable,);
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

