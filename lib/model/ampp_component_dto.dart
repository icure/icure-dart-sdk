//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AmppComponentDto {
  /// Returns a new [AmppComponentDto] instance.
  AmppComponentDto({
    this.from,
    this.to,
    this.contentType,
    this.contentMultiplier,
    this.packSpecification,
    this.deviceType,
    this.packagingType,
  });

  int from;

  int to;

  AmppComponentDtoContentTypeEnum contentType;

  int contentMultiplier;

  String packSpecification;

  DeviceTypeDto deviceType;

  PackagingTypeDto packagingType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AmppComponentDto &&
     other.from == from &&
     other.to == to &&
     other.contentType == contentType &&
     other.contentMultiplier == contentMultiplier &&
     other.packSpecification == packSpecification &&
     other.deviceType == deviceType &&
     other.packagingType == packagingType;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (from == null ? 0 : from.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (contentType == null ? 0 : contentType.hashCode) +
    (contentMultiplier == null ? 0 : contentMultiplier.hashCode) +
    (packSpecification == null ? 0 : packSpecification.hashCode) +
    (deviceType == null ? 0 : deviceType.hashCode) +
    (packagingType == null ? 0 : packagingType.hashCode);

  @override
  String toString() => 'AmppComponentDto[from=$from, to=$to, contentType=$contentType, contentMultiplier=$contentMultiplier, packSpecification=$packSpecification, deviceType=$deviceType, packagingType=$packagingType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (from != null) {
      json[r'from'] = from;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (contentType != null) {
      json[r'contentType'] = contentType;
    }
    if (contentMultiplier != null) {
      json[r'contentMultiplier'] = contentMultiplier;
    }
    if (packSpecification != null) {
      json[r'packSpecification'] = packSpecification;
    }
    if (deviceType != null) {
      json[r'deviceType'] = deviceType;
    }
    if (packagingType != null) {
      json[r'packagingType'] = packagingType;
    }
    return json;
  }

  /// Returns a new [AmppComponentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AmppComponentDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AmppComponentDto(
        from: mapValueOfType<int>(json, r'from'),
        to: mapValueOfType<int>(json, r'to'),
        contentType: AmppComponentDtoContentTypeEnum.fromJson(json[r'contentType']),
        contentMultiplier: mapValueOfType<int>(json, r'contentMultiplier'),
        packSpecification: mapValueOfType<String>(json, r'packSpecification'),
        deviceType: DeviceTypeDto.fromJson(json[r'deviceType']),
        packagingType: PackagingTypeDto.fromJson(json[r'packagingType']),
      );
    }
    return null;
  }

  static List<AmppComponentDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AmppComponentDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AmppComponentDto>[];

  static Map<String, AmppComponentDto> mapFromJson(dynamic json) {
    final map = <String, AmppComponentDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AmppComponentDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AmppComponentDto-objects as value to a dart map
  static Map<String, List<AmppComponentDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AmppComponentDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AmppComponentDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class AmppComponentDtoContentTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AmppComponentDtoContentTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const ACTIVE_COMPONENT = AmppComponentDtoContentTypeEnum._(r'ACTIVE_COMPONENT');
  static const SOLVENT = AmppComponentDtoContentTypeEnum._(r'SOLVENT');
  static const DEVICE = AmppComponentDtoContentTypeEnum._(r'DEVICE');
  static const EXCIPIENT = AmppComponentDtoContentTypeEnum._(r'EXCIPIENT');

  /// List of all possible values in this [enum][AmppComponentDtoContentTypeEnum].
  static const values = <AmppComponentDtoContentTypeEnum>[
    ACTIVE_COMPONENT,
    SOLVENT,
    DEVICE,
    EXCIPIENT,
  ];

  static AmppComponentDtoContentTypeEnum fromJson(dynamic value) =>
    AmppComponentDtoContentTypeEnumTypeTransformer().decode(value);

  static List<AmppComponentDtoContentTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AmppComponentDtoContentTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AmppComponentDtoContentTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [AmppComponentDtoContentTypeEnum] to String,
/// and [decode] dynamic data back to [AmppComponentDtoContentTypeEnum].
class AmppComponentDtoContentTypeEnumTypeTransformer {
  factory AmppComponentDtoContentTypeEnumTypeTransformer() => _instance ??= const AmppComponentDtoContentTypeEnumTypeTransformer._();

  const AmppComponentDtoContentTypeEnumTypeTransformer._();

  String encode(AmppComponentDtoContentTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AmppComponentDtoContentTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AmppComponentDtoContentTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'ACTIVE_COMPONENT': return AmppComponentDtoContentTypeEnum.ACTIVE_COMPONENT;
        case r'SOLVENT': return AmppComponentDtoContentTypeEnum.SOLVENT;
        case r'DEVICE': return AmppComponentDtoContentTypeEnum.DEVICE;
        case r'EXCIPIENT': return AmppComponentDtoContentTypeEnum.EXCIPIENT;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AmppComponentDtoContentTypeEnumTypeTransformer] instance.
  static AmppComponentDtoContentTypeEnumTypeTransformer _instance;
}


