//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

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
  SamTextDto? endOfComercialization;

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
  bool operator ==(Object other) =>
      identical(this, other) || other is CommercializationDto &&
          other.from == from &&
          other.to == to &&
          other.reason == reason &&
          other.endOfComercialization == endOfComercialization &&
          other.impact == impact &&
          other.additionalInformation == additionalInformation;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
  (from == null ? 0 : from!.hashCode) +
      (to == null ? 0 : to!.hashCode) +
      (reason == null ? 0 : reason!.hashCode) +
      (endOfComercialization == null ? 0 : endOfComercialization!.hashCode) +
      (impact == null ? 0 : impact!.hashCode) +
      (additionalInformation == null ? 0 : additionalInformation!.hashCode);

  @override
  String toString() =>
      'CommercializationDto[from=$from, to=$to, reason=$reason, endOfComercialization=$endOfComercialization, impact=$impact, additionalInformation=$additionalInformation]';

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
  static CommercializationDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CommercializationDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CommercializationDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

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

  static List<CommercializationDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CommercializationDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CommercializationDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CommercializationDto> mapFromJson(dynamic json) {
    final map = <String, CommercializationDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CommercializationDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CommercializationDto-objects as value to a dart map
  static Map<String, List<CommercializationDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CommercializationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CommercializationDto.listFromJson(entry.value, growable: growable,);
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

