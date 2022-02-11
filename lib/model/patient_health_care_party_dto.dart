//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

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
  PatientHealthCarePartyDtoTypeEnum? type;

  /// UUID of the hcp.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? healthcarePartyId;

  /// Preferred format of exchange for diverse means of communication
  Map<String, String> sendFormats;

  /// Time periods
  Set<ReferralPeriodDto> referralPeriods;

  bool referral;

  /// The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? encryptedSelf;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PatientHealthCarePartyDto &&
          other.type == type &&
          other.healthcarePartyId == healthcarePartyId &&
          other.sendFormats == sendFormats &&
          other.referralPeriods == referralPeriods &&
          other.referral == referral &&
          other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (type == null ? 0 : type!.hashCode) +
      (healthcarePartyId == null ? 0 : healthcarePartyId!.hashCode) +
      (sendFormats.hashCode) +
      (referralPeriods.hashCode) +
      (referral.hashCode) +
      (encryptedSelf == null ? 0 : encryptedSelf!.hashCode);

  @override
  String toString() =>
      'PatientHealthCarePartyDto[type=$type, healthcarePartyId=$healthcarePartyId, sendFormats=$sendFormats, referralPeriods=$referralPeriods, referral=$referral, encryptedSelf=$encryptedSelf]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (type != null) {
      json[r'type'] = type;
    }
    if (healthcarePartyId != null) {
      json[r'healthcarePartyId'] = healthcarePartyId;
    }
    json[r'sendFormats'] = sendFormats;
    json[r'referralPeriods'] = referralPeriods.toList();
    json[r'referral'] = referral;
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [PatientHealthCarePartyDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatientHealthCarePartyDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatientHealthCarePartyDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatientHealthCarePartyDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatientHealthCarePartyDto(
        type: PatientHealthCarePartyDtoTypeEnum.fromJson(json[r'type']),
        healthcarePartyId: mapValueOfType<String>(json, r'healthcarePartyId'),
        sendFormats: mapCastOfType<String, String>(json, r'sendFormats')!,
        referralPeriods: ReferralPeriodDto.listFromJson(json[r'referralPeriods'])!.toSet(),
        referral: mapValueOfType<bool>(json, r'referral')!,
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<PatientHealthCarePartyDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PatientHealthCarePartyDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatientHealthCarePartyDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatientHealthCarePartyDto> mapFromJson(dynamic json) {
    final map = <String, PatientHealthCarePartyDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatientHealthCarePartyDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatientHealthCarePartyDto-objects as value to a dart map
  static Map<String, List<PatientHealthCarePartyDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PatientHealthCarePartyDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatientHealthCarePartyDto.listFromJson(
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
    'sendFormats',
    'referralPeriods',
    'referral',
  };
}

/// Type of care/relationship.
class PatientHealthCarePartyDtoTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PatientHealthCarePartyDtoTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

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

  static PatientHealthCarePartyDtoTypeEnum? fromJson(dynamic value) => PatientHealthCarePartyDtoTypeEnumTypeTransformer().decode(value);

  static List<PatientHealthCarePartyDtoTypeEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PatientHealthCarePartyDtoTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatientHealthCarePartyDtoTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
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
  PatientHealthCarePartyDtoTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'doctor':
          return PatientHealthCarePartyDtoTypeEnum.doctor;
        case r'referral':
          return PatientHealthCarePartyDtoTypeEnum.referral;
        case r'medicalhouse':
          return PatientHealthCarePartyDtoTypeEnum.medicalhouse;
        case r'retirementhome':
          return PatientHealthCarePartyDtoTypeEnum.retirementhome;
        case r'hospital':
          return PatientHealthCarePartyDtoTypeEnum.hospital;
        case r'other':
          return PatientHealthCarePartyDtoTypeEnum.other;
        case r'referringphysician':
          return PatientHealthCarePartyDtoTypeEnum.referringphysician;
        case r'managingorganization':
          return PatientHealthCarePartyDtoTypeEnum.managingorganization;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PatientHealthCarePartyDtoTypeEnumTypeTransformer] instance.
  static PatientHealthCarePartyDtoTypeEnumTypeTransformer? _instance;
}
