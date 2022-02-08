//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FlatRateTarificationDto {
  /// Returns a new [FlatRateTarificationDto] instance.
  FlatRateTarificationDto({
    this.code,
    this.flatRateType,
    this.label = const {},
    this.valorisations = const [],
    this.encryptedSelf,
  });

  String code;

  FlatRateTarificationDtoFlatRateTypeEnum flatRateType;

  Map<String, String> label;

  List<ValorisationDto> valorisations;

  /// The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
  String encryptedSelf;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FlatRateTarificationDto &&
     other.code == code &&
     other.flatRateType == flatRateType &&
     other.label == label &&
     other.valorisations == valorisations &&
     other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (code == null ? 0 : code.hashCode) +
    (flatRateType == null ? 0 : flatRateType.hashCode) +
    (label == null ? 0 : label.hashCode) +
    (valorisations == null ? 0 : valorisations.hashCode) +
    (encryptedSelf == null ? 0 : encryptedSelf.hashCode);

  @override
  String toString() => 'FlatRateTarificationDto[code=$code, flatRateType=$flatRateType, label=$label, valorisations=$valorisations, encryptedSelf=$encryptedSelf]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json[r'code'] = code;
    }
    if (flatRateType != null) {
      json[r'flatRateType'] = flatRateType;
    }
    if (label != null) {
      json[r'label'] = label;
    }
      json[r'valorisations'] = valorisations;
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [FlatRateTarificationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FlatRateTarificationDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FlatRateTarificationDto(
        code: mapValueOfType<String>(json, r'code'),
        flatRateType: FlatRateTarificationDtoFlatRateTypeEnum.fromJson(json[r'flatRateType']),
        label: mapCastOfType<String, String>(json, r'label'),
        valorisations: ValorisationDto.listFromJson(json[r'valorisations']),
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<FlatRateTarificationDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FlatRateTarificationDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FlatRateTarificationDto>[];

  static Map<String, FlatRateTarificationDto> mapFromJson(dynamic json) {
    final map = <String, FlatRateTarificationDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FlatRateTarificationDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FlatRateTarificationDto-objects as value to a dart map
  static Map<String, List<FlatRateTarificationDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FlatRateTarificationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FlatRateTarificationDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class FlatRateTarificationDtoFlatRateTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const FlatRateTarificationDtoFlatRateTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const physician = FlatRateTarificationDtoFlatRateTypeEnum._(r'physician');
  static const physiotherapist = FlatRateTarificationDtoFlatRateTypeEnum._(r'physiotherapist');
  static const nurse = FlatRateTarificationDtoFlatRateTypeEnum._(r'nurse');
  static const ptd = FlatRateTarificationDtoFlatRateTypeEnum._(r'ptd');

  /// List of all possible values in this [enum][FlatRateTarificationDtoFlatRateTypeEnum].
  static const values = <FlatRateTarificationDtoFlatRateTypeEnum>[
    physician,
    physiotherapist,
    nurse,
    ptd,
  ];

  static FlatRateTarificationDtoFlatRateTypeEnum fromJson(dynamic value) =>
    FlatRateTarificationDtoFlatRateTypeEnumTypeTransformer().decode(value);

  static List<FlatRateTarificationDtoFlatRateTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FlatRateTarificationDtoFlatRateTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FlatRateTarificationDtoFlatRateTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [FlatRateTarificationDtoFlatRateTypeEnum] to String,
/// and [decode] dynamic data back to [FlatRateTarificationDtoFlatRateTypeEnum].
class FlatRateTarificationDtoFlatRateTypeEnumTypeTransformer {
  factory FlatRateTarificationDtoFlatRateTypeEnumTypeTransformer() => _instance ??= const FlatRateTarificationDtoFlatRateTypeEnumTypeTransformer._();

  const FlatRateTarificationDtoFlatRateTypeEnumTypeTransformer._();

  String encode(FlatRateTarificationDtoFlatRateTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FlatRateTarificationDtoFlatRateTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FlatRateTarificationDtoFlatRateTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'physician': return FlatRateTarificationDtoFlatRateTypeEnum.physician;
        case r'physiotherapist': return FlatRateTarificationDtoFlatRateTypeEnum.physiotherapist;
        case r'nurse': return FlatRateTarificationDtoFlatRateTypeEnum.nurse;
        case r'ptd': return FlatRateTarificationDtoFlatRateTypeEnum.ptd;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FlatRateTarificationDtoFlatRateTypeEnumTypeTransformer] instance.
  static FlatRateTarificationDtoFlatRateTypeEnumTypeTransformer _instance;
}


