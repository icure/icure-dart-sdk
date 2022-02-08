//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DmppDto {
  /// Returns a new [DmppDto] instance.
  DmppDto({
    this.id,
    this.from,
    this.to,
    this.deliveryEnvironment,
    this.code,
    this.codeType,
    this.price,
    this.cheap,
    this.cheapest,
    this.reimbursable,
    this.reimbursements = const [],
    this.productId,
  });

  String id;

  int from;

  int to;

  DmppDtoDeliveryEnvironmentEnum deliveryEnvironment;

  String code;

  DmppDtoCodeTypeEnum codeType;

  String price;

  bool cheap;

  bool cheapest;

  bool reimbursable;

  List<ReimbursementDto> reimbursements;

  String productId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DmppDto &&
     other.id == id &&
     other.from == from &&
     other.to == to &&
     other.deliveryEnvironment == deliveryEnvironment &&
     other.code == code &&
     other.codeType == codeType &&
     other.price == price &&
     other.cheap == cheap &&
     other.cheapest == cheapest &&
     other.reimbursable == reimbursable &&
     other.reimbursements == reimbursements &&
     other.productId == productId;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (deliveryEnvironment == null ? 0 : deliveryEnvironment.hashCode) +
    (code == null ? 0 : code.hashCode) +
    (codeType == null ? 0 : codeType.hashCode) +
    (price == null ? 0 : price.hashCode) +
    (cheap == null ? 0 : cheap.hashCode) +
    (cheapest == null ? 0 : cheapest.hashCode) +
    (reimbursable == null ? 0 : reimbursable.hashCode) +
    (reimbursements == null ? 0 : reimbursements.hashCode) +
    (productId == null ? 0 : productId.hashCode);

  @override
  String toString() => 'DmppDto[id=$id, from=$from, to=$to, deliveryEnvironment=$deliveryEnvironment, code=$code, codeType=$codeType, price=$price, cheap=$cheap, cheapest=$cheapest, reimbursable=$reimbursable, reimbursements=$reimbursements, productId=$productId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
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
    if (price != null) {
      json[r'price'] = price;
    }
    if (cheap != null) {
      json[r'cheap'] = cheap;
    }
    if (cheapest != null) {
      json[r'cheapest'] = cheapest;
    }
    if (reimbursable != null) {
      json[r'reimbursable'] = reimbursable;
    }
    if (reimbursements != null) {
      json[r'reimbursements'] = reimbursements;
    }
    if (productId != null) {
      json[r'productId'] = productId;
    }
    return json;
  }

  /// Returns a new [DmppDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DmppDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return DmppDto(
        id: mapValueOfType<String>(json, r'id'),
        from: mapValueOfType<int>(json, r'from'),
        to: mapValueOfType<int>(json, r'to'),
        deliveryEnvironment: DmppDtoDeliveryEnvironmentEnum.fromJson(json[r'deliveryEnvironment']),
        code: mapValueOfType<String>(json, r'code'),
        codeType: DmppDtoCodeTypeEnum.fromJson(json[r'codeType']),
        price: mapValueOfType<String>(json, r'price'),
        cheap: mapValueOfType<bool>(json, r'cheap'),
        cheapest: mapValueOfType<bool>(json, r'cheapest'),
        reimbursable: mapValueOfType<bool>(json, r'reimbursable'),
        reimbursements: ReimbursementDto.listFromJson(json[r'reimbursements']),
        productId: mapValueOfType<String>(json, r'productId'),
      );
    }
    return null;
  }

  static List<DmppDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DmppDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DmppDto>[];

  static Map<String, DmppDto> mapFromJson(dynamic json) {
    final map = <String, DmppDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = DmppDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DmppDto-objects as value to a dart map
  static Map<String, List<DmppDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DmppDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = DmppDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class DmppDtoDeliveryEnvironmentEnum {
  /// Instantiate a new enum with the provided [value].
  const DmppDtoDeliveryEnvironmentEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const P = DmppDtoDeliveryEnvironmentEnum._(r'P');
  static const A = DmppDtoDeliveryEnvironmentEnum._(r'A');
  static const H = DmppDtoDeliveryEnvironmentEnum._(r'H');
  static const R = DmppDtoDeliveryEnvironmentEnum._(r'R');

  /// List of all possible values in this [enum][DmppDtoDeliveryEnvironmentEnum].
  static const values = <DmppDtoDeliveryEnvironmentEnum>[
    P,
    A,
    H,
    R,
  ];

  static DmppDtoDeliveryEnvironmentEnum fromJson(dynamic value) =>
    DmppDtoDeliveryEnvironmentEnumTypeTransformer().decode(value);

  static List<DmppDtoDeliveryEnvironmentEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DmppDtoDeliveryEnvironmentEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DmppDtoDeliveryEnvironmentEnum>[];
}

/// Transformation class that can [encode] an instance of [DmppDtoDeliveryEnvironmentEnum] to String,
/// and [decode] dynamic data back to [DmppDtoDeliveryEnvironmentEnum].
class DmppDtoDeliveryEnvironmentEnumTypeTransformer {
  factory DmppDtoDeliveryEnvironmentEnumTypeTransformer() => _instance ??= const DmppDtoDeliveryEnvironmentEnumTypeTransformer._();

  const DmppDtoDeliveryEnvironmentEnumTypeTransformer._();

  String encode(DmppDtoDeliveryEnvironmentEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DmppDtoDeliveryEnvironmentEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DmppDtoDeliveryEnvironmentEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'P': return DmppDtoDeliveryEnvironmentEnum.P;
        case r'A': return DmppDtoDeliveryEnvironmentEnum.A;
        case r'H': return DmppDtoDeliveryEnvironmentEnum.H;
        case r'R': return DmppDtoDeliveryEnvironmentEnum.R;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DmppDtoDeliveryEnvironmentEnumTypeTransformer] instance.
  static DmppDtoDeliveryEnvironmentEnumTypeTransformer _instance;
}



class DmppDtoCodeTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DmppDtoCodeTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const CNK = DmppDtoCodeTypeEnum._(r'CNK');
  static const PSEUDO = DmppDtoCodeTypeEnum._(r'PSEUDO');

  /// List of all possible values in this [enum][DmppDtoCodeTypeEnum].
  static const values = <DmppDtoCodeTypeEnum>[
    CNK,
    PSEUDO,
  ];

  static DmppDtoCodeTypeEnum fromJson(dynamic value) =>
    DmppDtoCodeTypeEnumTypeTransformer().decode(value);

  static List<DmppDtoCodeTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DmppDtoCodeTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DmppDtoCodeTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [DmppDtoCodeTypeEnum] to String,
/// and [decode] dynamic data back to [DmppDtoCodeTypeEnum].
class DmppDtoCodeTypeEnumTypeTransformer {
  factory DmppDtoCodeTypeEnumTypeTransformer() => _instance ??= const DmppDtoCodeTypeEnumTypeTransformer._();

  const DmppDtoCodeTypeEnumTypeTransformer._();

  String encode(DmppDtoCodeTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DmppDtoCodeTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DmppDtoCodeTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'CNK': return DmppDtoCodeTypeEnum.CNK;
        case r'PSEUDO': return DmppDtoCodeTypeEnum.PSEUDO;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DmppDtoCodeTypeEnumTypeTransformer] instance.
  static DmppDtoCodeTypeEnumTypeTransformer _instance;
}


