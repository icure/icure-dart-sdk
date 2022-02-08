//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CareTeamMemberDto {
  /// Returns a new [CareTeamMemberDto] instance.
  CareTeamMemberDto({
    @required this.id,
    this.careTeamMemberType,
    this.healthcarePartyId,
    this.quality,
    this.encryptedSelf,
  });

  String id;

  CareTeamMemberDtoCareTeamMemberTypeEnum careTeamMemberType;

  String healthcarePartyId;

  CodeStubDto quality;

  /// The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
  String encryptedSelf;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CareTeamMemberDto &&
     other.id == id &&
     other.careTeamMemberType == careTeamMemberType &&
     other.healthcarePartyId == healthcarePartyId &&
     other.quality == quality &&
     other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (careTeamMemberType == null ? 0 : careTeamMemberType.hashCode) +
    (healthcarePartyId == null ? 0 : healthcarePartyId.hashCode) +
    (quality == null ? 0 : quality.hashCode) +
    (encryptedSelf == null ? 0 : encryptedSelf.hashCode);

  @override
  String toString() => 'CareTeamMemberDto[id=$id, careTeamMemberType=$careTeamMemberType, healthcarePartyId=$healthcarePartyId, quality=$quality, encryptedSelf=$encryptedSelf]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (careTeamMemberType != null) {
      json[r'careTeamMemberType'] = careTeamMemberType;
    }
    if (healthcarePartyId != null) {
      json[r'healthcarePartyId'] = healthcarePartyId;
    }
    if (quality != null) {
      json[r'quality'] = quality;
    }
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [CareTeamMemberDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CareTeamMemberDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CareTeamMemberDto(
        id: mapValueOfType<String>(json, r'id'),
        careTeamMemberType: CareTeamMemberDtoCareTeamMemberTypeEnum.fromJson(json[r'careTeamMemberType']),
        healthcarePartyId: mapValueOfType<String>(json, r'healthcarePartyId'),
        quality: CodeStubDto.fromJson(json[r'quality']),
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<CareTeamMemberDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CareTeamMemberDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CareTeamMemberDto>[];

  static Map<String, CareTeamMemberDto> mapFromJson(dynamic json) {
    final map = <String, CareTeamMemberDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CareTeamMemberDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CareTeamMemberDto-objects as value to a dart map
  static Map<String, List<CareTeamMemberDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CareTeamMemberDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CareTeamMemberDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class CareTeamMemberDtoCareTeamMemberTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CareTeamMemberDtoCareTeamMemberTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const physician = CareTeamMemberDtoCareTeamMemberTypeEnum._(r'physician');
  static const specialist = CareTeamMemberDtoCareTeamMemberTypeEnum._(r'specialist');
  static const other = CareTeamMemberDtoCareTeamMemberTypeEnum._(r'other');

  /// List of all possible values in this [enum][CareTeamMemberDtoCareTeamMemberTypeEnum].
  static const values = <CareTeamMemberDtoCareTeamMemberTypeEnum>[
    physician,
    specialist,
    other,
  ];

  static CareTeamMemberDtoCareTeamMemberTypeEnum fromJson(dynamic value) =>
    CareTeamMemberDtoCareTeamMemberTypeEnumTypeTransformer().decode(value);

  static List<CareTeamMemberDtoCareTeamMemberTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CareTeamMemberDtoCareTeamMemberTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CareTeamMemberDtoCareTeamMemberTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [CareTeamMemberDtoCareTeamMemberTypeEnum] to String,
/// and [decode] dynamic data back to [CareTeamMemberDtoCareTeamMemberTypeEnum].
class CareTeamMemberDtoCareTeamMemberTypeEnumTypeTransformer {
  factory CareTeamMemberDtoCareTeamMemberTypeEnumTypeTransformer() => _instance ??= const CareTeamMemberDtoCareTeamMemberTypeEnumTypeTransformer._();

  const CareTeamMemberDtoCareTeamMemberTypeEnumTypeTransformer._();

  String encode(CareTeamMemberDtoCareTeamMemberTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CareTeamMemberDtoCareTeamMemberTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CareTeamMemberDtoCareTeamMemberTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'physician': return CareTeamMemberDtoCareTeamMemberTypeEnum.physician;
        case r'specialist': return CareTeamMemberDtoCareTeamMemberTypeEnum.specialist;
        case r'other': return CareTeamMemberDtoCareTeamMemberTypeEnum.other;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CareTeamMemberDtoCareTeamMemberTypeEnumTypeTransformer] instance.
  static CareTeamMemberDtoCareTeamMemberTypeEnumTypeTransformer _instance;
}


