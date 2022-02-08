//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IngredientDto {
  /// Returns a new [IngredientDto] instance.
  IngredientDto({
    this.from,
    this.to,
    this.rank,
    this.type,
    this.knownEffect,
    this.strengthDescription,
    this.strength,
    this.additionalInformation,
    this.substance,
  });

  int from;

  int to;

  int rank;

  IngredientDtoTypeEnum type;

  bool knownEffect;

  String strengthDescription;

  QuantityDto strength;

  String additionalInformation;

  SubstanceStubDto substance;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IngredientDto &&
     other.from == from &&
     other.to == to &&
     other.rank == rank &&
     other.type == type &&
     other.knownEffect == knownEffect &&
     other.strengthDescription == strengthDescription &&
     other.strength == strength &&
     other.additionalInformation == additionalInformation &&
     other.substance == substance;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (from == null ? 0 : from.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (rank == null ? 0 : rank.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (knownEffect == null ? 0 : knownEffect.hashCode) +
    (strengthDescription == null ? 0 : strengthDescription.hashCode) +
    (strength == null ? 0 : strength.hashCode) +
    (additionalInformation == null ? 0 : additionalInformation.hashCode) +
    (substance == null ? 0 : substance.hashCode);

  @override
  String toString() => 'IngredientDto[from=$from, to=$to, rank=$rank, type=$type, knownEffect=$knownEffect, strengthDescription=$strengthDescription, strength=$strength, additionalInformation=$additionalInformation, substance=$substance]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (from != null) {
      json[r'from'] = from;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (rank != null) {
      json[r'rank'] = rank;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (knownEffect != null) {
      json[r'knownEffect'] = knownEffect;
    }
    if (strengthDescription != null) {
      json[r'strengthDescription'] = strengthDescription;
    }
    if (strength != null) {
      json[r'strength'] = strength;
    }
    if (additionalInformation != null) {
      json[r'additionalInformation'] = additionalInformation;
    }
    if (substance != null) {
      json[r'substance'] = substance;
    }
    return json;
  }

  /// Returns a new [IngredientDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IngredientDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return IngredientDto(
        from: mapValueOfType<int>(json, r'from'),
        to: mapValueOfType<int>(json, r'to'),
        rank: mapValueOfType<int>(json, r'rank'),
        type: IngredientDtoTypeEnum.fromJson(json[r'type']),
        knownEffect: mapValueOfType<bool>(json, r'knownEffect'),
        strengthDescription: mapValueOfType<String>(json, r'strengthDescription'),
        strength: QuantityDto.fromJson(json[r'strength']),
        additionalInformation: mapValueOfType<String>(json, r'additionalInformation'),
        substance: SubstanceStubDto.fromJson(json[r'substance']),
      );
    }
    return null;
  }

  static List<IngredientDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(IngredientDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <IngredientDto>[];

  static Map<String, IngredientDto> mapFromJson(dynamic json) {
    final map = <String, IngredientDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = IngredientDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of IngredientDto-objects as value to a dart map
  static Map<String, List<IngredientDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<IngredientDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = IngredientDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class IngredientDtoTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const IngredientDtoTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const ACTIVE_SUBSTANCE = IngredientDtoTypeEnum._(r'ACTIVE_SUBSTANCE');
  static const EXCIPIENT = IngredientDtoTypeEnum._(r'EXCIPIENT');

  /// List of all possible values in this [enum][IngredientDtoTypeEnum].
  static const values = <IngredientDtoTypeEnum>[
    ACTIVE_SUBSTANCE,
    EXCIPIENT,
  ];

  static IngredientDtoTypeEnum fromJson(dynamic value) =>
    IngredientDtoTypeEnumTypeTransformer().decode(value);

  static List<IngredientDtoTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(IngredientDtoTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <IngredientDtoTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [IngredientDtoTypeEnum] to String,
/// and [decode] dynamic data back to [IngredientDtoTypeEnum].
class IngredientDtoTypeEnumTypeTransformer {
  factory IngredientDtoTypeEnumTypeTransformer() => _instance ??= const IngredientDtoTypeEnumTypeTransformer._();

  const IngredientDtoTypeEnumTypeTransformer._();

  String encode(IngredientDtoTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a IngredientDtoTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  IngredientDtoTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'ACTIVE_SUBSTANCE': return IngredientDtoTypeEnum.ACTIVE_SUBSTANCE;
        case r'EXCIPIENT': return IngredientDtoTypeEnum.EXCIPIENT;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [IngredientDtoTypeEnumTypeTransformer] instance.
  static IngredientDtoTypeEnumTypeTransformer _instance;
}


