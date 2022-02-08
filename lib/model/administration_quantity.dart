//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdministrationQuantity {
  /// Returns a new [AdministrationQuantity] instance.
  AdministrationQuantity({
    this.quantity,
    this.administrationUnit,
    this.unit,
  });

  double quantity;

  CodeStubDto administrationUnit;

  String unit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdministrationQuantity &&
     other.quantity == quantity &&
     other.administrationUnit == administrationUnit &&
     other.unit == unit;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (quantity == null ? 0 : quantity.hashCode) +
    (administrationUnit == null ? 0 : administrationUnit.hashCode) +
    (unit == null ? 0 : unit.hashCode);

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
  static AdministrationQuantity fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AdministrationQuantity(
        quantity: mapValueOfType<double>(json, r'quantity'),
        administrationUnit: CodeStubDto.fromJson(json[r'administrationUnit']),
        unit: mapValueOfType<String>(json, r'unit'),
      );
    }
    return null;
  }

  static List<AdministrationQuantity> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AdministrationQuantity.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AdministrationQuantity>[];

  static Map<String, AdministrationQuantity> mapFromJson(dynamic json) {
    final map = <String, AdministrationQuantity>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AdministrationQuantity.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AdministrationQuantity-objects as value to a dart map
  static Map<String, List<AdministrationQuantity>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AdministrationQuantity>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AdministrationQuantity.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

