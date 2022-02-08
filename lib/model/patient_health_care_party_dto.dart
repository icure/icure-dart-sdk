//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PatientHealthCarePartyDto {
  /// Returns a new [PatientHealthCarePartyDto] instance.
  PatientHealthCarePartyDto({
    this.type,
    this.healthcarePartyId,
    this.sendFormats = const {},
    this.referralPeriods = const {},
    this.referral = false,
    this.encryptedSelf,
  });

  /// Type of care/relationship.
  PatientHealthCarePartyDtoTypeEnum type;

  /// UUID of the hcp.
  String healthcarePartyId;

  /// Preferred format of exchange for diverse means of communication
  Map<String, String> sendFormats;

  /// Time periods
  Set<ReferralPeriodDto> referralPeriods;

  bool referral;

  /// The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
  String encryptedSelf;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatientHealthCarePartyDto &&
     other.type == type &&
     other.healthcarePartyId == healthcarePartyId &&
     other.sendFormats == sendFormats &&
     other.referralPeriods == referralPeriods &&
     other.referral == referral &&
     other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (type == null ? 0 : type.hashCode) +
    (healthcarePartyId == null ? 0 : healthcarePartyId.hashCode) +
    (sendFormats == null ? 0 : sendFormats.hashCode) +
    (referralPeriods == null ? 0 : referralPeriods.hashCode) +
    (referral == null ? 0 : referral.hashCode) +
    (encryptedSelf == null ? 0 : encryptedSelf.hashCode);

  @override
  String toString() => 'PatientHealthCarePartyDto[type=$type, healthcarePartyId=$healthcarePartyId, sendFormats=$sendFormats, referralPeriods=$referralPeriods, referral=$referral, encryptedSelf=$encryptedSelf]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (type != null) {
      json[r'type'] = type;
    }
    if (healthcarePartyId != null) {
      json[r'healthcarePartyId'] = healthcarePartyId;
    }
      json[r'sendFormats'] = sendFormats;
      json[r'referralPeriods'] = referralPeriods;
      json[r'referral'] = referral;
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [PatientHealthCarePartyDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatientHealthCarePartyDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PatientHealthCarePartyDto(
        type: PatientHealthCarePartyDtoTypeEnum.fromJson(json[r'type']),
        healthcarePartyId: mapValueOfType<String>(json, r'healthcarePartyId'),
        sendFormats: mapCastOfType<String, String>(json, r'sendFormats'),
        referralPeriods: ReferralPeriodDto.listFromJson(json[r'referralPeriods']),
        referral: mapValueOfType<bool>(json, r'referral'),
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<PatientHealthCarePartyDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PatientHealthCarePartyDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PatientHealthCarePartyDto>[];

  static Map<String, PatientHealthCarePartyDto> mapFromJson(dynamic json) {
    final map = <String, PatientHealthCarePartyDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PatientHealthCarePartyDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PatientHealthCarePartyDto-objects as value to a dart map
  static Map<String, List<PatientHealthCarePartyDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PatientHealthCarePartyDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PatientHealthCarePartyDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

/// Type of care/relationship.
class PatientHealthCarePartyDtoTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PatientHealthCarePartyDtoTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const doctor = PatientHealthCarePartyDtoTypeEnum._(r'doctor');
  static const referral = PatientHealthCarePartyDtoTypeEnum._(r'referral');
  static const medicalhouse = PatientHealthCarePartyDtoTypeEnum._(r'medicalhouse');
  static const retirementhome = PatientHealthCarePartyDtoTypeEnum._(r'retirementhome');
  static const hospital = PatientHealthCarePartyDtoTypeEnum._(r'hospital');
  static const other = PatientHealthCarePartyDtoTypeEnum._(r'other');
  static const referringphysician = PatientHealthCarePartyDtoTypeEnum._(r'referringphysician');
  static const managingorganization = PatientHealthCarePartyDtoTypeEnum._(r'managingorganization');

  /// List of all possible values in this [enum][PatientHealthCarePartyDtoTypeEnum].
  static const values = <PatientHealthCarePartyDtoTypeEnum>[
    doctor,
    referral,
    medicalhouse,
    retirementhome,
    hospital,
    other,
    referringphysician,
    managingorganization,
  ];

  static PatientHealthCarePartyDtoTypeEnum fromJson(dynamic value) =>
    PatientHealthCarePartyDtoTypeEnumTypeTransformer().decode(value);

  static List<PatientHealthCarePartyDtoTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PatientHealthCarePartyDtoTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PatientHealthCarePartyDtoTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [PatientHealthCarePartyDtoTypeEnum] to String,
/// and [decode] dynamic data back to [PatientHealthCarePartyDtoTypeEnum].
class PatientHealthCarePartyDtoTypeEnumTypeTransformer {
  factory PatientHealthCarePartyDtoTypeEnumTypeTransformer() => _instance ??= const PatientHealthCarePartyDtoTypeEnumTypeTransformer._();

  const PatientHealthCarePartyDtoTypeEnumTypeTransformer._();

  String encode(PatientHealthCarePartyDtoTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PatientHealthCarePartyDtoTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PatientHealthCarePartyDtoTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'doctor': return PatientHealthCarePartyDtoTypeEnum.doctor;
        case r'referral': return PatientHealthCarePartyDtoTypeEnum.referral;
        case r'medicalhouse': return PatientHealthCarePartyDtoTypeEnum.medicalhouse;
        case r'retirementhome': return PatientHealthCarePartyDtoTypeEnum.retirementhome;
        case r'hospital': return PatientHealthCarePartyDtoTypeEnum.hospital;
        case r'other': return PatientHealthCarePartyDtoTypeEnum.other;
        case r'referringphysician': return PatientHealthCarePartyDtoTypeEnum.referringphysician;
        case r'managingorganization': return PatientHealthCarePartyDtoTypeEnum.managingorganization;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PatientHealthCarePartyDtoTypeEnumTypeTransformer] instance.
  static PatientHealthCarePartyDtoTypeEnumTypeTransformer _instance;
}


