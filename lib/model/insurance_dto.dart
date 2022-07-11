//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class InsuranceDto {
  /// Returns a new [InsuranceDto] instance.
  InsuranceDto({
    required this.id,
    this.rev,
    this.deletionDate,
    this.name = const {},
    required this.privateInsurance,
    required this.hospitalisationInsurance,
    required this.ambulatoryInsurance,
    this.code,
    this.agreementNumber,
    this.parent,
    required this.address,
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deletionDate;

  Map<String, String> name;

  bool privateInsurance;

  bool hospitalisationInsurance;

  bool ambulatoryInsurance;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? agreementNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parent;

  AddressDto address;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InsuranceDto &&
          other.id == id &&
          other.rev == rev &&
          other.deletionDate == deletionDate &&
          other.name == name &&
          other.privateInsurance == privateInsurance &&
          other.hospitalisationInsurance == hospitalisationInsurance &&
          other.ambulatoryInsurance == ambulatoryInsurance &&
          other.code == code &&
          other.agreementNumber == agreementNumber &&
          other.parent == parent &&
          other.address == address;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (rev == null ? 0 : rev!.hashCode) +
      (deletionDate == null ? 0 : deletionDate!.hashCode) +
      (name.hashCode) +
      (privateInsurance.hashCode) +
      (hospitalisationInsurance.hashCode) +
      (ambulatoryInsurance.hashCode) +
      (code == null ? 0 : code!.hashCode) +
      (agreementNumber == null ? 0 : agreementNumber!.hashCode) +
      (parent == null ? 0 : parent!.hashCode) +
      (address.hashCode);

  @override
  String toString() =>
      'InsuranceDto[id=$id, rev=$rev, deletionDate=$deletionDate, name=$name, privateInsurance=$privateInsurance, hospitalisationInsurance=$hospitalisationInsurance, ambulatoryInsurance=$ambulatoryInsurance, code=$code, agreementNumber=$agreementNumber, parent=$parent, address=$address]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = id;
    if (rev != null) {
      json[r'rev'] = rev;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
    }
    json[r'name'] = name;
    json[r'privateInsurance'] = privateInsurance;
    json[r'hospitalisationInsurance'] = hospitalisationInsurance;
    json[r'ambulatoryInsurance'] = ambulatoryInsurance;
    if (code != null) {
      json[r'code'] = code;
    }
    if (agreementNumber != null) {
      json[r'agreementNumber'] = agreementNumber;
    }
    if (parent != null) {
      json[r'parent'] = parent;
    }
    json[r'address'] = address;
    return json;
  }

  /// Returns a new [InsuranceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InsuranceDto? fromJson(dynamic value) {
    if (value is InsuranceDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InsuranceDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InsuranceDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InsuranceDto(
        id: mapValueOfType<String>(json, r'id')!,
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        name: mapCastOfType<String, String>(json, r'name')!,
        privateInsurance: mapValueOfType<bool>(json, r'privateInsurance')!,
        hospitalisationInsurance: mapValueOfType<bool>(json, r'hospitalisationInsurance')!,
        ambulatoryInsurance: mapValueOfType<bool>(json, r'ambulatoryInsurance')!,
        code: mapValueOfType<String>(json, r'code'),
        agreementNumber: mapValueOfType<String>(json, r'agreementNumber'),
        parent: mapValueOfType<String>(json, r'parent'),
        address: AddressDto.fromJson(json[r'address'])!,
      );
    }
    return null;
  }

  static List<InsuranceDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <InsuranceDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InsuranceDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InsuranceDto> mapFromJson(dynamic json) {
    final map = <String, InsuranceDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InsuranceDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InsuranceDto-objects as value to a dart map
  static Map<String, List<InsuranceDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<InsuranceDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InsuranceDto.listFromJson(
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
    'id',
    'name',
    'privateInsurance',
    'hospitalisationInsurance',
    'ambulatoryInsurance',
    'address',
  };
}
