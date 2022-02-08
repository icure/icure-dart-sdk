//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InsuranceDto {
  /// Returns a new [InsuranceDto] instance.
  InsuranceDto({
    @required this.id,
    this.rev,
    this.deletionDate,
    this.name = const {},
    @required this.privateInsurance,
    @required this.hospitalisationInsurance,
    @required this.ambulatoryInsurance,
    this.code,
    this.agreementNumber,
    this.parent,
    @required this.address,
  });

  String id;

  String rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  int deletionDate;

  Map<String, String> name;

  bool privateInsurance;

  bool hospitalisationInsurance;

  bool ambulatoryInsurance;

  String code;

  String agreementNumber;

  String parent;

  AddressDto address;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InsuranceDto &&
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
    (id == null ? 0 : id.hashCode) +
    (rev == null ? 0 : rev.hashCode) +
    (deletionDate == null ? 0 : deletionDate.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (privateInsurance == null ? 0 : privateInsurance.hashCode) +
    (hospitalisationInsurance == null ? 0 : hospitalisationInsurance.hashCode) +
    (ambulatoryInsurance == null ? 0 : ambulatoryInsurance.hashCode) +
    (code == null ? 0 : code.hashCode) +
    (agreementNumber == null ? 0 : agreementNumber.hashCode) +
    (parent == null ? 0 : parent.hashCode) +
    (address == null ? 0 : address.hashCode);

  @override
  String toString() => 'InsuranceDto[id=$id, rev=$rev, deletionDate=$deletionDate, name=$name, privateInsurance=$privateInsurance, hospitalisationInsurance=$hospitalisationInsurance, ambulatoryInsurance=$ambulatoryInsurance, code=$code, agreementNumber=$agreementNumber, parent=$parent, address=$address]';

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
  static InsuranceDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InsuranceDto(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        name: mapCastOfType<String, String>(json, r'name'),
        privateInsurance: mapValueOfType<bool>(json, r'privateInsurance'),
        hospitalisationInsurance: mapValueOfType<bool>(json, r'hospitalisationInsurance'),
        ambulatoryInsurance: mapValueOfType<bool>(json, r'ambulatoryInsurance'),
        code: mapValueOfType<String>(json, r'code'),
        agreementNumber: mapValueOfType<String>(json, r'agreementNumber'),
        parent: mapValueOfType<String>(json, r'parent'),
        address: AddressDto.fromJson(json[r'address']),
      );
    }
    return null;
  }

  static List<InsuranceDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InsuranceDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InsuranceDto>[];

  static Map<String, InsuranceDto> mapFromJson(dynamic json) {
    final map = <String, InsuranceDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InsuranceDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InsuranceDto-objects as value to a dart map
  static Map<String, List<InsuranceDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InsuranceDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InsuranceDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

