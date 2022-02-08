//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StandardSubstanceDto {
  /// Returns a new [StandardSubstanceDto] instance.
  StandardSubstanceDto({
    this.code,
    this.type,
    this.name,
    this.definition,
    this.url,
  });

  String code;

  StandardSubstanceDtoTypeEnum type;

  SamTextDto name;

  SamTextDto definition;

  String url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StandardSubstanceDto &&
     other.code == code &&
     other.type == type &&
     other.name == name &&
     other.definition == definition &&
     other.url == url;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (code == null ? 0 : code.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (definition == null ? 0 : definition.hashCode) +
    (url == null ? 0 : url.hashCode);

  @override
  String toString() => 'StandardSubstanceDto[code=$code, type=$type, name=$name, definition=$definition, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json[r'code'] = code;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (definition != null) {
      json[r'definition'] = definition;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    return json;
  }

  /// Returns a new [StandardSubstanceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StandardSubstanceDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return StandardSubstanceDto(
        code: mapValueOfType<String>(json, r'code'),
        type: StandardSubstanceDtoTypeEnum.fromJson(json[r'type']),
        name: SamTextDto.fromJson(json[r'name']),
        definition: SamTextDto.fromJson(json[r'definition']),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<StandardSubstanceDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(StandardSubstanceDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <StandardSubstanceDto>[];

  static Map<String, StandardSubstanceDto> mapFromJson(dynamic json) {
    final map = <String, StandardSubstanceDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = StandardSubstanceDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of StandardSubstanceDto-objects as value to a dart map
  static Map<String, List<StandardSubstanceDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<StandardSubstanceDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = StandardSubstanceDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class StandardSubstanceDtoTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const StandardSubstanceDtoTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const CAS = StandardSubstanceDtoTypeEnum._(r'CAS');
  static const DM_D = StandardSubstanceDtoTypeEnum._(r'DM_D');
  static const EDQM = StandardSubstanceDtoTypeEnum._(r'EDQM');
  static const SNOMED_CT = StandardSubstanceDtoTypeEnum._(r'SNOMED_CT');

  /// List of all possible values in this [enum][StandardSubstanceDtoTypeEnum].
  static const values = <StandardSubstanceDtoTypeEnum>[
    CAS,
    DM_D,
    EDQM,
    SNOMED_CT,
  ];

  static StandardSubstanceDtoTypeEnum fromJson(dynamic value) =>
    StandardSubstanceDtoTypeEnumTypeTransformer().decode(value);

  static List<StandardSubstanceDtoTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(StandardSubstanceDtoTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <StandardSubstanceDtoTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [StandardSubstanceDtoTypeEnum] to String,
/// and [decode] dynamic data back to [StandardSubstanceDtoTypeEnum].
class StandardSubstanceDtoTypeEnumTypeTransformer {
  factory StandardSubstanceDtoTypeEnumTypeTransformer() => _instance ??= const StandardSubstanceDtoTypeEnumTypeTransformer._();

  const StandardSubstanceDtoTypeEnumTypeTransformer._();

  String encode(StandardSubstanceDtoTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StandardSubstanceDtoTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StandardSubstanceDtoTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'CAS': return StandardSubstanceDtoTypeEnum.CAS;
        case r'DM_D': return StandardSubstanceDtoTypeEnum.DM_D;
        case r'EDQM': return StandardSubstanceDtoTypeEnum.EDQM;
        case r'SNOMED_CT': return StandardSubstanceDtoTypeEnum.SNOMED_CT;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StandardSubstanceDtoTypeEnumTypeTransformer] instance.
  static StandardSubstanceDtoTypeEnumTypeTransformer _instance;
}


