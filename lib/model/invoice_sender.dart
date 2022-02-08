//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

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

  int nihii;

  String bic;

  String iban;

  int bce;

  String ssin;

  String lastName;

  String firstName;

  int phoneNumber;

  int conventionCode;

  bool isSpecialist;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InvoiceSender &&
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
    (nihii == null ? 0 : nihii.hashCode) +
    (bic == null ? 0 : bic.hashCode) +
    (iban == null ? 0 : iban.hashCode) +
    (bce == null ? 0 : bce.hashCode) +
    (ssin == null ? 0 : ssin.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber.hashCode) +
    (conventionCode == null ? 0 : conventionCode.hashCode) +
    (isSpecialist == null ? 0 : isSpecialist.hashCode);

  @override
  String toString() => 'InvoiceSender[nihii=$nihii, bic=$bic, iban=$iban, bce=$bce, ssin=$ssin, lastName=$lastName, firstName=$firstName, phoneNumber=$phoneNumber, conventionCode=$conventionCode, isSpecialist=$isSpecialist]';

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
  static InvoiceSender fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
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
        isSpecialist: mapValueOfType<bool>(json, r'isSpecialist'),
      );
    }
    return null;
  }

  static List<InvoiceSender> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InvoiceSender.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InvoiceSender>[];

  static Map<String, InvoiceSender> mapFromJson(dynamic json) {
    final map = <String, InvoiceSender>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InvoiceSender.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InvoiceSender-objects as value to a dart map
  static Map<String, List<InvoiceSender>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InvoiceSender>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InvoiceSender.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

