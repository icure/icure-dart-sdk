//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class InvoiceSender {
  /// Returns a new [InvoiceSender] instance.
  InvoiceSender({
    this.nihii,
    this.bic,
    this.iban,
    this.bce,
    this.ssin,
    this.lastName,
    this.firstName,
    this.phoneNumber,
    this.conventionCode,
    this.isSpecialist = false,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nihii;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bic;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iban;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bce;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ssin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? phoneNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? conventionCode;

  bool isSpecialist;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InvoiceSender &&
          other.nihii == nihii &&
          other.bic == bic &&
          other.iban == iban &&
          other.bce == bce &&
          other.ssin == ssin &&
          other.lastName == lastName &&
          other.firstName == firstName &&
          other.phoneNumber == phoneNumber &&
          other.conventionCode == conventionCode &&
          other.isSpecialist == isSpecialist;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (nihii == null ? 0 : nihii!.hashCode) +
      (bic == null ? 0 : bic!.hashCode) +
      (iban == null ? 0 : iban!.hashCode) +
      (bce == null ? 0 : bce!.hashCode) +
      (ssin == null ? 0 : ssin!.hashCode) +
      (lastName == null ? 0 : lastName!.hashCode) +
      (firstName == null ? 0 : firstName!.hashCode) +
      (phoneNumber == null ? 0 : phoneNumber!.hashCode) +
      (conventionCode == null ? 0 : conventionCode!.hashCode) +
      (isSpecialist.hashCode);

  @override
  String toString() =>
      'InvoiceSender[nihii=$nihii, bic=$bic, iban=$iban, bce=$bce, ssin=$ssin, lastName=$lastName, firstName=$firstName, phoneNumber=$phoneNumber, conventionCode=$conventionCode, isSpecialist=$isSpecialist]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (nihii != null) {
      json[r'nihii'] = nihii;
    }
    if (bic != null) {
      json[r'bic'] = bic;
    }
    if (iban != null) {
      json[r'iban'] = iban;
    }
    if (bce != null) {
      json[r'bce'] = bce;
    }
    if (ssin != null) {
      json[r'ssin'] = ssin;
    }
    if (lastName != null) {
      json[r'lastName'] = lastName;
    }
    if (firstName != null) {
      json[r'firstName'] = firstName;
    }
    if (phoneNumber != null) {
      json[r'phoneNumber'] = phoneNumber;
    }
    if (conventionCode != null) {
      json[r'conventionCode'] = conventionCode;
    }
    json[r'isSpecialist'] = isSpecialist;
    return json;
  }

  /// Returns a new [InvoiceSender] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InvoiceSender? fromJson(dynamic value) {
    if (value is InvoiceSender) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InvoiceSender[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InvoiceSender[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InvoiceSender(
        nihii: mapValueOfType<int>(json, r'nihii'),
        bic: mapValueOfType<String>(json, r'bic'),
        iban: mapValueOfType<String>(json, r'iban'),
        bce: mapValueOfType<int>(json, r'bce'),
        ssin: mapValueOfType<String>(json, r'ssin'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        firstName: mapValueOfType<String>(json, r'firstName'),
        phoneNumber: mapValueOfType<int>(json, r'phoneNumber'),
        conventionCode: mapValueOfType<int>(json, r'conventionCode'),
        isSpecialist: mapValueOfType<bool>(json, r'isSpecialist')!,
      );
    }
    return null;
  }

  static List<InvoiceSender>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <InvoiceSender>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvoiceSender.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InvoiceSender> mapFromJson(dynamic json) {
    final map = <String, InvoiceSender>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvoiceSender.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InvoiceSender-objects as value to a dart map
  static Map<String, List<InvoiceSender>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<InvoiceSender>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvoiceSender.listFromJson(
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
  static const requiredKeys = <String>{
    'isSpecialist',
  };
}
