//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class PaymentDto {
  /// Returns a new [PaymentDto] instance.
  PaymentDto({
    this.paymentDate = 0,
    this.paymentType,
    this.paid,
  });

  int paymentDate;

  PaymentDtoPaymentTypeEnum? paymentType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? paid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaymentDto &&
     other.paymentDate == paymentDate &&
     other.paymentType == paymentType &&
     other.paid == paid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (paymentDate.hashCode) +
    (paymentType == null ? 0 : paymentType!.hashCode) +
    (paid == null ? 0 : paid!.hashCode);

  @override
  String toString() => 'PaymentDto[paymentDate=$paymentDate, paymentType=$paymentType, paid=$paid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'paymentDate'] = paymentDate;
    if (paymentType != null) {
      json[r'paymentType'] = paymentType;
    }
    if (paid != null) {
      json[r'paid'] = paid;
    }
    return json;
  }

  /// Returns a new [PaymentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaymentDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaymentDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaymentDto(
        paymentDate: mapValueOfType<int>(json, r'paymentDate')!,
        paymentType: PaymentDtoPaymentTypeEnum.fromJson(json[r'paymentType']),
        paid: mapValueOfType<double>(json, r'paid'),
      );
    }
    return null;
  }

  static List<PaymentDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaymentDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentDto> mapFromJson(dynamic json) {
    final map = <String, PaymentDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentDto-objects as value to a dart map
  static Map<String, List<PaymentDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaymentDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'paymentDate',
  };
}


class PaymentDtoPaymentTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PaymentDtoPaymentTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const cash = PaymentDtoPaymentTypeEnum._(r'cash');
  static const wired = PaymentDtoPaymentTypeEnum._(r'wired');
  static const insurance = PaymentDtoPaymentTypeEnum._(r'insurance');
  static const creditcard = PaymentDtoPaymentTypeEnum._(r'creditcard');
  static const debitcard = PaymentDtoPaymentTypeEnum._(r'debitcard');
  static const paypal = PaymentDtoPaymentTypeEnum._(r'paypal');
  static const bitcoin = PaymentDtoPaymentTypeEnum._(r'bitcoin');
  static const other = PaymentDtoPaymentTypeEnum._(r'other');

  /// List of all possible values in this [enum][PaymentDtoPaymentTypeEnum].
  static const values = <PaymentDtoPaymentTypeEnum>[
    cash,
    wired,
    insurance,
    creditcard,
    debitcard,
    paypal,
    bitcoin,
    other,
  ];

  static PaymentDtoPaymentTypeEnum? fromJson(dynamic value) => PaymentDtoPaymentTypeEnumTypeTransformer().decode(value);

  static List<PaymentDtoPaymentTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaymentDtoPaymentTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentDtoPaymentTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PaymentDtoPaymentTypeEnum] to String,
/// and [decode] dynamic data back to [PaymentDtoPaymentTypeEnum].
class PaymentDtoPaymentTypeEnumTypeTransformer {
  factory PaymentDtoPaymentTypeEnumTypeTransformer() => _instance ??= const PaymentDtoPaymentTypeEnumTypeTransformer._();

  const PaymentDtoPaymentTypeEnumTypeTransformer._();

  String encode(PaymentDtoPaymentTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PaymentDtoPaymentTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PaymentDtoPaymentTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'cash': return PaymentDtoPaymentTypeEnum.cash;
        case r'wired': return PaymentDtoPaymentTypeEnum.wired;
        case r'insurance': return PaymentDtoPaymentTypeEnum.insurance;
        case r'creditcard': return PaymentDtoPaymentTypeEnum.creditcard;
        case r'debitcard': return PaymentDtoPaymentTypeEnum.debitcard;
        case r'paypal': return PaymentDtoPaymentTypeEnum.paypal;
        case r'bitcoin': return PaymentDtoPaymentTypeEnum.bitcoin;
        case r'other': return PaymentDtoPaymentTypeEnum.other;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PaymentDtoPaymentTypeEnumTypeTransformer] instance.
  static PaymentDtoPaymentTypeEnumTypeTransformer? _instance;
}


