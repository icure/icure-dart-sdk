//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class RegimenItemDto {
  /// Returns a new [RegimenItemDto] instance.
  RegimenItemDto({
    this.date,
    this.dayNumber,
    this.weekday,
    this.dayPeriod,
    this.timeOfDay,
    this.administratedQuantity,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? date;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dayNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Weekday? weekday;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CodeStubDto? dayPeriod;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timeOfDay;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AdministrationQuantity? administratedQuantity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegimenItemDto &&
     other.date == date &&
     other.dayNumber == dayNumber &&
     other.weekday == weekday &&
     other.dayPeriod == dayPeriod &&
     other.timeOfDay == timeOfDay &&
     other.administratedQuantity == administratedQuantity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (date == null ? 0 : date!.hashCode) +
    (dayNumber == null ? 0 : dayNumber!.hashCode) +
    (weekday == null ? 0 : weekday!.hashCode) +
    (dayPeriod == null ? 0 : dayPeriod!.hashCode) +
    (timeOfDay == null ? 0 : timeOfDay!.hashCode) +
    (administratedQuantity == null ? 0 : administratedQuantity!.hashCode);

  @override
  String toString() => 'RegimenItemDto[date=$date, dayNumber=$dayNumber, weekday=$weekday, dayPeriod=$dayPeriod, timeOfDay=$timeOfDay, administratedQuantity=$administratedQuantity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (date != null) {
      json[r'date'] = date;
    }
    if (dayNumber != null) {
      json[r'dayNumber'] = dayNumber;
    }
    if (weekday != null) {
      json[r'weekday'] = weekday;
    }
    if (dayPeriod != null) {
      json[r'dayPeriod'] = dayPeriod;
    }
    if (timeOfDay != null) {
      json[r'timeOfDay'] = timeOfDay;
    }
    if (administratedQuantity != null) {
      json[r'administratedQuantity'] = administratedQuantity;
    }
    return json;
  }

  /// Returns a new [RegimenItemDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegimenItemDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RegimenItemDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RegimenItemDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RegimenItemDto(
        date: mapValueOfType<int>(json, r'date'),
        dayNumber: mapValueOfType<int>(json, r'dayNumber'),
        weekday: Weekday.fromJson(json[r'weekday']),
        dayPeriod: CodeStubDto.fromJson(json[r'dayPeriod']),
        timeOfDay: mapValueOfType<int>(json, r'timeOfDay'),
        administratedQuantity: AdministrationQuantity.fromJson(json[r'administratedQuantity']),
      );
    }
    return null;
  }

  static List<RegimenItemDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegimenItemDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegimenItemDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegimenItemDto> mapFromJson(dynamic json) {
    final map = <String, RegimenItemDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegimenItemDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegimenItemDto-objects as value to a dart map
  static Map<String, List<RegimenItemDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RegimenItemDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegimenItemDto.listFromJson(entry.value, growable: growable,);
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

