//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class MedicinalproductDto {
  /// Returns a new [MedicinalproductDto] instance.
  MedicinalproductDto({
    this.intendedcds = const [],
    this.deliveredcds = const [],
    this.intendedname,
    this.deliveredname,
    this.productId,
  });

  List<CodeStubDto> intendedcds;

  List<CodeStubDto> deliveredcds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? intendedname;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deliveredname;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MedicinalproductDto &&
     other.intendedcds == intendedcds &&
     other.deliveredcds == deliveredcds &&
     other.intendedname == intendedname &&
     other.deliveredname == deliveredname &&
     other.productId == productId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (intendedcds.hashCode) +
    (deliveredcds.hashCode) +
    (intendedname == null ? 0 : intendedname!.hashCode) +
    (deliveredname == null ? 0 : deliveredname!.hashCode) +
    (productId == null ? 0 : productId!.hashCode);

  @override
  String toString() => 'MedicinalproductDto[intendedcds=$intendedcds, deliveredcds=$deliveredcds, intendedname=$intendedname, deliveredname=$deliveredname, productId=$productId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'intendedcds'] = intendedcds;
      json[r'deliveredcds'] = deliveredcds;
    if (intendedname != null) {
      json[r'intendedname'] = intendedname;
    }
    if (deliveredname != null) {
      json[r'deliveredname'] = deliveredname;
    }
    if (productId != null) {
      json[r'productId'] = productId;
    }
    return json;
  }

  /// Returns a new [MedicinalproductDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MedicinalproductDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MedicinalproductDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MedicinalproductDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MedicinalproductDto(
        intendedcds: CodeStubDto.listFromJson(json[r'intendedcds'])!,
        deliveredcds: CodeStubDto.listFromJson(json[r'deliveredcds'])!,
        intendedname: mapValueOfType<String>(json, r'intendedname'),
        deliveredname: mapValueOfType<String>(json, r'deliveredname'),
        productId: mapValueOfType<String>(json, r'productId'),
      );
    }
    return null;
  }

  static List<MedicinalproductDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MedicinalproductDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MedicinalproductDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MedicinalproductDto> mapFromJson(dynamic json) {
    final map = <String, MedicinalproductDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MedicinalproductDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MedicinalproductDto-objects as value to a dart map
  static Map<String, List<MedicinalproductDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MedicinalproductDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MedicinalproductDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'intendedcds',
    'deliveredcds',
  };
}

