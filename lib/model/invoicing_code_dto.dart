//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InvoicingCodeDto {
  /// Returns a new [InvoicingCodeDto] instance.
  InvoicingCodeDto({
    this.id,
    this.dateCode,
    this.logicalId,
    this.label,
    this.userId,
    this.contactId,
    this.serviceId,
    this.tarificationId,
    this.code,
    this.paymentType,
    this.paid,
    this.totalAmount,
    this.reimbursement,
    this.patientIntervention,
    this.doctorSupplement,
    this.conventionAmount,
    this.vat,
    this.error,
    this.contract,
    this.contractDate,
    this.units,
    this.side,
    this.timeOfDay,
    this.eidReadingHour,
    this.eidReadingValue,
    this.override3rdPayerCode,
    this.override3rdPayerReason,
    this.transplantationCode,
    this.prescriberNorm,
    this.percentNorm,
    this.prescriberNihii,
    this.relatedCode,
    this.prescriptionDate,
    this.derogationMaxNumber,
    this.prescriberSsin,
    this.prescriberLastName,
    this.prescriberFirstName,
    this.prescriberCdHcParty,
    this.locationNihii,
    this.locationCdHcParty,
    this.locationService,
    this.canceled,
    this.accepted,
    this.pending,
    this.resent,
    this.archived,
    this.lost,
    this.insuranceJustification,
    this.cancelPatientInterventionReason,
    this.status,
    this.encryptedSelf,
  });

  String id;

  int dateCode;

  String logicalId;

  String label;

  String userId;

  String contactId;

  String serviceId;

  String tarificationId;

  String code;

  InvoicingCodeDtoPaymentTypeEnum paymentType;

  double paid;

  double totalAmount;

  double reimbursement;

  double patientIntervention;

  double doctorSupplement;

  double conventionAmount;

  double vat;

  String error;

  String contract;

  int contractDate;

  int units;

  int side;

  int timeOfDay;

  int eidReadingHour;

  String eidReadingValue;

  int override3rdPayerCode;

  String override3rdPayerReason;

  int transplantationCode;

  int prescriberNorm;

  int percentNorm;

  String prescriberNihii;

  String relatedCode;

  int prescriptionDate;

  int derogationMaxNumber;

  String prescriberSsin;

  String prescriberLastName;

  String prescriberFirstName;

  String prescriberCdHcParty;

  String locationNihii;

  String locationCdHcParty;

  int locationService;

  bool canceled;

  bool accepted;

  bool pending;

  bool resent;

  bool archived;

  bool lost;

  int insuranceJustification;

  int cancelPatientInterventionReason;

  int status;

  /// The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
  String encryptedSelf;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InvoicingCodeDto &&
     other.id == id &&
     other.dateCode == dateCode &&
     other.logicalId == logicalId &&
     other.label == label &&
     other.userId == userId &&
     other.contactId == contactId &&
     other.serviceId == serviceId &&
     other.tarificationId == tarificationId &&
     other.code == code &&
     other.paymentType == paymentType &&
     other.paid == paid &&
     other.totalAmount == totalAmount &&
     other.reimbursement == reimbursement &&
     other.patientIntervention == patientIntervention &&
     other.doctorSupplement == doctorSupplement &&
     other.conventionAmount == conventionAmount &&
     other.vat == vat &&
     other.error == error &&
     other.contract == contract &&
     other.contractDate == contractDate &&
     other.units == units &&
     other.side == side &&
     other.timeOfDay == timeOfDay &&
     other.eidReadingHour == eidReadingHour &&
     other.eidReadingValue == eidReadingValue &&
     other.override3rdPayerCode == override3rdPayerCode &&
     other.override3rdPayerReason == override3rdPayerReason &&
     other.transplantationCode == transplantationCode &&
     other.prescriberNorm == prescriberNorm &&
     other.percentNorm == percentNorm &&
     other.prescriberNihii == prescriberNihii &&
     other.relatedCode == relatedCode &&
     other.prescriptionDate == prescriptionDate &&
     other.derogationMaxNumber == derogationMaxNumber &&
     other.prescriberSsin == prescriberSsin &&
     other.prescriberLastName == prescriberLastName &&
     other.prescriberFirstName == prescriberFirstName &&
     other.prescriberCdHcParty == prescriberCdHcParty &&
     other.locationNihii == locationNihii &&
     other.locationCdHcParty == locationCdHcParty &&
     other.locationService == locationService &&
     other.canceled == canceled &&
     other.accepted == accepted &&
     other.pending == pending &&
     other.resent == resent &&
     other.archived == archived &&
     other.lost == lost &&
     other.insuranceJustification == insuranceJustification &&
     other.cancelPatientInterventionReason == cancelPatientInterventionReason &&
     other.status == status &&
     other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (dateCode == null ? 0 : dateCode.hashCode) +
    (logicalId == null ? 0 : logicalId.hashCode) +
    (label == null ? 0 : label.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (contactId == null ? 0 : contactId.hashCode) +
    (serviceId == null ? 0 : serviceId.hashCode) +
    (tarificationId == null ? 0 : tarificationId.hashCode) +
    (code == null ? 0 : code.hashCode) +
    (paymentType == null ? 0 : paymentType.hashCode) +
    (paid == null ? 0 : paid.hashCode) +
    (totalAmount == null ? 0 : totalAmount.hashCode) +
    (reimbursement == null ? 0 : reimbursement.hashCode) +
    (patientIntervention == null ? 0 : patientIntervention.hashCode) +
    (doctorSupplement == null ? 0 : doctorSupplement.hashCode) +
    (conventionAmount == null ? 0 : conventionAmount.hashCode) +
    (vat == null ? 0 : vat.hashCode) +
    (error == null ? 0 : error.hashCode) +
    (contract == null ? 0 : contract.hashCode) +
    (contractDate == null ? 0 : contractDate.hashCode) +
    (units == null ? 0 : units.hashCode) +
    (side == null ? 0 : side.hashCode) +
    (timeOfDay == null ? 0 : timeOfDay.hashCode) +
    (eidReadingHour == null ? 0 : eidReadingHour.hashCode) +
    (eidReadingValue == null ? 0 : eidReadingValue.hashCode) +
    (override3rdPayerCode == null ? 0 : override3rdPayerCode.hashCode) +
    (override3rdPayerReason == null ? 0 : override3rdPayerReason.hashCode) +
    (transplantationCode == null ? 0 : transplantationCode.hashCode) +
    (prescriberNorm == null ? 0 : prescriberNorm.hashCode) +
    (percentNorm == null ? 0 : percentNorm.hashCode) +
    (prescriberNihii == null ? 0 : prescriberNihii.hashCode) +
    (relatedCode == null ? 0 : relatedCode.hashCode) +
    (prescriptionDate == null ? 0 : prescriptionDate.hashCode) +
    (derogationMaxNumber == null ? 0 : derogationMaxNumber.hashCode) +
    (prescriberSsin == null ? 0 : prescriberSsin.hashCode) +
    (prescriberLastName == null ? 0 : prescriberLastName.hashCode) +
    (prescriberFirstName == null ? 0 : prescriberFirstName.hashCode) +
    (prescriberCdHcParty == null ? 0 : prescriberCdHcParty.hashCode) +
    (locationNihii == null ? 0 : locationNihii.hashCode) +
    (locationCdHcParty == null ? 0 : locationCdHcParty.hashCode) +
    (locationService == null ? 0 : locationService.hashCode) +
    (canceled == null ? 0 : canceled.hashCode) +
    (accepted == null ? 0 : accepted.hashCode) +
    (pending == null ? 0 : pending.hashCode) +
    (resent == null ? 0 : resent.hashCode) +
    (archived == null ? 0 : archived.hashCode) +
    (lost == null ? 0 : lost.hashCode) +
    (insuranceJustification == null ? 0 : insuranceJustification.hashCode) +
    (cancelPatientInterventionReason == null ? 0 : cancelPatientInterventionReason.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (encryptedSelf == null ? 0 : encryptedSelf.hashCode);

  @override
  String toString() => 'InvoicingCodeDto[id=$id, dateCode=$dateCode, logicalId=$logicalId, label=$label, userId=$userId, contactId=$contactId, serviceId=$serviceId, tarificationId=$tarificationId, code=$code, paymentType=$paymentType, paid=$paid, totalAmount=$totalAmount, reimbursement=$reimbursement, patientIntervention=$patientIntervention, doctorSupplement=$doctorSupplement, conventionAmount=$conventionAmount, vat=$vat, error=$error, contract=$contract, contractDate=$contractDate, units=$units, side=$side, timeOfDay=$timeOfDay, eidReadingHour=$eidReadingHour, eidReadingValue=$eidReadingValue, override3rdPayerCode=$override3rdPayerCode, override3rdPayerReason=$override3rdPayerReason, transplantationCode=$transplantationCode, prescriberNorm=$prescriberNorm, percentNorm=$percentNorm, prescriberNihii=$prescriberNihii, relatedCode=$relatedCode, prescriptionDate=$prescriptionDate, derogationMaxNumber=$derogationMaxNumber, prescriberSsin=$prescriberSsin, prescriberLastName=$prescriberLastName, prescriberFirstName=$prescriberFirstName, prescriberCdHcParty=$prescriberCdHcParty, locationNihii=$locationNihii, locationCdHcParty=$locationCdHcParty, locationService=$locationService, canceled=$canceled, accepted=$accepted, pending=$pending, resent=$resent, archived=$archived, lost=$lost, insuranceJustification=$insuranceJustification, cancelPatientInterventionReason=$cancelPatientInterventionReason, status=$status, encryptedSelf=$encryptedSelf]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (dateCode != null) {
      json[r'dateCode'] = dateCode;
    }
    if (logicalId != null) {
      json[r'logicalId'] = logicalId;
    }
    if (label != null) {
      json[r'label'] = label;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    if (contactId != null) {
      json[r'contactId'] = contactId;
    }
    if (serviceId != null) {
      json[r'serviceId'] = serviceId;
    }
    if (tarificationId != null) {
      json[r'tarificationId'] = tarificationId;
    }
    if (code != null) {
      json[r'code'] = code;
    }
    if (paymentType != null) {
      json[r'paymentType'] = paymentType;
    }
    if (paid != null) {
      json[r'paid'] = paid;
    }
    if (totalAmount != null) {
      json[r'totalAmount'] = totalAmount;
    }
    if (reimbursement != null) {
      json[r'reimbursement'] = reimbursement;
    }
    if (patientIntervention != null) {
      json[r'patientIntervention'] = patientIntervention;
    }
    if (doctorSupplement != null) {
      json[r'doctorSupplement'] = doctorSupplement;
    }
    if (conventionAmount != null) {
      json[r'conventionAmount'] = conventionAmount;
    }
    if (vat != null) {
      json[r'vat'] = vat;
    }
    if (error != null) {
      json[r'error'] = error;
    }
    if (contract != null) {
      json[r'contract'] = contract;
    }
    if (contractDate != null) {
      json[r'contractDate'] = contractDate;
    }
    if (units != null) {
      json[r'units'] = units;
    }
    if (side != null) {
      json[r'side'] = side;
    }
    if (timeOfDay != null) {
      json[r'timeOfDay'] = timeOfDay;
    }
    if (eidReadingHour != null) {
      json[r'eidReadingHour'] = eidReadingHour;
    }
    if (eidReadingValue != null) {
      json[r'eidReadingValue'] = eidReadingValue;
    }
    if (override3rdPayerCode != null) {
      json[r'override3rdPayerCode'] = override3rdPayerCode;
    }
    if (override3rdPayerReason != null) {
      json[r'override3rdPayerReason'] = override3rdPayerReason;
    }
    if (transplantationCode != null) {
      json[r'transplantationCode'] = transplantationCode;
    }
    if (prescriberNorm != null) {
      json[r'prescriberNorm'] = prescriberNorm;
    }
    if (percentNorm != null) {
      json[r'percentNorm'] = percentNorm;
    }
    if (prescriberNihii != null) {
      json[r'prescriberNihii'] = prescriberNihii;
    }
    if (relatedCode != null) {
      json[r'relatedCode'] = relatedCode;
    }
    if (prescriptionDate != null) {
      json[r'prescriptionDate'] = prescriptionDate;
    }
    if (derogationMaxNumber != null) {
      json[r'derogationMaxNumber'] = derogationMaxNumber;
    }
    if (prescriberSsin != null) {
      json[r'prescriberSsin'] = prescriberSsin;
    }
    if (prescriberLastName != null) {
      json[r'prescriberLastName'] = prescriberLastName;
    }
    if (prescriberFirstName != null) {
      json[r'prescriberFirstName'] = prescriberFirstName;
    }
    if (prescriberCdHcParty != null) {
      json[r'prescriberCdHcParty'] = prescriberCdHcParty;
    }
    if (locationNihii != null) {
      json[r'locationNihii'] = locationNihii;
    }
    if (locationCdHcParty != null) {
      json[r'locationCdHcParty'] = locationCdHcParty;
    }
    if (locationService != null) {
      json[r'locationService'] = locationService;
    }
    if (canceled != null) {
      json[r'canceled'] = canceled;
    }
    if (accepted != null) {
      json[r'accepted'] = accepted;
    }
    if (pending != null) {
      json[r'pending'] = pending;
    }
    if (resent != null) {
      json[r'resent'] = resent;
    }
    if (archived != null) {
      json[r'archived'] = archived;
    }
    if (lost != null) {
      json[r'lost'] = lost;
    }
    if (insuranceJustification != null) {
      json[r'insuranceJustification'] = insuranceJustification;
    }
    if (cancelPatientInterventionReason != null) {
      json[r'cancelPatientInterventionReason'] = cancelPatientInterventionReason;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [InvoicingCodeDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InvoicingCodeDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InvoicingCodeDto(
        id: mapValueOfType<String>(json, r'id'),
        dateCode: mapValueOfType<int>(json, r'dateCode'),
        logicalId: mapValueOfType<String>(json, r'logicalId'),
        label: mapValueOfType<String>(json, r'label'),
        userId: mapValueOfType<String>(json, r'userId'),
        contactId: mapValueOfType<String>(json, r'contactId'),
        serviceId: mapValueOfType<String>(json, r'serviceId'),
        tarificationId: mapValueOfType<String>(json, r'tarificationId'),
        code: mapValueOfType<String>(json, r'code'),
        paymentType: InvoicingCodeDtoPaymentTypeEnum.fromJson(json[r'paymentType']),
        paid: mapValueOfType<double>(json, r'paid'),
        totalAmount: mapValueOfType<double>(json, r'totalAmount'),
        reimbursement: mapValueOfType<double>(json, r'reimbursement'),
        patientIntervention: mapValueOfType<double>(json, r'patientIntervention'),
        doctorSupplement: mapValueOfType<double>(json, r'doctorSupplement'),
        conventionAmount: mapValueOfType<double>(json, r'conventionAmount'),
        vat: mapValueOfType<double>(json, r'vat'),
        error: mapValueOfType<String>(json, r'error'),
        contract: mapValueOfType<String>(json, r'contract'),
        contractDate: mapValueOfType<int>(json, r'contractDate'),
        units: mapValueOfType<int>(json, r'units'),
        side: mapValueOfType<int>(json, r'side'),
        timeOfDay: mapValueOfType<int>(json, r'timeOfDay'),
        eidReadingHour: mapValueOfType<int>(json, r'eidReadingHour'),
        eidReadingValue: mapValueOfType<String>(json, r'eidReadingValue'),
        override3rdPayerCode: mapValueOfType<int>(json, r'override3rdPayerCode'),
        override3rdPayerReason: mapValueOfType<String>(json, r'override3rdPayerReason'),
        transplantationCode: mapValueOfType<int>(json, r'transplantationCode'),
        prescriberNorm: mapValueOfType<int>(json, r'prescriberNorm'),
        percentNorm: mapValueOfType<int>(json, r'percentNorm'),
        prescriberNihii: mapValueOfType<String>(json, r'prescriberNihii'),
        relatedCode: mapValueOfType<String>(json, r'relatedCode'),
        prescriptionDate: mapValueOfType<int>(json, r'prescriptionDate'),
        derogationMaxNumber: mapValueOfType<int>(json, r'derogationMaxNumber'),
        prescriberSsin: mapValueOfType<String>(json, r'prescriberSsin'),
        prescriberLastName: mapValueOfType<String>(json, r'prescriberLastName'),
        prescriberFirstName: mapValueOfType<String>(json, r'prescriberFirstName'),
        prescriberCdHcParty: mapValueOfType<String>(json, r'prescriberCdHcParty'),
        locationNihii: mapValueOfType<String>(json, r'locationNihii'),
        locationCdHcParty: mapValueOfType<String>(json, r'locationCdHcParty'),
        locationService: mapValueOfType<int>(json, r'locationService'),
        canceled: mapValueOfType<bool>(json, r'canceled'),
        accepted: mapValueOfType<bool>(json, r'accepted'),
        pending: mapValueOfType<bool>(json, r'pending'),
        resent: mapValueOfType<bool>(json, r'resent'),
        archived: mapValueOfType<bool>(json, r'archived'),
        lost: mapValueOfType<bool>(json, r'lost'),
        insuranceJustification: mapValueOfType<int>(json, r'insuranceJustification'),
        cancelPatientInterventionReason: mapValueOfType<int>(json, r'cancelPatientInterventionReason'),
        status: mapValueOfType<int>(json, r'status'),
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<InvoicingCodeDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InvoicingCodeDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InvoicingCodeDto>[];

  static Map<String, InvoicingCodeDto> mapFromJson(dynamic json) {
    final map = <String, InvoicingCodeDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InvoicingCodeDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InvoicingCodeDto-objects as value to a dart map
  static Map<String, List<InvoicingCodeDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InvoicingCodeDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InvoicingCodeDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class InvoicingCodeDtoPaymentTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const InvoicingCodeDtoPaymentTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const cash = InvoicingCodeDtoPaymentTypeEnum._(r'cash');
  static const wired = InvoicingCodeDtoPaymentTypeEnum._(r'wired');
  static const insurance = InvoicingCodeDtoPaymentTypeEnum._(r'insurance');
  static const creditcard = InvoicingCodeDtoPaymentTypeEnum._(r'creditcard');
  static const debitcard = InvoicingCodeDtoPaymentTypeEnum._(r'debitcard');
  static const paypal = InvoicingCodeDtoPaymentTypeEnum._(r'paypal');
  static const bitcoin = InvoicingCodeDtoPaymentTypeEnum._(r'bitcoin');
  static const other = InvoicingCodeDtoPaymentTypeEnum._(r'other');

  /// List of all possible values in this [enum][InvoicingCodeDtoPaymentTypeEnum].
  static const values = <InvoicingCodeDtoPaymentTypeEnum>[
    cash,
    wired,
    insurance,
    creditcard,
    debitcard,
    paypal,
    bitcoin,
    other,
  ];

  static InvoicingCodeDtoPaymentTypeEnum fromJson(dynamic value) =>
    InvoicingCodeDtoPaymentTypeEnumTypeTransformer().decode(value);

  static List<InvoicingCodeDtoPaymentTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InvoicingCodeDtoPaymentTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InvoicingCodeDtoPaymentTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [InvoicingCodeDtoPaymentTypeEnum] to String,
/// and [decode] dynamic data back to [InvoicingCodeDtoPaymentTypeEnum].
class InvoicingCodeDtoPaymentTypeEnumTypeTransformer {
  factory InvoicingCodeDtoPaymentTypeEnumTypeTransformer() => _instance ??= const InvoicingCodeDtoPaymentTypeEnumTypeTransformer._();

  const InvoicingCodeDtoPaymentTypeEnumTypeTransformer._();

  String encode(InvoicingCodeDtoPaymentTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvoicingCodeDtoPaymentTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvoicingCodeDtoPaymentTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'cash': return InvoicingCodeDtoPaymentTypeEnum.cash;
        case r'wired': return InvoicingCodeDtoPaymentTypeEnum.wired;
        case r'insurance': return InvoicingCodeDtoPaymentTypeEnum.insurance;
        case r'creditcard': return InvoicingCodeDtoPaymentTypeEnum.creditcard;
        case r'debitcard': return InvoicingCodeDtoPaymentTypeEnum.debitcard;
        case r'paypal': return InvoicingCodeDtoPaymentTypeEnum.paypal;
        case r'bitcoin': return InvoicingCodeDtoPaymentTypeEnum.bitcoin;
        case r'other': return InvoicingCodeDtoPaymentTypeEnum.other;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvoicingCodeDtoPaymentTypeEnumTypeTransformer] instance.
  static InvoicingCodeDtoPaymentTypeEnumTypeTransformer _instance;
}


