//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AmppDto {
  /// Returns a new [AmppDto] instance.
  AmppDto({
    this.from,
    this.to,
    this.index,
    this.ctiExtended,
    @required this.orphan,
    this.leafletLink,
    this.spcLink,
    this.rmaPatientLink,
    this.rmaProfessionalLink,
    this.parallelCircuit,
    this.parallelDistributor,
    this.packMultiplier,
    this.packAmount,
    this.packDisplayValue,
    this.status,
    this.atcs = const [],
    this.crmLink,
    this.deliveryModusCode,
    this.deliveryModus,
    this.deliveryModusSpecificationCode,
    this.deliveryModusSpecification,
    this.dhpcLink,
    this.distributorCompany,
    this.singleUse,
    this.speciallyRegulated,
    this.abbreviatedName,
    this.prescriptionName,
    this.note,
    this.posologyNote,
    this.noGenericPrescriptionReasons = const [],
    this.exFactoryPrice,
    this.reimbursementCode,
    this.definedDailyDose,
    this.officialExFactoryPrice,
    this.realExFactoryPrice,
    this.pricingInformationDecisionDate,
    this.components = const [],
    this.commercializations = const [],
    this.supplyProblems = const [],
    this.dmpps = const [],
    this.vaccineIndicationCodes = const [],
  });

  int from;

  int to;

  double index;

  String ctiExtended;

  bool orphan;

  SamTextDto leafletLink;

  SamTextDto spcLink;

  SamTextDto rmaPatientLink;

  SamTextDto rmaProfessionalLink;

  int parallelCircuit;

  String parallelDistributor;

  int packMultiplier;

  QuantityDto packAmount;

  String packDisplayValue;

  AmppDtoStatusEnum status;

  List<AtcDto> atcs;

  SamTextDto crmLink;

  String deliveryModusCode;

  SamTextDto deliveryModus;

  String deliveryModusSpecificationCode;

  SamTextDto deliveryModusSpecification;

  SamTextDto dhpcLink;

  CompanyDto distributorCompany;

  bool singleUse;

  int speciallyRegulated;

  SamTextDto abbreviatedName;

  SamTextDto prescriptionName;

  SamTextDto note;

  SamTextDto posologyNote;

  List<SamTextDto> noGenericPrescriptionReasons;

  double exFactoryPrice;

  int reimbursementCode;

  QuantityDto definedDailyDose;

  double officialExFactoryPrice;

  double realExFactoryPrice;

  int pricingInformationDecisionDate;

  List<AmppComponentDto> components;

  List<CommercializationDto> commercializations;

  List<SupplyProblemDto> supplyProblems;

  List<DmppDto> dmpps;

  List<String> vaccineIndicationCodes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AmppDto &&
     other.from == from &&
     other.to == to &&
     other.index == index &&
     other.ctiExtended == ctiExtended &&
     other.orphan == orphan &&
     other.leafletLink == leafletLink &&
     other.spcLink == spcLink &&
     other.rmaPatientLink == rmaPatientLink &&
     other.rmaProfessionalLink == rmaProfessionalLink &&
     other.parallelCircuit == parallelCircuit &&
     other.parallelDistributor == parallelDistributor &&
     other.packMultiplier == packMultiplier &&
     other.packAmount == packAmount &&
     other.packDisplayValue == packDisplayValue &&
     other.status == status &&
     other.atcs == atcs &&
     other.crmLink == crmLink &&
     other.deliveryModusCode == deliveryModusCode &&
     other.deliveryModus == deliveryModus &&
     other.deliveryModusSpecificationCode == deliveryModusSpecificationCode &&
     other.deliveryModusSpecification == deliveryModusSpecification &&
     other.dhpcLink == dhpcLink &&
     other.distributorCompany == distributorCompany &&
     other.singleUse == singleUse &&
     other.speciallyRegulated == speciallyRegulated &&
     other.abbreviatedName == abbreviatedName &&
     other.prescriptionName == prescriptionName &&
     other.note == note &&
     other.posologyNote == posologyNote &&
     other.noGenericPrescriptionReasons == noGenericPrescriptionReasons &&
     other.exFactoryPrice == exFactoryPrice &&
     other.reimbursementCode == reimbursementCode &&
     other.definedDailyDose == definedDailyDose &&
     other.officialExFactoryPrice == officialExFactoryPrice &&
     other.realExFactoryPrice == realExFactoryPrice &&
     other.pricingInformationDecisionDate == pricingInformationDecisionDate &&
     other.components == components &&
     other.commercializations == commercializations &&
     other.supplyProblems == supplyProblems &&
     other.dmpps == dmpps &&
     other.vaccineIndicationCodes == vaccineIndicationCodes;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (from == null ? 0 : from.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (index == null ? 0 : index.hashCode) +
    (ctiExtended == null ? 0 : ctiExtended.hashCode) +
    (orphan == null ? 0 : orphan.hashCode) +
    (leafletLink == null ? 0 : leafletLink.hashCode) +
    (spcLink == null ? 0 : spcLink.hashCode) +
    (rmaPatientLink == null ? 0 : rmaPatientLink.hashCode) +
    (rmaProfessionalLink == null ? 0 : rmaProfessionalLink.hashCode) +
    (parallelCircuit == null ? 0 : parallelCircuit.hashCode) +
    (parallelDistributor == null ? 0 : parallelDistributor.hashCode) +
    (packMultiplier == null ? 0 : packMultiplier.hashCode) +
    (packAmount == null ? 0 : packAmount.hashCode) +
    (packDisplayValue == null ? 0 : packDisplayValue.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (atcs == null ? 0 : atcs.hashCode) +
    (crmLink == null ? 0 : crmLink.hashCode) +
    (deliveryModusCode == null ? 0 : deliveryModusCode.hashCode) +
    (deliveryModus == null ? 0 : deliveryModus.hashCode) +
    (deliveryModusSpecificationCode == null ? 0 : deliveryModusSpecificationCode.hashCode) +
    (deliveryModusSpecification == null ? 0 : deliveryModusSpecification.hashCode) +
    (dhpcLink == null ? 0 : dhpcLink.hashCode) +
    (distributorCompany == null ? 0 : distributorCompany.hashCode) +
    (singleUse == null ? 0 : singleUse.hashCode) +
    (speciallyRegulated == null ? 0 : speciallyRegulated.hashCode) +
    (abbreviatedName == null ? 0 : abbreviatedName.hashCode) +
    (prescriptionName == null ? 0 : prescriptionName.hashCode) +
    (note == null ? 0 : note.hashCode) +
    (posologyNote == null ? 0 : posologyNote.hashCode) +
    (noGenericPrescriptionReasons == null ? 0 : noGenericPrescriptionReasons.hashCode) +
    (exFactoryPrice == null ? 0 : exFactoryPrice.hashCode) +
    (reimbursementCode == null ? 0 : reimbursementCode.hashCode) +
    (definedDailyDose == null ? 0 : definedDailyDose.hashCode) +
    (officialExFactoryPrice == null ? 0 : officialExFactoryPrice.hashCode) +
    (realExFactoryPrice == null ? 0 : realExFactoryPrice.hashCode) +
    (pricingInformationDecisionDate == null ? 0 : pricingInformationDecisionDate.hashCode) +
    (components == null ? 0 : components.hashCode) +
    (commercializations == null ? 0 : commercializations.hashCode) +
    (supplyProblems == null ? 0 : supplyProblems.hashCode) +
    (dmpps == null ? 0 : dmpps.hashCode) +
    (vaccineIndicationCodes == null ? 0 : vaccineIndicationCodes.hashCode);

  @override
  String toString() => 'AmppDto[from=$from, to=$to, index=$index, ctiExtended=$ctiExtended, orphan=$orphan, leafletLink=$leafletLink, spcLink=$spcLink, rmaPatientLink=$rmaPatientLink, rmaProfessionalLink=$rmaProfessionalLink, parallelCircuit=$parallelCircuit, parallelDistributor=$parallelDistributor, packMultiplier=$packMultiplier, packAmount=$packAmount, packDisplayValue=$packDisplayValue, status=$status, atcs=$atcs, crmLink=$crmLink, deliveryModusCode=$deliveryModusCode, deliveryModus=$deliveryModus, deliveryModusSpecificationCode=$deliveryModusSpecificationCode, deliveryModusSpecification=$deliveryModusSpecification, dhpcLink=$dhpcLink, distributorCompany=$distributorCompany, singleUse=$singleUse, speciallyRegulated=$speciallyRegulated, abbreviatedName=$abbreviatedName, prescriptionName=$prescriptionName, note=$note, posologyNote=$posologyNote, noGenericPrescriptionReasons=$noGenericPrescriptionReasons, exFactoryPrice=$exFactoryPrice, reimbursementCode=$reimbursementCode, definedDailyDose=$definedDailyDose, officialExFactoryPrice=$officialExFactoryPrice, realExFactoryPrice=$realExFactoryPrice, pricingInformationDecisionDate=$pricingInformationDecisionDate, components=$components, commercializations=$commercializations, supplyProblems=$supplyProblems, dmpps=$dmpps, vaccineIndicationCodes=$vaccineIndicationCodes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (from != null) {
      json[r'from'] = from;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (index != null) {
      json[r'index'] = index;
    }
    if (ctiExtended != null) {
      json[r'ctiExtended'] = ctiExtended;
    }
      json[r'orphan'] = orphan;
    if (leafletLink != null) {
      json[r'leafletLink'] = leafletLink;
    }
    if (spcLink != null) {
      json[r'spcLink'] = spcLink;
    }
    if (rmaPatientLink != null) {
      json[r'rmaPatientLink'] = rmaPatientLink;
    }
    if (rmaProfessionalLink != null) {
      json[r'rmaProfessionalLink'] = rmaProfessionalLink;
    }
    if (parallelCircuit != null) {
      json[r'parallelCircuit'] = parallelCircuit;
    }
    if (parallelDistributor != null) {
      json[r'parallelDistributor'] = parallelDistributor;
    }
    if (packMultiplier != null) {
      json[r'packMultiplier'] = packMultiplier;
    }
    if (packAmount != null) {
      json[r'packAmount'] = packAmount;
    }
    if (packDisplayValue != null) {
      json[r'packDisplayValue'] = packDisplayValue;
    }
    if (status != null) {
      json[r'status'] = status;
    }
      json[r'atcs'] = atcs;
    if (crmLink != null) {
      json[r'crmLink'] = crmLink;
    }
    if (deliveryModusCode != null) {
      json[r'deliveryModusCode'] = deliveryModusCode;
    }
    if (deliveryModus != null) {
      json[r'deliveryModus'] = deliveryModus;
    }
    if (deliveryModusSpecificationCode != null) {
      json[r'deliveryModusSpecificationCode'] = deliveryModusSpecificationCode;
    }
    if (deliveryModusSpecification != null) {
      json[r'deliveryModusSpecification'] = deliveryModusSpecification;
    }
    if (dhpcLink != null) {
      json[r'dhpcLink'] = dhpcLink;
    }
    if (distributorCompany != null) {
      json[r'distributorCompany'] = distributorCompany;
    }
    if (singleUse != null) {
      json[r'singleUse'] = singleUse;
    }
    if (speciallyRegulated != null) {
      json[r'speciallyRegulated'] = speciallyRegulated;
    }
    if (abbreviatedName != null) {
      json[r'abbreviatedName'] = abbreviatedName;
    }
    if (prescriptionName != null) {
      json[r'prescriptionName'] = prescriptionName;
    }
    if (note != null) {
      json[r'note'] = note;
    }
    if (posologyNote != null) {
      json[r'posologyNote'] = posologyNote;
    }
    if (noGenericPrescriptionReasons != null) {
      json[r'noGenericPrescriptionReasons'] = noGenericPrescriptionReasons;
    }
    if (exFactoryPrice != null) {
      json[r'exFactoryPrice'] = exFactoryPrice;
    }
    if (reimbursementCode != null) {
      json[r'reimbursementCode'] = reimbursementCode;
    }
    if (definedDailyDose != null) {
      json[r'definedDailyDose'] = definedDailyDose;
    }
    if (officialExFactoryPrice != null) {
      json[r'officialExFactoryPrice'] = officialExFactoryPrice;
    }
    if (realExFactoryPrice != null) {
      json[r'realExFactoryPrice'] = realExFactoryPrice;
    }
    if (pricingInformationDecisionDate != null) {
      json[r'pricingInformationDecisionDate'] = pricingInformationDecisionDate;
    }
    if (components != null) {
      json[r'components'] = components;
    }
    if (commercializations != null) {
      json[r'commercializations'] = commercializations;
    }
    if (supplyProblems != null) {
      json[r'supplyProblems'] = supplyProblems;
    }
      json[r'dmpps'] = dmpps;
    if (vaccineIndicationCodes != null) {
      json[r'vaccineIndicationCodes'] = vaccineIndicationCodes;
    }
    return json;
  }

  /// Returns a new [AmppDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AmppDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AmppDto(
        from: mapValueOfType<int>(json, r'from'),
        to: mapValueOfType<int>(json, r'to'),
        index: mapValueOfType<double>(json, r'index'),
        ctiExtended: mapValueOfType<String>(json, r'ctiExtended'),
        orphan: mapValueOfType<bool>(json, r'orphan'),
        leafletLink: SamTextDto.fromJson(json[r'leafletLink']),
        spcLink: SamTextDto.fromJson(json[r'spcLink']),
        rmaPatientLink: SamTextDto.fromJson(json[r'rmaPatientLink']),
        rmaProfessionalLink: SamTextDto.fromJson(json[r'rmaProfessionalLink']),
        parallelCircuit: mapValueOfType<int>(json, r'parallelCircuit'),
        parallelDistributor: mapValueOfType<String>(json, r'parallelDistributor'),
        packMultiplier: mapValueOfType<int>(json, r'packMultiplier'),
        packAmount: QuantityDto.fromJson(json[r'packAmount']),
        packDisplayValue: mapValueOfType<String>(json, r'packDisplayValue'),
        status: AmppDtoStatusEnum.fromJson(json[r'status']),
        atcs: AtcDto.listFromJson(json[r'atcs']),
        crmLink: SamTextDto.fromJson(json[r'crmLink']),
        deliveryModusCode: mapValueOfType<String>(json, r'deliveryModusCode'),
        deliveryModus: SamTextDto.fromJson(json[r'deliveryModus']),
        deliveryModusSpecificationCode: mapValueOfType<String>(json, r'deliveryModusSpecificationCode'),
        deliveryModusSpecification: SamTextDto.fromJson(json[r'deliveryModusSpecification']),
        dhpcLink: SamTextDto.fromJson(json[r'dhpcLink']),
        distributorCompany: CompanyDto.fromJson(json[r'distributorCompany']),
        singleUse: mapValueOfType<bool>(json, r'singleUse'),
        speciallyRegulated: mapValueOfType<int>(json, r'speciallyRegulated'),
        abbreviatedName: SamTextDto.fromJson(json[r'abbreviatedName']),
        prescriptionName: SamTextDto.fromJson(json[r'prescriptionName']),
        note: SamTextDto.fromJson(json[r'note']),
        posologyNote: SamTextDto.fromJson(json[r'posologyNote']),
        noGenericPrescriptionReasons: SamTextDto.listFromJson(json[r'noGenericPrescriptionReasons']),
        exFactoryPrice: mapValueOfType<double>(json, r'exFactoryPrice'),
        reimbursementCode: mapValueOfType<int>(json, r'reimbursementCode'),
        definedDailyDose: QuantityDto.fromJson(json[r'definedDailyDose']),
        officialExFactoryPrice: mapValueOfType<double>(json, r'officialExFactoryPrice'),
        realExFactoryPrice: mapValueOfType<double>(json, r'realExFactoryPrice'),
        pricingInformationDecisionDate: mapValueOfType<int>(json, r'pricingInformationDecisionDate'),
        components: AmppComponentDto.listFromJson(json[r'components']),
        commercializations: CommercializationDto.listFromJson(json[r'commercializations']),
        supplyProblems: SupplyProblemDto.listFromJson(json[r'supplyProblems']),
        dmpps: DmppDto.listFromJson(json[r'dmpps']),
        vaccineIndicationCodes: json[r'vaccineIndicationCodes'] is List
          ? (json[r'vaccineIndicationCodes'] as List).cast<String>()
          : null,
      );
    }
    return null;
  }

  static List<AmppDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AmppDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AmppDto>[];

  static Map<String, AmppDto> mapFromJson(dynamic json) {
    final map = <String, AmppDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AmppDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AmppDto-objects as value to a dart map
  static Map<String, List<AmppDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AmppDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AmppDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class AmppDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AmppDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const AUTHORIZED = AmppDtoStatusEnum._(r'AUTHORIZED');
  static const SUSPENDED = AmppDtoStatusEnum._(r'SUSPENDED');
  static const REVOKED = AmppDtoStatusEnum._(r'REVOKED');

  /// List of all possible values in this [enum][AmppDtoStatusEnum].
  static const values = <AmppDtoStatusEnum>[
    AUTHORIZED,
    SUSPENDED,
    REVOKED,
  ];

  static AmppDtoStatusEnum fromJson(dynamic value) =>
    AmppDtoStatusEnumTypeTransformer().decode(value);

  static List<AmppDtoStatusEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AmppDtoStatusEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AmppDtoStatusEnum>[];
}

/// Transformation class that can [encode] an instance of [AmppDtoStatusEnum] to String,
/// and [decode] dynamic data back to [AmppDtoStatusEnum].
class AmppDtoStatusEnumTypeTransformer {
  factory AmppDtoStatusEnumTypeTransformer() => _instance ??= const AmppDtoStatusEnumTypeTransformer._();

  const AmppDtoStatusEnumTypeTransformer._();

  String encode(AmppDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AmppDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AmppDtoStatusEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'AUTHORIZED': return AmppDtoStatusEnum.AUTHORIZED;
        case r'SUSPENDED': return AmppDtoStatusEnum.SUSPENDED;
        case r'REVOKED': return AmppDtoStatusEnum.REVOKED;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AmppDtoStatusEnumTypeTransformer] instance.
  static AmppDtoStatusEnumTypeTransformer _instance;
}


