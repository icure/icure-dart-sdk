//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class InvoiceItem {
  /// Returns a new [InvoiceItem] instance.
  InvoiceItem({
    this.dateCode,
    this.codeNomenclature = 0,
    this.relatedCode,
    this.eidItem,
    this.insuranceRef,
    this.insuranceRefDate,
    this.units = 0,
    this.reimbursedAmount = 0,
    this.patientFee = 0,
    this.doctorSupplement = 0,
    this.sideCode,
    this.timeOfDay,
    this.override3rdPayerCode,
    this.gnotionNihii,
    this.derogationMaxNumber,
    this.prescriberNorm,
    this.prescriberNihii,
    this.prescriptionDate,
    this.personalInterventionCoveredByThirdPartyCode,
    this.doctorIdentificationNumber,
    this.invoiceRef,
    this.percentNorm,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dateCode;

  int codeNomenclature;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? relatedCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EIDItem? eidItem;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? insuranceRef;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? insuranceRefDate;

  int units;

  int reimbursedAmount;

  int patientFee;

  int doctorSupplement;

  InvoiceItemSideCodeEnum? sideCode;

  InvoiceItemTimeOfDayEnum? timeOfDay;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? override3rdPayerCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gnotionNihii;

  InvoiceItemDerogationMaxNumberEnum? derogationMaxNumber;

  InvoiceItemPrescriberNormEnum? prescriberNorm;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prescriberNihii;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? prescriptionDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? personalInterventionCoveredByThirdPartyCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? doctorIdentificationNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? invoiceRef;

  InvoiceItemPercentNormEnum? percentNorm;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is InvoiceItem &&
          other.dateCode == dateCode &&
          other.codeNomenclature == codeNomenclature &&
          other.relatedCode == relatedCode &&
          other.eidItem == eidItem &&
          other.insuranceRef == insuranceRef &&
          other.insuranceRefDate == insuranceRefDate &&
          other.units == units &&
          other.reimbursedAmount == reimbursedAmount &&
          other.patientFee == patientFee &&
          other.doctorSupplement == doctorSupplement &&
          other.sideCode == sideCode &&
          other.timeOfDay == timeOfDay &&
          other.override3rdPayerCode == override3rdPayerCode &&
          other.gnotionNihii == gnotionNihii &&
          other.derogationMaxNumber == derogationMaxNumber &&
          other.prescriberNorm == prescriberNorm &&
          other.prescriberNihii == prescriberNihii &&
          other.prescriptionDate == prescriptionDate &&
          other.personalInterventionCoveredByThirdPartyCode == personalInterventionCoveredByThirdPartyCode &&
          other.doctorIdentificationNumber == doctorIdentificationNumber &&
          other.invoiceRef == invoiceRef &&
          other.percentNorm == percentNorm;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
  (dateCode == null ? 0 : dateCode!.hashCode) +
      (codeNomenclature.hashCode) +
      (relatedCode == null ? 0 : relatedCode!.hashCode) +
      (eidItem == null ? 0 : eidItem!.hashCode) +
      (insuranceRef == null ? 0 : insuranceRef!.hashCode) +
      (insuranceRefDate == null ? 0 : insuranceRefDate!.hashCode) +
      (units.hashCode) +
      (reimbursedAmount.hashCode) +
      (patientFee.hashCode) +
      (doctorSupplement.hashCode) +
      (sideCode == null ? 0 : sideCode!.hashCode) +
      (timeOfDay == null ? 0 : timeOfDay!.hashCode) +
      (override3rdPayerCode == null ? 0 : override3rdPayerCode!.hashCode) +
      (gnotionNihii == null ? 0 : gnotionNihii!.hashCode) +
      (derogationMaxNumber == null ? 0 : derogationMaxNumber!.hashCode) +
      (prescriberNorm == null ? 0 : prescriberNorm!.hashCode) +
      (prescriberNihii == null ? 0 : prescriberNihii!.hashCode) +
      (prescriptionDate == null ? 0 : prescriptionDate!.hashCode) +
      (personalInterventionCoveredByThirdPartyCode == null ? 0 : personalInterventionCoveredByThirdPartyCode!.hashCode) +
      (doctorIdentificationNumber == null ? 0 : doctorIdentificationNumber!.hashCode) +
      (invoiceRef == null ? 0 : invoiceRef!.hashCode) +
      (percentNorm == null ? 0 : percentNorm!.hashCode);

  @override
  String toString() =>
      'InvoiceItem[dateCode=$dateCode, codeNomenclature=$codeNomenclature, relatedCode=$relatedCode, eidItem=$eidItem, insuranceRef=$insuranceRef, insuranceRefDate=$insuranceRefDate, units=$units, reimbursedAmount=$reimbursedAmount, patientFee=$patientFee, doctorSupplement=$doctorSupplement, sideCode=$sideCode, timeOfDay=$timeOfDay, override3rdPayerCode=$override3rdPayerCode, gnotionNihii=$gnotionNihii, derogationMaxNumber=$derogationMaxNumber, prescriberNorm=$prescriberNorm, prescriberNihii=$prescriberNihii, prescriptionDate=$prescriptionDate, personalInterventionCoveredByThirdPartyCode=$personalInterventionCoveredByThirdPartyCode, doctorIdentificationNumber=$doctorIdentificationNumber, invoiceRef=$invoiceRef, percentNorm=$percentNorm]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (dateCode != null) {
      json[r'dateCode'] = dateCode;
    }
    json[r'codeNomenclature'] = codeNomenclature;
    if (relatedCode != null) {
      json[r'relatedCode'] = relatedCode;
    }
    if (eidItem != null) {
      json[r'eidItem'] = eidItem;
    }
    if (insuranceRef != null) {
      json[r'insuranceRef'] = insuranceRef;
    }
    if (insuranceRefDate != null) {
      json[r'insuranceRefDate'] = insuranceRefDate;
    }
    json[r'units'] = units;
    json[r'reimbursedAmount'] = reimbursedAmount;
    json[r'patientFee'] = patientFee;
    json[r'doctorSupplement'] = doctorSupplement;
    if (sideCode != null) {
      json[r'sideCode'] = sideCode;
    }
    if (timeOfDay != null) {
      json[r'timeOfDay'] = timeOfDay;
    }
    if (override3rdPayerCode != null) {
      json[r'override3rdPayerCode'] = override3rdPayerCode;
    }
    if (gnotionNihii != null) {
      json[r'gnotionNihii'] = gnotionNihii;
    }
    if (derogationMaxNumber != null) {
      json[r'derogationMaxNumber'] = derogationMaxNumber;
    }
    if (prescriberNorm != null) {
      json[r'prescriberNorm'] = prescriberNorm;
    }
    if (prescriberNihii != null) {
      json[r'prescriberNihii'] = prescriberNihii;
    }
    if (prescriptionDate != null) {
      json[r'prescriptionDate'] = prescriptionDate;
    }
    if (personalInterventionCoveredByThirdPartyCode != null) {
      json[r'personalInterventionCoveredByThirdPartyCode'] = personalInterventionCoveredByThirdPartyCode;
    }
    if (doctorIdentificationNumber != null) {
      json[r'doctorIdentificationNumber'] = doctorIdentificationNumber;
    }
    if (invoiceRef != null) {
      json[r'invoiceRef'] = invoiceRef;
    }
    if (percentNorm != null) {
      json[r'percentNorm'] = percentNorm;
    }
    return json;
  }

  /// Returns a new [InvoiceItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InvoiceItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InvoiceItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InvoiceItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InvoiceItem(
        dateCode: mapValueOfType<int>(json, r'dateCode'),
        codeNomenclature: mapValueOfType<int>(json, r'codeNomenclature')!,
        relatedCode: mapValueOfType<int>(json, r'relatedCode'),
        eidItem: EIDItem.fromJson(json[r'eidItem']),
        insuranceRef: mapValueOfType<String>(json, r'insuranceRef'),
        insuranceRefDate: mapValueOfType<int>(json, r'insuranceRefDate'),
        units: mapValueOfType<int>(json, r'units')!,
        reimbursedAmount: mapValueOfType<int>(json, r'reimbursedAmount')!,
        patientFee: mapValueOfType<int>(json, r'patientFee')!,
        doctorSupplement: mapValueOfType<int>(json, r'doctorSupplement')!,
        sideCode: InvoiceItemSideCodeEnum.fromJson(json[r'sideCode']),
        timeOfDay: InvoiceItemTimeOfDayEnum.fromJson(json[r'timeOfDay']),
        override3rdPayerCode: mapValueOfType<int>(json, r'override3rdPayerCode'),
        gnotionNihii: mapValueOfType<String>(json, r'gnotionNihii'),
        derogationMaxNumber: InvoiceItemDerogationMaxNumberEnum.fromJson(json[r'derogationMaxNumber']),
        prescriberNorm: InvoiceItemPrescriberNormEnum.fromJson(json[r'prescriberNorm']),
        prescriberNihii: mapValueOfType<String>(json, r'prescriberNihii'),
        prescriptionDate: mapValueOfType<int>(json, r'prescriptionDate'),
        personalInterventionCoveredByThirdPartyCode: mapValueOfType<int>(json, r'personalInterventionCoveredByThirdPartyCode'),
        doctorIdentificationNumber: mapValueOfType<String>(json, r'doctorIdentificationNumber'),
        invoiceRef: mapValueOfType<String>(json, r'invoiceRef'),
        percentNorm: InvoiceItemPercentNormEnum.fromJson(json[r'percentNorm']),
      );
    }
    return null;
  }

  static List<InvoiceItem>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvoiceItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvoiceItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InvoiceItem> mapFromJson(dynamic json) {
    final map = <String, InvoiceItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvoiceItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InvoiceItem-objects as value to a dart map
  static Map<String, List<InvoiceItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InvoiceItem>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvoiceItem.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'codeNomenclature',
    'units',
    'reimbursedAmount',
    'patientFee',
    'doctorSupplement',
  };
}


class InvoiceItemSideCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const InvoiceItemSideCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const none = InvoiceItemSideCodeEnum._(r'None');
  static const left = InvoiceItemSideCodeEnum._(r'Left');
  static const right = InvoiceItemSideCodeEnum._(r'Right');

  /// List of all possible values in this [enum][InvoiceItemSideCodeEnum].
  static const values = <InvoiceItemSideCodeEnum>[
    none,
    left,
    right,
  ];

  static InvoiceItemSideCodeEnum? fromJson(dynamic value) => InvoiceItemSideCodeEnumTypeTransformer().decode(value);

  static List<InvoiceItemSideCodeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvoiceItemSideCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvoiceItemSideCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvoiceItemSideCodeEnum] to String,
/// and [decode] dynamic data back to [InvoiceItemSideCodeEnum].
class InvoiceItemSideCodeEnumTypeTransformer {
  factory InvoiceItemSideCodeEnumTypeTransformer() => _instance ??= const InvoiceItemSideCodeEnumTypeTransformer._();

  const InvoiceItemSideCodeEnumTypeTransformer._();

  String encode(InvoiceItemSideCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvoiceItemSideCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvoiceItemSideCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'None':
          return InvoiceItemSideCodeEnum.none;
        case r'Left':
          return InvoiceItemSideCodeEnum.left;
        case r'Right':
          return InvoiceItemSideCodeEnum.right;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvoiceItemSideCodeEnumTypeTransformer] instance.
  static InvoiceItemSideCodeEnumTypeTransformer? _instance;
}


class InvoiceItemTimeOfDayEnum {
  /// Instantiate a new enum with the provided [value].
  const InvoiceItemTimeOfDayEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const other = InvoiceItemTimeOfDayEnum._(r'Other');
  static const night = InvoiceItemTimeOfDayEnum._(r'Night');
  static const weekend = InvoiceItemTimeOfDayEnum._(r'Weekend');
  static const bankholiday = InvoiceItemTimeOfDayEnum._(r'Bankholiday');
  static const urgent = InvoiceItemTimeOfDayEnum._(r'Urgent');

  /// List of all possible values in this [enum][InvoiceItemTimeOfDayEnum].
  static const values = <InvoiceItemTimeOfDayEnum>[
    other,
    night,
    weekend,
    bankholiday,
    urgent,
  ];

  static InvoiceItemTimeOfDayEnum? fromJson(dynamic value) => InvoiceItemTimeOfDayEnumTypeTransformer().decode(value);

  static List<InvoiceItemTimeOfDayEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvoiceItemTimeOfDayEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvoiceItemTimeOfDayEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvoiceItemTimeOfDayEnum] to String,
/// and [decode] dynamic data back to [InvoiceItemTimeOfDayEnum].
class InvoiceItemTimeOfDayEnumTypeTransformer {
  factory InvoiceItemTimeOfDayEnumTypeTransformer() => _instance ??= const InvoiceItemTimeOfDayEnumTypeTransformer._();

  const InvoiceItemTimeOfDayEnumTypeTransformer._();

  String encode(InvoiceItemTimeOfDayEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvoiceItemTimeOfDayEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvoiceItemTimeOfDayEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'Other':
          return InvoiceItemTimeOfDayEnum.other;
        case r'Night':
          return InvoiceItemTimeOfDayEnum.night;
        case r'Weekend':
          return InvoiceItemTimeOfDayEnum.weekend;
        case r'Bankholiday':
          return InvoiceItemTimeOfDayEnum.bankholiday;
        case r'Urgent':
          return InvoiceItemTimeOfDayEnum.urgent;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvoiceItemTimeOfDayEnumTypeTransformer] instance.
  static InvoiceItemTimeOfDayEnumTypeTransformer? _instance;
}


class InvoiceItemDerogationMaxNumberEnum {
  /// Instantiate a new enum with the provided [value].
  const InvoiceItemDerogationMaxNumberEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const other = InvoiceItemDerogationMaxNumberEnum._(r'Other');
  static const derogationMaxNumber = InvoiceItemDerogationMaxNumberEnum._(r'DerogationMaxNumber');
  static const otherPrescription = InvoiceItemDerogationMaxNumberEnum._(r'OtherPrescription');
  static const secondPrestationOfDay = InvoiceItemDerogationMaxNumberEnum._(r'SecondPrestationOfDay');
  static const thirdAndNextPrestationOfDay = InvoiceItemDerogationMaxNumberEnum._(r'ThirdAndNextPrestationOfDay');

  /// List of all possible values in this [enum][InvoiceItemDerogationMaxNumberEnum].
  static const values = <InvoiceItemDerogationMaxNumberEnum>[
    other,
    derogationMaxNumber,
    otherPrescription,
    secondPrestationOfDay,
    thirdAndNextPrestationOfDay,
  ];

  static InvoiceItemDerogationMaxNumberEnum? fromJson(dynamic value) => InvoiceItemDerogationMaxNumberEnumTypeTransformer().decode(value);

  static List<InvoiceItemDerogationMaxNumberEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvoiceItemDerogationMaxNumberEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvoiceItemDerogationMaxNumberEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvoiceItemDerogationMaxNumberEnum] to String,
/// and [decode] dynamic data back to [InvoiceItemDerogationMaxNumberEnum].
class InvoiceItemDerogationMaxNumberEnumTypeTransformer {
  factory InvoiceItemDerogationMaxNumberEnumTypeTransformer() => _instance ??= const InvoiceItemDerogationMaxNumberEnumTypeTransformer._();

  const InvoiceItemDerogationMaxNumberEnumTypeTransformer._();

  String encode(InvoiceItemDerogationMaxNumberEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvoiceItemDerogationMaxNumberEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvoiceItemDerogationMaxNumberEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'Other':
          return InvoiceItemDerogationMaxNumberEnum.other;
        case r'DerogationMaxNumber':
          return InvoiceItemDerogationMaxNumberEnum.derogationMaxNumber;
        case r'OtherPrescription':
          return InvoiceItemDerogationMaxNumberEnum.otherPrescription;
        case r'SecondPrestationOfDay':
          return InvoiceItemDerogationMaxNumberEnum.secondPrestationOfDay;
        case r'ThirdAndNextPrestationOfDay':
          return InvoiceItemDerogationMaxNumberEnum.thirdAndNextPrestationOfDay;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvoiceItemDerogationMaxNumberEnumTypeTransformer] instance.
  static InvoiceItemDerogationMaxNumberEnumTypeTransformer? _instance;
}


class InvoiceItemPrescriberNormEnum {
  /// Instantiate a new enum with the provided [value].
  const InvoiceItemPrescriberNormEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const none = InvoiceItemPrescriberNormEnum._(r'None');
  static const onePrescriber = InvoiceItemPrescriberNormEnum._(r'OnePrescriber');
  static const selfPrescriber = InvoiceItemPrescriberNormEnum._(r'SelfPrescriber');
  static const addedCode = InvoiceItemPrescriberNormEnum._(r'AddedCode');
  static const manyPrescribers = InvoiceItemPrescriberNormEnum._(r'ManyPrescribers');

  /// List of all possible values in this [enum][InvoiceItemPrescriberNormEnum].
  static const values = <InvoiceItemPrescriberNormEnum>[
    none,
    onePrescriber,
    selfPrescriber,
    addedCode,
    manyPrescribers,
  ];

  static InvoiceItemPrescriberNormEnum? fromJson(dynamic value) => InvoiceItemPrescriberNormEnumTypeTransformer().decode(value);

  static List<InvoiceItemPrescriberNormEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvoiceItemPrescriberNormEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvoiceItemPrescriberNormEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvoiceItemPrescriberNormEnum] to String,
/// and [decode] dynamic data back to [InvoiceItemPrescriberNormEnum].
class InvoiceItemPrescriberNormEnumTypeTransformer {
  factory InvoiceItemPrescriberNormEnumTypeTransformer() => _instance ??= const InvoiceItemPrescriberNormEnumTypeTransformer._();

  const InvoiceItemPrescriberNormEnumTypeTransformer._();

  String encode(InvoiceItemPrescriberNormEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvoiceItemPrescriberNormEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvoiceItemPrescriberNormEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'None':
          return InvoiceItemPrescriberNormEnum.none;
        case r'OnePrescriber':
          return InvoiceItemPrescriberNormEnum.onePrescriber;
        case r'SelfPrescriber':
          return InvoiceItemPrescriberNormEnum.selfPrescriber;
        case r'AddedCode':
          return InvoiceItemPrescriberNormEnum.addedCode;
        case r'ManyPrescribers':
          return InvoiceItemPrescriberNormEnum.manyPrescribers;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvoiceItemPrescriberNormEnumTypeTransformer] instance.
  static InvoiceItemPrescriberNormEnumTypeTransformer? _instance;
}


class InvoiceItemPercentNormEnum {
  /// Instantiate a new enum with the provided [value].
  const InvoiceItemPercentNormEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const none = InvoiceItemPercentNormEnum._(r'None');
  static const surgicalAid1 = InvoiceItemPercentNormEnum._(r'SurgicalAid1');
  static const surgicalAid2 = InvoiceItemPercentNormEnum._(r'SurgicalAid2');
  static const reducedFee = InvoiceItemPercentNormEnum._(r'ReducedFee');
  static const ah1n1 = InvoiceItemPercentNormEnum._(r'Ah1n1');
  static const halfPriceSecondAct = InvoiceItemPercentNormEnum._(r'HalfPriceSecondAct');
  static const invoiceException = InvoiceItemPercentNormEnum._(r'InvoiceException');
  static const forInformation = InvoiceItemPercentNormEnum._(r'ForInformation');

  /// List of all possible values in this [enum][InvoiceItemPercentNormEnum].
  static const values = <InvoiceItemPercentNormEnum>[
    none,
    surgicalAid1,
    surgicalAid2,
    reducedFee,
    ah1n1,
    halfPriceSecondAct,
    invoiceException,
    forInformation,
  ];

  static InvoiceItemPercentNormEnum? fromJson(dynamic value) => InvoiceItemPercentNormEnumTypeTransformer().decode(value);

  static List<InvoiceItemPercentNormEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvoiceItemPercentNormEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvoiceItemPercentNormEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvoiceItemPercentNormEnum] to String,
/// and [decode] dynamic data back to [InvoiceItemPercentNormEnum].
class InvoiceItemPercentNormEnumTypeTransformer {
  factory InvoiceItemPercentNormEnumTypeTransformer() => _instance ??= const InvoiceItemPercentNormEnumTypeTransformer._();

  const InvoiceItemPercentNormEnumTypeTransformer._();

  String encode(InvoiceItemPercentNormEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvoiceItemPercentNormEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvoiceItemPercentNormEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'None':
          return InvoiceItemPercentNormEnum.none;
        case r'SurgicalAid1':
          return InvoiceItemPercentNormEnum.surgicalAid1;
        case r'SurgicalAid2':
          return InvoiceItemPercentNormEnum.surgicalAid2;
        case r'ReducedFee':
          return InvoiceItemPercentNormEnum.reducedFee;
        case r'Ah1n1':
          return InvoiceItemPercentNormEnum.ah1n1;
        case r'HalfPriceSecondAct':
          return InvoiceItemPercentNormEnum.halfPriceSecondAct;
        case r'InvoiceException':
          return InvoiceItemPercentNormEnum.invoiceException;
        case r'ForInformation':
          return InvoiceItemPercentNormEnum.forInformation;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvoiceItemPercentNormEnumTypeTransformer] instance.
  static InvoiceItemPercentNormEnumTypeTransformer? _instance;
}


