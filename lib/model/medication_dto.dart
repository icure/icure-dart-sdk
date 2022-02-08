//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MedicationDto {
  /// Returns a new [MedicationDto] instance.
  MedicationDto({
    this.compoundPrescription,
    this.substanceProduct,
    this.medicinalProduct,
    this.numberOfPackages,
    this.batch,
    this.instructionForPatient,
    this.commentForDelivery,
    this.drugRoute,
    this.temporality,
    this.frequency,
    this.reimbursementReason,
    this.substitutionAllowed,
    this.beginMoment,
    this.endMoment,
    this.deliveryMoment,
    this.endExecutionMoment,
    this.duration,
    this.renewal,
    this.knownUsage,
    this.regimen = const [],
    this.posology,
    this.agreements = const {},
    this.medicationSchemeIdOnSafe,
    this.medicationSchemeSafeVersion,
    this.medicationSchemeTimeStampOnSafe,
    this.medicationSchemeDocumentId,
    this.safeIdName,
    this.idOnSafes,
    this.timestampOnSafe,
    this.changeValidated,
    this.newSafeMedication,
    this.medicationUse,
    this.beginCondition,
    this.endCondition,
    this.origin,
    this.medicationChanged,
    this.posologyChanged,
    this.suspension = const [],
    this.prescriptionRID,
    this.status,
  });

  String compoundPrescription;

  SubstanceproductDto substanceProduct;

  MedicinalproductDto medicinalProduct;

  int numberOfPackages;

  String batch;

  String instructionForPatient;

  String commentForDelivery;

  String drugRoute;

  String temporality;

  CodeStubDto frequency;

  CodeStubDto reimbursementReason;

  bool substitutionAllowed;

  int beginMoment;

  int endMoment;

  int deliveryMoment;

  int endExecutionMoment;

  DurationDto duration;

  RenewalDto renewal;

  bool knownUsage;

  List<RegimenItemDto> regimen;

  String posology;

  Map<String, ParagraphAgreementDto> agreements;

  String medicationSchemeIdOnSafe;

  int medicationSchemeSafeVersion;

  int medicationSchemeTimeStampOnSafe;

  String medicationSchemeDocumentId;

  String safeIdName;

  String idOnSafes;

  int timestampOnSafe;

  bool changeValidated;

  bool newSafeMedication;

  String medicationUse;

  String beginCondition;

  String endCondition;

  String origin;

  bool medicationChanged;

  bool posologyChanged;

  List<SuspensionDto> suspension;

  String prescriptionRID;

  int status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MedicationDto &&
     other.compoundPrescription == compoundPrescription &&
     other.substanceProduct == substanceProduct &&
     other.medicinalProduct == medicinalProduct &&
     other.numberOfPackages == numberOfPackages &&
     other.batch == batch &&
     other.instructionForPatient == instructionForPatient &&
     other.commentForDelivery == commentForDelivery &&
     other.drugRoute == drugRoute &&
     other.temporality == temporality &&
     other.frequency == frequency &&
     other.reimbursementReason == reimbursementReason &&
     other.substitutionAllowed == substitutionAllowed &&
     other.beginMoment == beginMoment &&
     other.endMoment == endMoment &&
     other.deliveryMoment == deliveryMoment &&
     other.endExecutionMoment == endExecutionMoment &&
     other.duration == duration &&
     other.renewal == renewal &&
     other.knownUsage == knownUsage &&
     other.regimen == regimen &&
     other.posology == posology &&
     other.agreements == agreements &&
     other.medicationSchemeIdOnSafe == medicationSchemeIdOnSafe &&
     other.medicationSchemeSafeVersion == medicationSchemeSafeVersion &&
     other.medicationSchemeTimeStampOnSafe == medicationSchemeTimeStampOnSafe &&
     other.medicationSchemeDocumentId == medicationSchemeDocumentId &&
     other.safeIdName == safeIdName &&
     other.idOnSafes == idOnSafes &&
     other.timestampOnSafe == timestampOnSafe &&
     other.changeValidated == changeValidated &&
     other.newSafeMedication == newSafeMedication &&
     other.medicationUse == medicationUse &&
     other.beginCondition == beginCondition &&
     other.endCondition == endCondition &&
     other.origin == origin &&
     other.medicationChanged == medicationChanged &&
     other.posologyChanged == posologyChanged &&
     other.suspension == suspension &&
     other.prescriptionRID == prescriptionRID &&
     other.status == status;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (compoundPrescription == null ? 0 : compoundPrescription.hashCode) +
    (substanceProduct == null ? 0 : substanceProduct.hashCode) +
    (medicinalProduct == null ? 0 : medicinalProduct.hashCode) +
    (numberOfPackages == null ? 0 : numberOfPackages.hashCode) +
    (batch == null ? 0 : batch.hashCode) +
    (instructionForPatient == null ? 0 : instructionForPatient.hashCode) +
    (commentForDelivery == null ? 0 : commentForDelivery.hashCode) +
    (drugRoute == null ? 0 : drugRoute.hashCode) +
    (temporality == null ? 0 : temporality.hashCode) +
    (frequency == null ? 0 : frequency.hashCode) +
    (reimbursementReason == null ? 0 : reimbursementReason.hashCode) +
    (substitutionAllowed == null ? 0 : substitutionAllowed.hashCode) +
    (beginMoment == null ? 0 : beginMoment.hashCode) +
    (endMoment == null ? 0 : endMoment.hashCode) +
    (deliveryMoment == null ? 0 : deliveryMoment.hashCode) +
    (endExecutionMoment == null ? 0 : endExecutionMoment.hashCode) +
    (duration == null ? 0 : duration.hashCode) +
    (renewal == null ? 0 : renewal.hashCode) +
    (knownUsage == null ? 0 : knownUsage.hashCode) +
    (regimen == null ? 0 : regimen.hashCode) +
    (posology == null ? 0 : posology.hashCode) +
    (agreements == null ? 0 : agreements.hashCode) +
    (medicationSchemeIdOnSafe == null ? 0 : medicationSchemeIdOnSafe.hashCode) +
    (medicationSchemeSafeVersion == null ? 0 : medicationSchemeSafeVersion.hashCode) +
    (medicationSchemeTimeStampOnSafe == null ? 0 : medicationSchemeTimeStampOnSafe.hashCode) +
    (medicationSchemeDocumentId == null ? 0 : medicationSchemeDocumentId.hashCode) +
    (safeIdName == null ? 0 : safeIdName.hashCode) +
    (idOnSafes == null ? 0 : idOnSafes.hashCode) +
    (timestampOnSafe == null ? 0 : timestampOnSafe.hashCode) +
    (changeValidated == null ? 0 : changeValidated.hashCode) +
    (newSafeMedication == null ? 0 : newSafeMedication.hashCode) +
    (medicationUse == null ? 0 : medicationUse.hashCode) +
    (beginCondition == null ? 0 : beginCondition.hashCode) +
    (endCondition == null ? 0 : endCondition.hashCode) +
    (origin == null ? 0 : origin.hashCode) +
    (medicationChanged == null ? 0 : medicationChanged.hashCode) +
    (posologyChanged == null ? 0 : posologyChanged.hashCode) +
    (suspension == null ? 0 : suspension.hashCode) +
    (prescriptionRID == null ? 0 : prescriptionRID.hashCode) +
    (status == null ? 0 : status.hashCode);

  @override
  String toString() => 'MedicationDto[compoundPrescription=$compoundPrescription, substanceProduct=$substanceProduct, medicinalProduct=$medicinalProduct, numberOfPackages=$numberOfPackages, batch=$batch, instructionForPatient=$instructionForPatient, commentForDelivery=$commentForDelivery, drugRoute=$drugRoute, temporality=$temporality, frequency=$frequency, reimbursementReason=$reimbursementReason, substitutionAllowed=$substitutionAllowed, beginMoment=$beginMoment, endMoment=$endMoment, deliveryMoment=$deliveryMoment, endExecutionMoment=$endExecutionMoment, duration=$duration, renewal=$renewal, knownUsage=$knownUsage, regimen=$regimen, posology=$posology, agreements=$agreements, medicationSchemeIdOnSafe=$medicationSchemeIdOnSafe, medicationSchemeSafeVersion=$medicationSchemeSafeVersion, medicationSchemeTimeStampOnSafe=$medicationSchemeTimeStampOnSafe, medicationSchemeDocumentId=$medicationSchemeDocumentId, safeIdName=$safeIdName, idOnSafes=$idOnSafes, timestampOnSafe=$timestampOnSafe, changeValidated=$changeValidated, newSafeMedication=$newSafeMedication, medicationUse=$medicationUse, beginCondition=$beginCondition, endCondition=$endCondition, origin=$origin, medicationChanged=$medicationChanged, posologyChanged=$posologyChanged, suspension=$suspension, prescriptionRID=$prescriptionRID, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (compoundPrescription != null) {
      json[r'compoundPrescription'] = compoundPrescription;
    }
    if (substanceProduct != null) {
      json[r'substanceProduct'] = substanceProduct;
    }
    if (medicinalProduct != null) {
      json[r'medicinalProduct'] = medicinalProduct;
    }
    if (numberOfPackages != null) {
      json[r'numberOfPackages'] = numberOfPackages;
    }
    if (batch != null) {
      json[r'batch'] = batch;
    }
    if (instructionForPatient != null) {
      json[r'instructionForPatient'] = instructionForPatient;
    }
    if (commentForDelivery != null) {
      json[r'commentForDelivery'] = commentForDelivery;
    }
    if (drugRoute != null) {
      json[r'drugRoute'] = drugRoute;
    }
    if (temporality != null) {
      json[r'temporality'] = temporality;
    }
    if (frequency != null) {
      json[r'frequency'] = frequency;
    }
    if (reimbursementReason != null) {
      json[r'reimbursementReason'] = reimbursementReason;
    }
    if (substitutionAllowed != null) {
      json[r'substitutionAllowed'] = substitutionAllowed;
    }
    if (beginMoment != null) {
      json[r'beginMoment'] = beginMoment;
    }
    if (endMoment != null) {
      json[r'endMoment'] = endMoment;
    }
    if (deliveryMoment != null) {
      json[r'deliveryMoment'] = deliveryMoment;
    }
    if (endExecutionMoment != null) {
      json[r'endExecutionMoment'] = endExecutionMoment;
    }
    if (duration != null) {
      json[r'duration'] = duration;
    }
    if (renewal != null) {
      json[r'renewal'] = renewal;
    }
    if (knownUsage != null) {
      json[r'knownUsage'] = knownUsage;
    }
    if (regimen != null) {
      json[r'regimen'] = regimen;
    }
    if (posology != null) {
      json[r'posology'] = posology;
    }
    if (agreements != null) {
      json[r'agreements'] = agreements;
    }
    if (medicationSchemeIdOnSafe != null) {
      json[r'medicationSchemeIdOnSafe'] = medicationSchemeIdOnSafe;
    }
    if (medicationSchemeSafeVersion != null) {
      json[r'medicationSchemeSafeVersion'] = medicationSchemeSafeVersion;
    }
    if (medicationSchemeTimeStampOnSafe != null) {
      json[r'medicationSchemeTimeStampOnSafe'] = medicationSchemeTimeStampOnSafe;
    }
    if (medicationSchemeDocumentId != null) {
      json[r'medicationSchemeDocumentId'] = medicationSchemeDocumentId;
    }
    if (safeIdName != null) {
      json[r'safeIdName'] = safeIdName;
    }
    if (idOnSafes != null) {
      json[r'idOnSafes'] = idOnSafes;
    }
    if (timestampOnSafe != null) {
      json[r'timestampOnSafe'] = timestampOnSafe;
    }
    if (changeValidated != null) {
      json[r'changeValidated'] = changeValidated;
    }
    if (newSafeMedication != null) {
      json[r'newSafeMedication'] = newSafeMedication;
    }
    if (medicationUse != null) {
      json[r'medicationUse'] = medicationUse;
    }
    if (beginCondition != null) {
      json[r'beginCondition'] = beginCondition;
    }
    if (endCondition != null) {
      json[r'endCondition'] = endCondition;
    }
    if (origin != null) {
      json[r'origin'] = origin;
    }
    if (medicationChanged != null) {
      json[r'medicationChanged'] = medicationChanged;
    }
    if (posologyChanged != null) {
      json[r'posologyChanged'] = posologyChanged;
    }
    if (suspension != null) {
      json[r'suspension'] = suspension;
    }
    if (prescriptionRID != null) {
      json[r'prescriptionRID'] = prescriptionRID;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    return json;
  }

  /// Returns a new [MedicationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MedicationDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MedicationDto(
        compoundPrescription: mapValueOfType<String>(json, r'compoundPrescription'),
        substanceProduct: SubstanceproductDto.fromJson(json[r'substanceProduct']),
        medicinalProduct: MedicinalproductDto.fromJson(json[r'medicinalProduct']),
        numberOfPackages: mapValueOfType<int>(json, r'numberOfPackages'),
        batch: mapValueOfType<String>(json, r'batch'),
        instructionForPatient: mapValueOfType<String>(json, r'instructionForPatient'),
        commentForDelivery: mapValueOfType<String>(json, r'commentForDelivery'),
        drugRoute: mapValueOfType<String>(json, r'drugRoute'),
        temporality: mapValueOfType<String>(json, r'temporality'),
        frequency: CodeStubDto.fromJson(json[r'frequency']),
        reimbursementReason: CodeStubDto.fromJson(json[r'reimbursementReason']),
        substitutionAllowed: mapValueOfType<bool>(json, r'substitutionAllowed'),
        beginMoment: mapValueOfType<int>(json, r'beginMoment'),
        endMoment: mapValueOfType<int>(json, r'endMoment'),
        deliveryMoment: mapValueOfType<int>(json, r'deliveryMoment'),
        endExecutionMoment: mapValueOfType<int>(json, r'endExecutionMoment'),
        duration: DurationDto.fromJson(json[r'duration']),
        renewal: RenewalDto.fromJson(json[r'renewal']),
        knownUsage: mapValueOfType<bool>(json, r'knownUsage'),
        regimen: RegimenItemDto.listFromJson(json[r'regimen']),
        posology: mapValueOfType<String>(json, r'posology'),
        agreements: mapValueOfType<Map<String, ParagraphAgreementDto>>(json, r'agreements'),
        medicationSchemeIdOnSafe: mapValueOfType<String>(json, r'medicationSchemeIdOnSafe'),
        medicationSchemeSafeVersion: mapValueOfType<int>(json, r'medicationSchemeSafeVersion'),
        medicationSchemeTimeStampOnSafe: mapValueOfType<int>(json, r'medicationSchemeTimeStampOnSafe'),
        medicationSchemeDocumentId: mapValueOfType<String>(json, r'medicationSchemeDocumentId'),
        safeIdName: mapValueOfType<String>(json, r'safeIdName'),
        idOnSafes: mapValueOfType<String>(json, r'idOnSafes'),
        timestampOnSafe: mapValueOfType<int>(json, r'timestampOnSafe'),
        changeValidated: mapValueOfType<bool>(json, r'changeValidated'),
        newSafeMedication: mapValueOfType<bool>(json, r'newSafeMedication'),
        medicationUse: mapValueOfType<String>(json, r'medicationUse'),
        beginCondition: mapValueOfType<String>(json, r'beginCondition'),
        endCondition: mapValueOfType<String>(json, r'endCondition'),
        origin: mapValueOfType<String>(json, r'origin'),
        medicationChanged: mapValueOfType<bool>(json, r'medicationChanged'),
        posologyChanged: mapValueOfType<bool>(json, r'posologyChanged'),
        suspension: SuspensionDto.listFromJson(json[r'suspension']),
        prescriptionRID: mapValueOfType<String>(json, r'prescriptionRID'),
        status: mapValueOfType<int>(json, r'status'),
      );
    }
    return null;
  }

  static List<MedicationDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MedicationDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MedicationDto>[];

  static Map<String, MedicationDto> mapFromJson(dynamic json) {
    final map = <String, MedicationDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = MedicationDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MedicationDto-objects as value to a dart map
  static Map<String, List<MedicationDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MedicationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = MedicationDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

