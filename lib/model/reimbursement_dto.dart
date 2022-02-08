//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReimbursementDto {
  /// Returns a new [ReimbursementDto] instance.
  ReimbursementDto({
    this.from,
    this.to,
    this.deliveryEnvironment,
    this.code,
    this.codeType,
    this.multiple,
    this.temporary,
    this.reference,
    this.legalReferencePath,
    this.flatRateSystem,
    this.reimbursementBasePrice,
    this.referenceBasePrice,
    this.copaymentSupplement,
    this.pricingUnit,
    this.pricingSlice,
    this.reimbursementCriterion,
    this.copayments = const [],
  });

  int from;

  int to;

  ReimbursementDtoDeliveryEnvironmentEnum deliveryEnvironment;

  String code;

  ReimbursementDtoCodeTypeEnum codeType;

  ReimbursementDtoMultipleEnum multiple;

  bool temporary;

  bool reference;

  String legalReferencePath;

  bool flatRateSystem;

  num reimbursementBasePrice;

  num referenceBasePrice;

  num copaymentSupplement;

  PricingDto pricingUnit;

  PricingDto pricingSlice;

  ReimbursementCriterionDto reimbursementCriterion;

  List<CopaymentDto> copayments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReimbursementDto &&
     other.from == from &&
     other.to == to &&
     other.deliveryEnvironment == deliveryEnvironment &&
     other.code == code &&
     other.codeType == codeType &&
     other.multiple == multiple &&
     other.temporary == temporary &&
     other.reference == reference &&
     other.legalReferencePath == legalReferencePath &&
     other.flatRateSystem == flatRateSystem &&
     other.reimbursementBasePrice == reimbursementBasePrice &&
     other.referenceBasePrice == referenceBasePrice &&
     other.copaymentSupplement == copaymentSupplement &&
     other.pricingUnit == pricingUnit &&
     other.pricingSlice == pricingSlice &&
     other.reimbursementCriterion == reimbursementCriterion &&
     other.copayments == copayments;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (from == null ? 0 : from.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (deliveryEnvironment == null ? 0 : deliveryEnvironment.hashCode) +
    (code == null ? 0 : code.hashCode) +
    (codeType == null ? 0 : codeType.hashCode) +
    (multiple == null ? 0 : multiple.hashCode) +
    (temporary == null ? 0 : temporary.hashCode) +
    (reference == null ? 0 : reference.hashCode) +
    (legalReferencePath == null ? 0 : legalReferencePath.hashCode) +
    (flatRateSystem == null ? 0 : flatRateSystem.hashCode) +
    (reimbursementBasePrice == null ? 0 : reimbursementBasePrice.hashCode) +
    (referenceBasePrice == null ? 0 : referenceBasePrice.hashCode) +
    (copaymentSupplement == null ? 0 : copaymentSupplement.hashCode) +
    (pricingUnit == null ? 0 : pricingUnit.hashCode) +
    (pricingSlice == null ? 0 : pricingSlice.hashCode) +
    (reimbursementCriterion == null ? 0 : reimbursementCriterion.hashCode) +
    (copayments == null ? 0 : copayments.hashCode);

  @override
  String toString() => 'ReimbursementDto[from=$from, to=$to, deliveryEnvironment=$deliveryEnvironment, code=$code, codeType=$codeType, multiple=$multiple, temporary=$temporary, reference=$reference, legalReferencePath=$legalReferencePath, flatRateSystem=$flatRateSystem, reimbursementBasePrice=$reimbursementBasePrice, referenceBasePrice=$referenceBasePrice, copaymentSupplement=$copaymentSupplement, pricingUnit=$pricingUnit, pricingSlice=$pricingSlice, reimbursementCriterion=$reimbursementCriterion, copayments=$copayments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (from != null) {
      json[r'from'] = from;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (deliveryEnvironment != null) {
      json[r'deliveryEnvironment'] = deliveryEnvironment;
    }
    if (code != null) {
      json[r'code'] = code;
    }
    if (codeType != null) {
      json[r'codeType'] = codeType;
    }
    if (multiple != null) {
      json[r'multiple'] = multiple;
    }
    if (temporary != null) {
      json[r'temporary'] = temporary;
    }
    if (reference != null) {
      json[r'reference'] = reference;
    }
    if (legalReferencePath != null) {
      json[r'legalReferencePath'] = legalReferencePath;
    }
    if (flatRateSystem != null) {
      json[r'flatRateSystem'] = flatRateSystem;
    }
    if (reimbursementBasePrice != null) {
      json[r'reimbursementBasePrice'] = reimbursementBasePrice;
    }
    if (referenceBasePrice != null) {
      json[r'referenceBasePrice'] = referenceBasePrice;
    }
    if (copaymentSupplement != null) {
      json[r'copaymentSupplement'] = copaymentSupplement;
    }
    if (pricingUnit != null) {
      json[r'pricingUnit'] = pricingUnit;
    }
    if (pricingSlice != null) {
      json[r'pricingSlice'] = pricingSlice;
    }
    if (reimbursementCriterion != null) {
      json[r'reimbursementCriterion'] = reimbursementCriterion;
    }
    if (copayments != null) {
      json[r'copayments'] = copayments;
    }
    return json;
  }

  /// Returns a new [ReimbursementDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReimbursementDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ReimbursementDto(
        from: mapValueOfType<int>(json, r'from'),
        to: mapValueOfType<int>(json, r'to'),
        deliveryEnvironment: ReimbursementDtoDeliveryEnvironmentEnum.fromJson(json[r'deliveryEnvironment']),
        code: mapValueOfType<String>(json, r'code'),
        codeType: ReimbursementDtoCodeTypeEnum.fromJson(json[r'codeType']),
        multiple: ReimbursementDtoMultipleEnum.fromJson(json[r'multiple']),
        temporary: mapValueOfType<bool>(json, r'temporary'),
        reference: mapValueOfType<bool>(json, r'reference'),
        legalReferencePath: mapValueOfType<String>(json, r'legalReferencePath'),
        flatRateSystem: mapValueOfType<bool>(json, r'flatRateSystem'),
        reimbursementBasePrice: json[r'reimbursementBasePrice'] == null
          ? null
          : num.parse(json[r'reimbursementBasePrice'].toString()),
        referenceBasePrice: json[r'referenceBasePrice'] == null
          ? null
          : num.parse(json[r'referenceBasePrice'].toString()),
        copaymentSupplement: json[r'copaymentSupplement'] == null
          ? null
          : num.parse(json[r'copaymentSupplement'].toString()),
        pricingUnit: PricingDto.fromJson(json[r'pricingUnit']),
        pricingSlice: PricingDto.fromJson(json[r'pricingSlice']),
        reimbursementCriterion: ReimbursementCriterionDto.fromJson(json[r'reimbursementCriterion']),
        copayments: CopaymentDto.listFromJson(json[r'copayments']),
      );
    }
    return null;
  }

  static List<ReimbursementDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ReimbursementDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ReimbursementDto>[];

  static Map<String, ReimbursementDto> mapFromJson(dynamic json) {
    final map = <String, ReimbursementDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ReimbursementDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ReimbursementDto-objects as value to a dart map
  static Map<String, List<ReimbursementDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ReimbursementDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ReimbursementDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class ReimbursementDtoDeliveryEnvironmentEnum {
  /// Instantiate a new enum with the provided [value].
  const ReimbursementDtoDeliveryEnvironmentEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const P = ReimbursementDtoDeliveryEnvironmentEnum._(r'P');
  static const A = ReimbursementDtoDeliveryEnvironmentEnum._(r'A');
  static const H = ReimbursementDtoDeliveryEnvironmentEnum._(r'H');
  static const R = ReimbursementDtoDeliveryEnvironmentEnum._(r'R');

  /// List of all possible values in this [enum][ReimbursementDtoDeliveryEnvironmentEnum].
  static const values = <ReimbursementDtoDeliveryEnvironmentEnum>[
    P,
    A,
    H,
    R,
  ];

  static ReimbursementDtoDeliveryEnvironmentEnum fromJson(dynamic value) =>
    ReimbursementDtoDeliveryEnvironmentEnumTypeTransformer().decode(value);

  static List<ReimbursementDtoDeliveryEnvironmentEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ReimbursementDtoDeliveryEnvironmentEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ReimbursementDtoDeliveryEnvironmentEnum>[];
}

/// Transformation class that can [encode] an instance of [ReimbursementDtoDeliveryEnvironmentEnum] to String,
/// and [decode] dynamic data back to [ReimbursementDtoDeliveryEnvironmentEnum].
class ReimbursementDtoDeliveryEnvironmentEnumTypeTransformer {
  factory ReimbursementDtoDeliveryEnvironmentEnumTypeTransformer() => _instance ??= const ReimbursementDtoDeliveryEnvironmentEnumTypeTransformer._();

  const ReimbursementDtoDeliveryEnvironmentEnumTypeTransformer._();

  String encode(ReimbursementDtoDeliveryEnvironmentEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ReimbursementDtoDeliveryEnvironmentEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ReimbursementDtoDeliveryEnvironmentEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'P': return ReimbursementDtoDeliveryEnvironmentEnum.P;
        case r'A': return ReimbursementDtoDeliveryEnvironmentEnum.A;
        case r'H': return ReimbursementDtoDeliveryEnvironmentEnum.H;
        case r'R': return ReimbursementDtoDeliveryEnvironmentEnum.R;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ReimbursementDtoDeliveryEnvironmentEnumTypeTransformer] instance.
  static ReimbursementDtoDeliveryEnvironmentEnumTypeTransformer _instance;
}



class ReimbursementDtoCodeTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ReimbursementDtoCodeTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const CNK = ReimbursementDtoCodeTypeEnum._(r'CNK');
  static const PSEUDO = ReimbursementDtoCodeTypeEnum._(r'PSEUDO');

  /// List of all possible values in this [enum][ReimbursementDtoCodeTypeEnum].
  static const values = <ReimbursementDtoCodeTypeEnum>[
    CNK,
    PSEUDO,
  ];

  static ReimbursementDtoCodeTypeEnum fromJson(dynamic value) =>
    ReimbursementDtoCodeTypeEnumTypeTransformer().decode(value);

  static List<ReimbursementDtoCodeTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ReimbursementDtoCodeTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ReimbursementDtoCodeTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [ReimbursementDtoCodeTypeEnum] to String,
/// and [decode] dynamic data back to [ReimbursementDtoCodeTypeEnum].
class ReimbursementDtoCodeTypeEnumTypeTransformer {
  factory ReimbursementDtoCodeTypeEnumTypeTransformer() => _instance ??= const ReimbursementDtoCodeTypeEnumTypeTransformer._();

  const ReimbursementDtoCodeTypeEnumTypeTransformer._();

  String encode(ReimbursementDtoCodeTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ReimbursementDtoCodeTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ReimbursementDtoCodeTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'CNK': return ReimbursementDtoCodeTypeEnum.CNK;
        case r'PSEUDO': return ReimbursementDtoCodeTypeEnum.PSEUDO;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ReimbursementDtoCodeTypeEnumTypeTransformer] instance.
  static ReimbursementDtoCodeTypeEnumTypeTransformer _instance;
}



class ReimbursementDtoMultipleEnum {
  /// Instantiate a new enum with the provided [value].
  const ReimbursementDtoMultipleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const M = ReimbursementDtoMultipleEnum._(r'M');
  static const V = ReimbursementDtoMultipleEnum._(r'V');

  /// List of all possible values in this [enum][ReimbursementDtoMultipleEnum].
  static const values = <ReimbursementDtoMultipleEnum>[
    M,
    V,
  ];

  static ReimbursementDtoMultipleEnum fromJson(dynamic value) =>
    ReimbursementDtoMultipleEnumTypeTransformer().decode(value);

  static List<ReimbursementDtoMultipleEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ReimbursementDtoMultipleEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ReimbursementDtoMultipleEnum>[];
}

/// Transformation class that can [encode] an instance of [ReimbursementDtoMultipleEnum] to String,
/// and [decode] dynamic data back to [ReimbursementDtoMultipleEnum].
class ReimbursementDtoMultipleEnumTypeTransformer {
  factory ReimbursementDtoMultipleEnumTypeTransformer() => _instance ??= const ReimbursementDtoMultipleEnumTypeTransformer._();

  const ReimbursementDtoMultipleEnumTypeTransformer._();

  String encode(ReimbursementDtoMultipleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ReimbursementDtoMultipleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ReimbursementDtoMultipleEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'M': return ReimbursementDtoMultipleEnum.M;
        case r'V': return ReimbursementDtoMultipleEnum.V;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ReimbursementDtoMultipleEnumTypeTransformer] instance.
  static ReimbursementDtoMultipleEnumTypeTransformer _instance;
}


