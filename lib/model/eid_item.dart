//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EIDItem {
  /// Returns a new [EIDItem] instance.
  EIDItem({
    this.deviceType,
    this.readDate,
    this.readHour = 0,
    this.readType,
    this.readvalue,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deviceType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? readDate;

  int readHour;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? readType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? readvalue;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EIDItem &&
     other.deviceType == deviceType &&
     other.readDate == readDate &&
     other.readHour == readHour &&
     other.readType == readType &&
     other.readvalue == readvalue;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deviceType == null ? 0 : deviceType!.hashCode) +
    (readDate == null ? 0 : readDate!.hashCode) +
    (readHour.hashCode) +
    (readType == null ? 0 : readType!.hashCode) +
    (readvalue == null ? 0 : readvalue!.hashCode);

  @override
  String toString() => 'EIDItem[deviceType=$deviceType, readDate=$readDate, readHour=$readHour, readType=$readType, readvalue=$readvalue]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (deviceType != null) {
      json[r'deviceType'] = deviceType;
    }
    if (readDate != null) {
      json[r'readDate'] = readDate;
    }
      json[r'readHour'] = readHour;
    if (readType != null) {
      json[r'readType'] = readType;
    }
    if (readvalue != null) {
      json[r'readvalue'] = readvalue;
    }
    return json;
  }

  /// Returns a new [EIDItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EIDItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EIDItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EIDItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EIDItem(
        deviceType: mapValueOfType<String>(json, r'deviceType'),
        readDate: mapValueOfType<int>(json, r'readDate'),
        readHour: mapValueOfType<int>(json, r'readHour')!,
        readType: mapValueOfType<String>(json, r'readType'),
        readvalue: mapValueOfType<String>(json, r'readvalue'),
      );
    }
    return null;
  }

  static List<EIDItem>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EIDItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EIDItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EIDItem> mapFromJson(dynamic json) {
    final map = <String, EIDItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EIDItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EIDItem-objects as value to a dart map
  static Map<String, List<EIDItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EIDItem>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EIDItem.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'readHour',
  };
}

