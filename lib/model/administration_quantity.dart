//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class AdministrationQuantity {
  /// Returns a new [AdministrationQuantity] instance.
  AdministrationQuantity({
    this.quantity,
    this.administrationUnit,
    this.unit,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? quantity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CodeStubDto? administrationUnit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unit;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AdministrationQuantity && other.quantity == quantity && other.administrationUnit == administrationUnit && other.unit == unit;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (quantity == null ? 0 : quantity!.hashCode) +
      (administrationUnit == null ? 0 : administrationUnit!.hashCode) +
      (unit == null ? 0 : unit!.hashCode);

  @override
  String toString() => 'AdministrationQuantity[quantity=$quantity, administrationUnit=$administrationUnit, unit=$unit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (quantity != null) {
      json[r'quantity'] = quantity;
    }
    if (administrationUnit != null) {
      json[r'administrationUnit'] = administrationUnit;
    }
    if (unit != null) {
      json[r'unit'] = unit;
    }
    return json;
  }

  /// Returns a new [AdministrationQuantity] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdministrationQuantity? fromJson(dynamic value) {
    if (value is AdministrationQuantity) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdministrationQuantity[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdministrationQuantity[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdministrationQuantity(
        quantity: mapValueOfType<double>(json, r'quantity'),
        administrationUnit: CodeStubDto.fromJson(json[r'administrationUnit']),
        unit: mapValueOfType<String>(json, r'unit'),
      );
    }
    return null;
  }

  static List<AdministrationQuantity>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AdministrationQuantity>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdministrationQuantity.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdministrationQuantity> mapFromJson(dynamic json) {
    final map = <String, AdministrationQuantity>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdministrationQuantity.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdministrationQuantity-objects as value to a dart map
  static Map<String, List<AdministrationQuantity>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AdministrationQuantity>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdministrationQuantity.listFromJson(
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
