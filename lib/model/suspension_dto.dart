//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class SuspensionDto {
  /// Returns a new [SuspensionDto] instance.
  SuspensionDto({
    this.beginMoment,
    this.endMoment,
    this.suspensionReason,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? beginMoment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endMoment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? suspensionReason;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SuspensionDto &&
     other.beginMoment == beginMoment &&
     other.endMoment == endMoment &&
     other.suspensionReason == suspensionReason;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (beginMoment == null ? 0 : beginMoment!.hashCode) +
    (endMoment == null ? 0 : endMoment!.hashCode) +
    (suspensionReason == null ? 0 : suspensionReason!.hashCode);

  @override
  String toString() => 'SuspensionDto[beginMoment=$beginMoment, endMoment=$endMoment, suspensionReason=$suspensionReason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (beginMoment != null) {
      json[r'beginMoment'] = beginMoment;
    }
    if (endMoment != null) {
      json[r'endMoment'] = endMoment;
    }
    if (suspensionReason != null) {
      json[r'suspensionReason'] = suspensionReason;
    }
    return json;
  }

  /// Returns a new [SuspensionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SuspensionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SuspensionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SuspensionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SuspensionDto(
        beginMoment: mapValueOfType<int>(json, r'beginMoment'),
        endMoment: mapValueOfType<int>(json, r'endMoment'),
        suspensionReason: mapValueOfType<String>(json, r'suspensionReason'),
      );
    }
    return null;
  }

  static List<SuspensionDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SuspensionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SuspensionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SuspensionDto> mapFromJson(dynamic json) {
    final map = <String, SuspensionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SuspensionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SuspensionDto-objects as value to a dart map
  static Map<String, List<SuspensionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SuspensionDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SuspensionDto.listFromJson(entry.value, growable: growable,);
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

