//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AmpDto {
  /// Returns a new [AmpDto] instance.
  AmpDto({
    @required this.id,
    this.rev,
    this.deletionDate,
    this.from,
    this.to,
    this.code,
    this.vmp,
    this.officialName,
    this.status,
    this.name,
    @required this.blackTriangle,
    this.medicineType,
    this.company,
    this.abbreviatedName,
    this.proprietarySuffix,
    this.prescriptionName,
    this.ampps = const [],
    this.components = const [],
  });

  String id;

  String rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  int deletionDate;

  int from;

  int to;

  String code;

  VmpStubDto vmp;

  String officialName;

  AmpDtoStatusEnum status;

  SamTextDto name;

  bool blackTriangle;

  AmpDtoMedicineTypeEnum medicineType;

  CompanyDto company;

  SamTextDto abbreviatedName;

  SamTextDto proprietarySuffix;

  SamTextDto prescriptionName;

  List<AmppDto> ampps;

  List<AmpComponentDto> components;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AmpDto &&
     other.id == id &&
     other.rev == rev &&
     other.deletionDate == deletionDate &&
     other.from == from &&
     other.to == to &&
     other.code == code &&
     other.vmp == vmp &&
     other.officialName == officialName &&
     other.status == status &&
     other.name == name &&
     other.blackTriangle == blackTriangle &&
     other.medicineType == medicineType &&
     other.company == company &&
     other.abbreviatedName == abbreviatedName &&
     other.proprietarySuffix == proprietarySuffix &&
     other.prescriptionName == prescriptionName &&
     other.ampps == ampps &&
     other.components == components;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (rev == null ? 0 : rev.hashCode) +
    (deletionDate == null ? 0 : deletionDate.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (code == null ? 0 : code.hashCode) +
    (vmp == null ? 0 : vmp.hashCode) +
    (officialName == null ? 0 : officialName.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (blackTriangle == null ? 0 : blackTriangle.hashCode) +
    (medicineType == null ? 0 : medicineType.hashCode) +
    (company == null ? 0 : company.hashCode) +
    (abbreviatedName == null ? 0 : abbreviatedName.hashCode) +
    (proprietarySuffix == null ? 0 : proprietarySuffix.hashCode) +
    (prescriptionName == null ? 0 : prescriptionName.hashCode) +
    (ampps == null ? 0 : ampps.hashCode) +
    (components == null ? 0 : components.hashCode);

  @override
  String toString() => 'AmpDto[id=$id, rev=$rev, deletionDate=$deletionDate, from=$from, to=$to, code=$code, vmp=$vmp, officialName=$officialName, status=$status, name=$name, blackTriangle=$blackTriangle, medicineType=$medicineType, company=$company, abbreviatedName=$abbreviatedName, proprietarySuffix=$proprietarySuffix, prescriptionName=$prescriptionName, ampps=$ampps, components=$components]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (rev != null) {
      json[r'rev'] = rev;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
    }
    if (from != null) {
      json[r'from'] = from;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (code != null) {
      json[r'code'] = code;
    }
    if (vmp != null) {
      json[r'vmp'] = vmp;
    }
    if (officialName != null) {
      json[r'officialName'] = officialName;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (name != null) {
      json[r'name'] = name;
    }
      json[r'blackTriangle'] = blackTriangle;
    if (medicineType != null) {
      json[r'medicineType'] = medicineType;
    }
    if (company != null) {
      json[r'company'] = company;
    }
    if (abbreviatedName != null) {
      json[r'abbreviatedName'] = abbreviatedName;
    }
    if (proprietarySuffix != null) {
      json[r'proprietarySuffix'] = proprietarySuffix;
    }
    if (prescriptionName != null) {
      json[r'prescriptionName'] = prescriptionName;
    }
      json[r'ampps'] = ampps;
      json[r'components'] = components;
    return json;
  }

  /// Returns a new [AmpDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AmpDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AmpDto(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        from: mapValueOfType<int>(json, r'from'),
        to: mapValueOfType<int>(json, r'to'),
        code: mapValueOfType<String>(json, r'code'),
        vmp: VmpStubDto.fromJson(json[r'vmp']),
        officialName: mapValueOfType<String>(json, r'officialName'),
        status: AmpDtoStatusEnum.fromJson(json[r'status']),
        name: SamTextDto.fromJson(json[r'name']),
        blackTriangle: mapValueOfType<bool>(json, r'blackTriangle'),
        medicineType: AmpDtoMedicineTypeEnum.fromJson(json[r'medicineType']),
        company: CompanyDto.fromJson(json[r'company']),
        abbreviatedName: SamTextDto.fromJson(json[r'abbreviatedName']),
        proprietarySuffix: SamTextDto.fromJson(json[r'proprietarySuffix']),
        prescriptionName: SamTextDto.fromJson(json[r'prescriptionName']),
        ampps: AmppDto.listFromJson(json[r'ampps']),
        components: AmpComponentDto.listFromJson(json[r'components']),
      );
    }
    return null;
  }

  static List<AmpDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AmpDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AmpDto>[];

  static Map<String, AmpDto> mapFromJson(dynamic json) {
    final map = <String, AmpDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AmpDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AmpDto-objects as value to a dart map
  static Map<String, List<AmpDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AmpDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AmpDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class AmpDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AmpDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const AUTHORIZED = AmpDtoStatusEnum._(r'AUTHORIZED');
  static const SUSPENDED = AmpDtoStatusEnum._(r'SUSPENDED');
  static const REVOKED = AmpDtoStatusEnum._(r'REVOKED');

  /// List of all possible values in this [enum][AmpDtoStatusEnum].
  static const values = <AmpDtoStatusEnum>[
    AUTHORIZED,
    SUSPENDED,
    REVOKED,
  ];

  static AmpDtoStatusEnum fromJson(dynamic value) =>
    AmpDtoStatusEnumTypeTransformer().decode(value);

  static List<AmpDtoStatusEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AmpDtoStatusEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AmpDtoStatusEnum>[];
}

/// Transformation class that can [encode] an instance of [AmpDtoStatusEnum] to String,
/// and [decode] dynamic data back to [AmpDtoStatusEnum].
class AmpDtoStatusEnumTypeTransformer {
  factory AmpDtoStatusEnumTypeTransformer() => _instance ??= const AmpDtoStatusEnumTypeTransformer._();

  const AmpDtoStatusEnumTypeTransformer._();

  String encode(AmpDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AmpDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AmpDtoStatusEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'AUTHORIZED': return AmpDtoStatusEnum.AUTHORIZED;
        case r'SUSPENDED': return AmpDtoStatusEnum.SUSPENDED;
        case r'REVOKED': return AmpDtoStatusEnum.REVOKED;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AmpDtoStatusEnumTypeTransformer] instance.
  static AmpDtoStatusEnumTypeTransformer _instance;
}



class AmpDtoMedicineTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AmpDtoMedicineTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const ALLOPATHIC = AmpDtoMedicineTypeEnum._(r'ALLOPATHIC');
  static const HOMEOPATHIC = AmpDtoMedicineTypeEnum._(r'HOMEOPATHIC');

  /// List of all possible values in this [enum][AmpDtoMedicineTypeEnum].
  static const values = <AmpDtoMedicineTypeEnum>[
    ALLOPATHIC,
    HOMEOPATHIC,
  ];

  static AmpDtoMedicineTypeEnum fromJson(dynamic value) =>
    AmpDtoMedicineTypeEnumTypeTransformer().decode(value);

  static List<AmpDtoMedicineTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AmpDtoMedicineTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AmpDtoMedicineTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [AmpDtoMedicineTypeEnum] to String,
/// and [decode] dynamic data back to [AmpDtoMedicineTypeEnum].
class AmpDtoMedicineTypeEnumTypeTransformer {
  factory AmpDtoMedicineTypeEnumTypeTransformer() => _instance ??= const AmpDtoMedicineTypeEnumTypeTransformer._();

  const AmpDtoMedicineTypeEnumTypeTransformer._();

  String encode(AmpDtoMedicineTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AmpDtoMedicineTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AmpDtoMedicineTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'ALLOPATHIC': return AmpDtoMedicineTypeEnum.ALLOPATHIC;
        case r'HOMEOPATHIC': return AmpDtoMedicineTypeEnum.HOMEOPATHIC;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AmpDtoMedicineTypeEnumTypeTransformer] instance.
  static AmpDtoMedicineTypeEnumTypeTransformer _instance;
}


