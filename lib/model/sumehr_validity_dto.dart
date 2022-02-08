//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SumehrValidityDto {
  /// Returns a new [SumehrValidityDto] instance.
  SumehrValidityDto({
    @required this.sumehrValid,
  });

  SumehrValidityDtoSumehrValidEnum sumehrValid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SumehrValidityDto &&
     other.sumehrValid == sumehrValid;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (sumehrValid == null ? 0 : sumehrValid.hashCode);

  @override
  String toString() => 'SumehrValidityDto[sumehrValid=$sumehrValid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'sumehrValid'] = sumehrValid;
    return json;
  }

  /// Returns a new [SumehrValidityDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SumehrValidityDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SumehrValidityDto(
        sumehrValid: SumehrValidityDtoSumehrValidEnum.fromJson(json[r'sumehrValid']),
      );
    }
    return null;
  }

  static List<SumehrValidityDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SumehrValidityDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SumehrValidityDto>[];

  static Map<String, SumehrValidityDto> mapFromJson(dynamic json) {
    final map = <String, SumehrValidityDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SumehrValidityDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SumehrValidityDto-objects as value to a dart map
  static Map<String, List<SumehrValidityDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SumehrValidityDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SumehrValidityDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class SumehrValidityDtoSumehrValidEnum {
  /// Instantiate a new enum with the provided [value].
  const SumehrValidityDtoSumehrValidEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const absent = SumehrValidityDtoSumehrValidEnum._(r'absent');
  static const uptodate = SumehrValidityDtoSumehrValidEnum._(r'uptodate');
  static const outdated = SumehrValidityDtoSumehrValidEnum._(r'outdated');

  /// List of all possible values in this [enum][SumehrValidityDtoSumehrValidEnum].
  static const values = <SumehrValidityDtoSumehrValidEnum>[
    absent,
    uptodate,
    outdated,
  ];

  static SumehrValidityDtoSumehrValidEnum fromJson(dynamic value) =>
    SumehrValidityDtoSumehrValidEnumTypeTransformer().decode(value);

  static List<SumehrValidityDtoSumehrValidEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SumehrValidityDtoSumehrValidEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SumehrValidityDtoSumehrValidEnum>[];
}

/// Transformation class that can [encode] an instance of [SumehrValidityDtoSumehrValidEnum] to String,
/// and [decode] dynamic data back to [SumehrValidityDtoSumehrValidEnum].
class SumehrValidityDtoSumehrValidEnumTypeTransformer {
  factory SumehrValidityDtoSumehrValidEnumTypeTransformer() => _instance ??= const SumehrValidityDtoSumehrValidEnumTypeTransformer._();

  const SumehrValidityDtoSumehrValidEnumTypeTransformer._();

  String encode(SumehrValidityDtoSumehrValidEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SumehrValidityDtoSumehrValidEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SumehrValidityDtoSumehrValidEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'absent': return SumehrValidityDtoSumehrValidEnum.absent;
        case r'uptodate': return SumehrValidityDtoSumehrValidEnum.uptodate;
        case r'outdated': return SumehrValidityDtoSumehrValidEnum.outdated;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SumehrValidityDtoSumehrValidEnumTypeTransformer] instance.
  static SumehrValidityDtoSumehrValidEnumTypeTransformer _instance;
}


