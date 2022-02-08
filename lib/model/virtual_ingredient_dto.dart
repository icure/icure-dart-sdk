//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VirtualIngredientDto {
  /// Returns a new [VirtualIngredientDto] instance.
  VirtualIngredientDto({
    this.from,
    this.to,
    this.rank,
    this.type,
    this.strengthRange,
    this.substance,
  });

  int from;

  int to;

  int rank;

  VirtualIngredientDtoTypeEnum type;

  StrengthRangeDto strengthRange;

  SubstanceStubDto substance;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VirtualIngredientDto &&
     other.from == from &&
     other.to == to &&
     other.rank == rank &&
     other.type == type &&
     other.strengthRange == strengthRange &&
     other.substance == substance;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (from == null ? 0 : from.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (rank == null ? 0 : rank.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (strengthRange == null ? 0 : strengthRange.hashCode) +
    (substance == null ? 0 : substance.hashCode);

  @override
  String toString() => 'VirtualIngredientDto[from=$from, to=$to, rank=$rank, type=$type, strengthRange=$strengthRange, substance=$substance]';

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
    if (strengthRange != null) {
      json[r'strengthRange'] = strengthRange;
    }
    if (substance != null) {
      json[r'substance'] = substance;
    }
    return json;
  }

  /// Returns a new [VirtualIngredientDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VirtualIngredientDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return VirtualIngredientDto(
        from: mapValueOfType<int>(json, r'from'),
        to: mapValueOfType<int>(json, r'to'),
        rank: mapValueOfType<int>(json, r'rank'),
        type: VirtualIngredientDtoTypeEnum.fromJson(json[r'type']),
        strengthRange: StrengthRangeDto.fromJson(json[r'strengthRange']),
        substance: SubstanceStubDto.fromJson(json[r'substance']),
      );
    }
    return null;
  }

  static List<VirtualIngredientDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(VirtualIngredientDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <VirtualIngredientDto>[];

  static Map<String, VirtualIngredientDto> mapFromJson(dynamic json) {
    final map = <String, VirtualIngredientDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = VirtualIngredientDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of VirtualIngredientDto-objects as value to a dart map
  static Map<String, List<VirtualIngredientDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<VirtualIngredientDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = VirtualIngredientDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class VirtualIngredientDtoTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const VirtualIngredientDtoTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const ACTIVE_SUBSTANCE = VirtualIngredientDtoTypeEnum._(r'ACTIVE_SUBSTANCE');
  static const EXCIPIENT = VirtualIngredientDtoTypeEnum._(r'EXCIPIENT');

  /// List of all possible values in this [enum][VirtualIngredientDtoTypeEnum].
  static const values = <VirtualIngredientDtoTypeEnum>[
    ACTIVE_SUBSTANCE,
    EXCIPIENT,
  ];

  static VirtualIngredientDtoTypeEnum fromJson(dynamic value) =>
    VirtualIngredientDtoTypeEnumTypeTransformer().decode(value);

  static List<VirtualIngredientDtoTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(VirtualIngredientDtoTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <VirtualIngredientDtoTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [VirtualIngredientDtoTypeEnum] to String,
/// and [decode] dynamic data back to [VirtualIngredientDtoTypeEnum].
class VirtualIngredientDtoTypeEnumTypeTransformer {
  factory VirtualIngredientDtoTypeEnumTypeTransformer() => _instance ??= const VirtualIngredientDtoTypeEnumTypeTransformer._();

  const VirtualIngredientDtoTypeEnumTypeTransformer._();

  String encode(VirtualIngredientDtoTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a VirtualIngredientDtoTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VirtualIngredientDtoTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'ACTIVE_SUBSTANCE': return VirtualIngredientDtoTypeEnum.ACTIVE_SUBSTANCE;
        case r'EXCIPIENT': return VirtualIngredientDtoTypeEnum.EXCIPIENT;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VirtualIngredientDtoTypeEnumTypeTransformer] instance.
  static VirtualIngredientDtoTypeEnumTypeTransformer _instance;
}


