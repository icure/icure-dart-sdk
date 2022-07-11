//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class MedicalHouseContractDto {
  /// Returns a new [MedicalHouseContractDto] instance.
  MedicalHouseContractDto({
    this.contractId,
    this.validFrom,
    this.validTo,
    this.mmNihii,
    this.hcpId,
    this.changeType,
    this.parentContractId,
    this.changedBy,
    this.startOfContract,
    this.startOfCoverage,
    this.endOfContract,
    this.endOfCoverage,
    this.kine = false,
    this.gp = false,
    this.ptd = false,
    this.nurse = false,
    this.noKine = false,
    this.noGp = false,
    this.noNurse = false,
    this.unsubscriptionReasonId,
    this.ptdStart,
    this.ptdEnd,
    this.ptdLastInvoiced,
    this.startOfSuspension,
    this.endOfSuspension,
    this.suspensionReason,
    this.suspensionSource,
    this.forcedSuspension = false,
    this.signatureType,
    this.status,
    this.options = const {},
    this.receipts = const {},
    this.encryptedSelf,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contractId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? validFrom;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? validTo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mmNihii;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hcpId;

  MedicalHouseContractDtoChangeTypeEnum? changeType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentContractId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? changedBy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startOfContract;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startOfCoverage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endOfContract;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endOfCoverage;

  bool kine;

  bool gp;

  bool ptd;

  bool nurse;

  bool noKine;

  bool noGp;

  bool noNurse;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? unsubscriptionReasonId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ptdStart;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ptdEnd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ptdLastInvoiced;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startOfSuspension;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endOfSuspension;

  MedicalHouseContractDtoSuspensionReasonEnum? suspensionReason;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? suspensionSource;

  bool forcedSuspension;

  MedicalHouseContractDtoSignatureTypeEnum? signatureType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? status;

  Map<String, String> options;

  Map<String, String> receipts;

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
      other is MedicalHouseContractDto &&
          other.contractId == contractId &&
          other.validFrom == validFrom &&
          other.validTo == validTo &&
          other.mmNihii == mmNihii &&
          other.hcpId == hcpId &&
          other.changeType == changeType &&
          other.parentContractId == parentContractId &&
          other.changedBy == changedBy &&
          other.startOfContract == startOfContract &&
          other.startOfCoverage == startOfCoverage &&
          other.endOfContract == endOfContract &&
          other.endOfCoverage == endOfCoverage &&
          other.kine == kine &&
          other.gp == gp &&
          other.ptd == ptd &&
          other.nurse == nurse &&
          other.noKine == noKine &&
          other.noGp == noGp &&
          other.noNurse == noNurse &&
          other.unsubscriptionReasonId == unsubscriptionReasonId &&
          other.ptdStart == ptdStart &&
          other.ptdEnd == ptdEnd &&
          other.ptdLastInvoiced == ptdLastInvoiced &&
          other.startOfSuspension == startOfSuspension &&
          other.endOfSuspension == endOfSuspension &&
          other.suspensionReason == suspensionReason &&
          other.suspensionSource == suspensionSource &&
          other.forcedSuspension == forcedSuspension &&
          other.signatureType == signatureType &&
          other.status == status &&
          other.options == options &&
          other.receipts == receipts &&
          other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (contractId == null ? 0 : contractId!.hashCode) +
      (validFrom == null ? 0 : validFrom!.hashCode) +
      (validTo == null ? 0 : validTo!.hashCode) +
      (mmNihii == null ? 0 : mmNihii!.hashCode) +
      (hcpId == null ? 0 : hcpId!.hashCode) +
      (changeType == null ? 0 : changeType!.hashCode) +
      (parentContractId == null ? 0 : parentContractId!.hashCode) +
      (changedBy == null ? 0 : changedBy!.hashCode) +
      (startOfContract == null ? 0 : startOfContract!.hashCode) +
      (startOfCoverage == null ? 0 : startOfCoverage!.hashCode) +
      (endOfContract == null ? 0 : endOfContract!.hashCode) +
      (endOfCoverage == null ? 0 : endOfCoverage!.hashCode) +
      (kine.hashCode) +
      (gp.hashCode) +
      (ptd.hashCode) +
      (nurse.hashCode) +
      (noKine.hashCode) +
      (noGp.hashCode) +
      (noNurse.hashCode) +
      (unsubscriptionReasonId == null ? 0 : unsubscriptionReasonId!.hashCode) +
      (ptdStart == null ? 0 : ptdStart!.hashCode) +
      (ptdEnd == null ? 0 : ptdEnd!.hashCode) +
      (ptdLastInvoiced == null ? 0 : ptdLastInvoiced!.hashCode) +
      (startOfSuspension == null ? 0 : startOfSuspension!.hashCode) +
      (endOfSuspension == null ? 0 : endOfSuspension!.hashCode) +
      (suspensionReason == null ? 0 : suspensionReason!.hashCode) +
      (suspensionSource == null ? 0 : suspensionSource!.hashCode) +
      (forcedSuspension.hashCode) +
      (signatureType == null ? 0 : signatureType!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (options.hashCode) +
      (receipts.hashCode) +
      (encryptedSelf == null ? 0 : encryptedSelf!.hashCode);

  @override
  String toString() =>
      'MedicalHouseContractDto[contractId=$contractId, validFrom=$validFrom, validTo=$validTo, mmNihii=$mmNihii, hcpId=$hcpId, changeType=$changeType, parentContractId=$parentContractId, changedBy=$changedBy, startOfContract=$startOfContract, startOfCoverage=$startOfCoverage, endOfContract=$endOfContract, endOfCoverage=$endOfCoverage, kine=$kine, gp=$gp, ptd=$ptd, nurse=$nurse, noKine=$noKine, noGp=$noGp, noNurse=$noNurse, unsubscriptionReasonId=$unsubscriptionReasonId, ptdStart=$ptdStart, ptdEnd=$ptdEnd, ptdLastInvoiced=$ptdLastInvoiced, startOfSuspension=$startOfSuspension, endOfSuspension=$endOfSuspension, suspensionReason=$suspensionReason, suspensionSource=$suspensionSource, forcedSuspension=$forcedSuspension, signatureType=$signatureType, status=$status, options=$options, receipts=$receipts, encryptedSelf=$encryptedSelf]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (contractId != null) {
      json[r'contractId'] = contractId;
    }
    if (validFrom != null) {
      json[r'validFrom'] = validFrom;
    }
    if (validTo != null) {
      json[r'validTo'] = validTo;
    }
    if (mmNihii != null) {
      json[r'mmNihii'] = mmNihii;
    }
    if (hcpId != null) {
      json[r'hcpId'] = hcpId;
    }
    if (changeType != null) {
      json[r'changeType'] = changeType;
    }
    if (parentContractId != null) {
      json[r'parentContractId'] = parentContractId;
    }
    if (changedBy != null) {
      json[r'changedBy'] = changedBy;
    }
    if (startOfContract != null) {
      json[r'startOfContract'] = startOfContract;
    }
    if (startOfCoverage != null) {
      json[r'startOfCoverage'] = startOfCoverage;
    }
    if (endOfContract != null) {
      json[r'endOfContract'] = endOfContract;
    }
    if (endOfCoverage != null) {
      json[r'endOfCoverage'] = endOfCoverage;
    }
    json[r'kine'] = kine;
    json[r'gp'] = gp;
    json[r'ptd'] = ptd;
    json[r'nurse'] = nurse;
    json[r'noKine'] = noKine;
    json[r'noGp'] = noGp;
    json[r'noNurse'] = noNurse;
    if (unsubscriptionReasonId != null) {
      json[r'unsubscriptionReasonId'] = unsubscriptionReasonId;
    }
    if (ptdStart != null) {
      json[r'ptdStart'] = ptdStart;
    }
    if (ptdEnd != null) {
      json[r'ptdEnd'] = ptdEnd;
    }
    if (ptdLastInvoiced != null) {
      json[r'ptdLastInvoiced'] = ptdLastInvoiced;
    }
    if (startOfSuspension != null) {
      json[r'startOfSuspension'] = startOfSuspension;
    }
    if (endOfSuspension != null) {
      json[r'endOfSuspension'] = endOfSuspension;
    }
    if (suspensionReason != null) {
      json[r'suspensionReason'] = suspensionReason;
    }
    if (suspensionSource != null) {
      json[r'suspensionSource'] = suspensionSource;
    }
    json[r'forcedSuspension'] = forcedSuspension;
    if (signatureType != null) {
      json[r'signatureType'] = signatureType;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    json[r'options'] = options;
    json[r'receipts'] = receipts;
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [MedicalHouseContractDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MedicalHouseContractDto? fromJson(dynamic value) {
    if (value is MedicalHouseContractDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MedicalHouseContractDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MedicalHouseContractDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MedicalHouseContractDto(
        contractId: mapValueOfType<String>(json, r'contractId'),
        validFrom: mapValueOfType<int>(json, r'validFrom'),
        validTo: mapValueOfType<int>(json, r'validTo'),
        mmNihii: mapValueOfType<String>(json, r'mmNihii'),
        hcpId: mapValueOfType<String>(json, r'hcpId'),
        changeType: MedicalHouseContractDtoChangeTypeEnum.fromJson(json[r'changeType']),
        parentContractId: mapValueOfType<String>(json, r'parentContractId'),
        changedBy: mapValueOfType<String>(json, r'changedBy'),
        startOfContract: mapValueOfType<int>(json, r'startOfContract'),
        startOfCoverage: mapValueOfType<int>(json, r'startOfCoverage'),
        endOfContract: mapValueOfType<int>(json, r'endOfContract'),
        endOfCoverage: mapValueOfType<int>(json, r'endOfCoverage'),
        kine: mapValueOfType<bool>(json, r'kine')!,
        gp: mapValueOfType<bool>(json, r'gp')!,
        ptd: mapValueOfType<bool>(json, r'ptd')!,
        nurse: mapValueOfType<bool>(json, r'nurse')!,
        noKine: mapValueOfType<bool>(json, r'noKine')!,
        noGp: mapValueOfType<bool>(json, r'noGp')!,
        noNurse: mapValueOfType<bool>(json, r'noNurse')!,
        unsubscriptionReasonId: mapValueOfType<int>(json, r'unsubscriptionReasonId'),
        ptdStart: mapValueOfType<int>(json, r'ptdStart'),
        ptdEnd: mapValueOfType<int>(json, r'ptdEnd'),
        ptdLastInvoiced: mapValueOfType<int>(json, r'ptdLastInvoiced'),
        startOfSuspension: mapValueOfType<int>(json, r'startOfSuspension'),
        endOfSuspension: mapValueOfType<int>(json, r'endOfSuspension'),
        suspensionReason: MedicalHouseContractDtoSuspensionReasonEnum.fromJson(json[r'suspensionReason']),
        suspensionSource: mapValueOfType<String>(json, r'suspensionSource'),
        forcedSuspension: mapValueOfType<bool>(json, r'forcedSuspension')!,
        signatureType: MedicalHouseContractDtoSignatureTypeEnum.fromJson(json[r'signatureType']),
        status: mapValueOfType<int>(json, r'status'),
        options: mapCastOfType<String, String>(json, r'options')!,
        receipts: mapCastOfType<String, String>(json, r'receipts')!,
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<MedicalHouseContractDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MedicalHouseContractDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MedicalHouseContractDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MedicalHouseContractDto> mapFromJson(dynamic json) {
    final map = <String, MedicalHouseContractDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MedicalHouseContractDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MedicalHouseContractDto-objects as value to a dart map
  static Map<String, List<MedicalHouseContractDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MedicalHouseContractDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MedicalHouseContractDto.listFromJson(
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
    'kine',
    'gp',
    'ptd',
    'nurse',
    'noKine',
    'noGp',
    'noNurse',
    'forcedSuspension',
    'options',
    'receipts',
  };
}

class MedicalHouseContractDtoChangeTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MedicalHouseContractDtoChangeTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const inscriptionStart = MedicalHouseContractDtoChangeTypeEnum._(r'inscriptionStart');
  static const inscriptionEnd = MedicalHouseContractDtoChangeTypeEnum._(r'inscriptionEnd');
  static const suspension = MedicalHouseContractDtoChangeTypeEnum._(r'suspension');
  static const coverageChange = MedicalHouseContractDtoChangeTypeEnum._(r'coverageChange');

  /// List of all possible values in this [enum][MedicalHouseContractDtoChangeTypeEnum].
  static const values = <MedicalHouseContractDtoChangeTypeEnum>[
    inscriptionStart,
    inscriptionEnd,
    suspension,
    coverageChange,
  ];

  static MedicalHouseContractDtoChangeTypeEnum? fromJson(dynamic value) => MedicalHouseContractDtoChangeTypeEnumTypeTransformer().decode(value);

  static List<MedicalHouseContractDtoChangeTypeEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MedicalHouseContractDtoChangeTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MedicalHouseContractDtoChangeTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MedicalHouseContractDtoChangeTypeEnum] to String,
/// and [decode] dynamic data back to [MedicalHouseContractDtoChangeTypeEnum].
class MedicalHouseContractDtoChangeTypeEnumTypeTransformer {
  factory MedicalHouseContractDtoChangeTypeEnumTypeTransformer() => _instance ??= const MedicalHouseContractDtoChangeTypeEnumTypeTransformer._();

  const MedicalHouseContractDtoChangeTypeEnumTypeTransformer._();

  String encode(MedicalHouseContractDtoChangeTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MedicalHouseContractDtoChangeTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MedicalHouseContractDtoChangeTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'inscriptionStart':
          return MedicalHouseContractDtoChangeTypeEnum.inscriptionStart;
        case r'inscriptionEnd':
          return MedicalHouseContractDtoChangeTypeEnum.inscriptionEnd;
        case r'suspension':
          return MedicalHouseContractDtoChangeTypeEnum.suspension;
        case r'coverageChange':
          return MedicalHouseContractDtoChangeTypeEnum.coverageChange;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MedicalHouseContractDtoChangeTypeEnumTypeTransformer] instance.
  static MedicalHouseContractDtoChangeTypeEnumTypeTransformer? _instance;
}

class MedicalHouseContractDtoSuspensionReasonEnum {
  /// Instantiate a new enum with the provided [value].
  const MedicalHouseContractDtoSuspensionReasonEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const notInsured = MedicalHouseContractDtoSuspensionReasonEnum._(r'notInsured');
  static const noReasonGiven = MedicalHouseContractDtoSuspensionReasonEnum._(r'noReasonGiven');
  static const isHospitalized = MedicalHouseContractDtoSuspensionReasonEnum._(r'isHospitalized');
  static const outsideOfCountry = MedicalHouseContractDtoSuspensionReasonEnum._(r'outsideOfCountry');
  static const changeOfMutuality = MedicalHouseContractDtoSuspensionReasonEnum._(r'changeOfMutuality');

  /// List of all possible values in this [enum][MedicalHouseContractDtoSuspensionReasonEnum].
  static const values = <MedicalHouseContractDtoSuspensionReasonEnum>[
    notInsured,
    noReasonGiven,
    isHospitalized,
    outsideOfCountry,
    changeOfMutuality,
  ];

  static MedicalHouseContractDtoSuspensionReasonEnum? fromJson(dynamic value) =>
      MedicalHouseContractDtoSuspensionReasonEnumTypeTransformer().decode(value);

  static List<MedicalHouseContractDtoSuspensionReasonEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MedicalHouseContractDtoSuspensionReasonEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MedicalHouseContractDtoSuspensionReasonEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MedicalHouseContractDtoSuspensionReasonEnum] to String,
/// and [decode] dynamic data back to [MedicalHouseContractDtoSuspensionReasonEnum].
class MedicalHouseContractDtoSuspensionReasonEnumTypeTransformer {
  factory MedicalHouseContractDtoSuspensionReasonEnumTypeTransformer() =>
      _instance ??= const MedicalHouseContractDtoSuspensionReasonEnumTypeTransformer._();

  const MedicalHouseContractDtoSuspensionReasonEnumTypeTransformer._();

  String encode(MedicalHouseContractDtoSuspensionReasonEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MedicalHouseContractDtoSuspensionReasonEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MedicalHouseContractDtoSuspensionReasonEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'notInsured':
          return MedicalHouseContractDtoSuspensionReasonEnum.notInsured;
        case r'noReasonGiven':
          return MedicalHouseContractDtoSuspensionReasonEnum.noReasonGiven;
        case r'isHospitalized':
          return MedicalHouseContractDtoSuspensionReasonEnum.isHospitalized;
        case r'outsideOfCountry':
          return MedicalHouseContractDtoSuspensionReasonEnum.outsideOfCountry;
        case r'changeOfMutuality':
          return MedicalHouseContractDtoSuspensionReasonEnum.changeOfMutuality;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MedicalHouseContractDtoSuspensionReasonEnumTypeTransformer] instance.
  static MedicalHouseContractDtoSuspensionReasonEnumTypeTransformer? _instance;
}

class MedicalHouseContractDtoSignatureTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MedicalHouseContractDtoSignatureTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const holderEid = MedicalHouseContractDtoSignatureTypeEnum._(r'holderEid');
  static const holderPaper = MedicalHouseContractDtoSignatureTypeEnum._(r'holderPaper');
  static const legalrepresentativeEid = MedicalHouseContractDtoSignatureTypeEnum._(r'legalrepresentativeEid');
  static const legalrepresentativePaper = MedicalHouseContractDtoSignatureTypeEnum._(r'legalrepresentativePaper');

  /// List of all possible values in this [enum][MedicalHouseContractDtoSignatureTypeEnum].
  static const values = <MedicalHouseContractDtoSignatureTypeEnum>[
    holderEid,
    holderPaper,
    legalrepresentativeEid,
    legalrepresentativePaper,
  ];

  static MedicalHouseContractDtoSignatureTypeEnum? fromJson(dynamic value) => MedicalHouseContractDtoSignatureTypeEnumTypeTransformer().decode(value);

  static List<MedicalHouseContractDtoSignatureTypeEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MedicalHouseContractDtoSignatureTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MedicalHouseContractDtoSignatureTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MedicalHouseContractDtoSignatureTypeEnum] to String,
/// and [decode] dynamic data back to [MedicalHouseContractDtoSignatureTypeEnum].
class MedicalHouseContractDtoSignatureTypeEnumTypeTransformer {
  factory MedicalHouseContractDtoSignatureTypeEnumTypeTransformer() =>
      _instance ??= const MedicalHouseContractDtoSignatureTypeEnumTypeTransformer._();

  const MedicalHouseContractDtoSignatureTypeEnumTypeTransformer._();

  String encode(MedicalHouseContractDtoSignatureTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MedicalHouseContractDtoSignatureTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MedicalHouseContractDtoSignatureTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'holderEid':
          return MedicalHouseContractDtoSignatureTypeEnum.holderEid;
        case r'holderPaper':
          return MedicalHouseContractDtoSignatureTypeEnum.holderPaper;
        case r'legalrepresentativeEid':
          return MedicalHouseContractDtoSignatureTypeEnum.legalrepresentativeEid;
        case r'legalrepresentativePaper':
          return MedicalHouseContractDtoSignatureTypeEnum.legalrepresentativePaper;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MedicalHouseContractDtoSignatureTypeEnumTypeTransformer] instance.
  static MedicalHouseContractDtoSignatureTypeEnumTypeTransformer? _instance;
}
