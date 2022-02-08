//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CareTeamMembershipDto {
  /// Returns a new [CareTeamMembershipDto] instance.
  CareTeamMembershipDto({
    this.startDate,
    this.endDate,
    this.careTeamMemberId,
    this.membershipType,
    this.encryptedSelf,
  });

  int startDate;

  int endDate;

  String careTeamMemberId;

  CareTeamMembershipDtoMembershipTypeEnum membershipType;

  /// The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
  String encryptedSelf;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CareTeamMembershipDto &&
     other.startDate == startDate &&
     other.endDate == endDate &&
     other.careTeamMemberId == careTeamMemberId &&
     other.membershipType == membershipType &&
     other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (startDate == null ? 0 : startDate.hashCode) +
    (endDate == null ? 0 : endDate.hashCode) +
    (careTeamMemberId == null ? 0 : careTeamMemberId.hashCode) +
    (membershipType == null ? 0 : membershipType.hashCode) +
    (encryptedSelf == null ? 0 : encryptedSelf.hashCode);

  @override
  String toString() => 'CareTeamMembershipDto[startDate=$startDate, endDate=$endDate, careTeamMemberId=$careTeamMemberId, membershipType=$membershipType, encryptedSelf=$encryptedSelf]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (startDate != null) {
      json[r'startDate'] = startDate;
    }
    if (endDate != null) {
      json[r'endDate'] = endDate;
    }
    if (careTeamMemberId != null) {
      json[r'careTeamMemberId'] = careTeamMemberId;
    }
    if (membershipType != null) {
      json[r'membershipType'] = membershipType;
    }
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [CareTeamMembershipDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CareTeamMembershipDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CareTeamMembershipDto(
        startDate: mapValueOfType<int>(json, r'startDate'),
        endDate: mapValueOfType<int>(json, r'endDate'),
        careTeamMemberId: mapValueOfType<String>(json, r'careTeamMemberId'),
        membershipType: CareTeamMembershipDtoMembershipTypeEnum.fromJson(json[r'membershipType']),
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<CareTeamMembershipDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CareTeamMembershipDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CareTeamMembershipDto>[];

  static Map<String, CareTeamMembershipDto> mapFromJson(dynamic json) {
    final map = <String, CareTeamMembershipDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CareTeamMembershipDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CareTeamMembershipDto-objects as value to a dart map
  static Map<String, List<CareTeamMembershipDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CareTeamMembershipDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CareTeamMembershipDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class CareTeamMembershipDtoMembershipTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CareTeamMembershipDtoMembershipTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const doctor = CareTeamMembershipDtoMembershipTypeEnum._(r'doctor');
  static const mutuality = CareTeamMembershipDtoMembershipTypeEnum._(r'mutuality');
  static const patient = CareTeamMembershipDtoMembershipTypeEnum._(r'patient');
  static const specialist = CareTeamMembershipDtoMembershipTypeEnum._(r'specialist');
  static const other = CareTeamMembershipDtoMembershipTypeEnum._(r'other');

  /// List of all possible values in this [enum][CareTeamMembershipDtoMembershipTypeEnum].
  static const values = <CareTeamMembershipDtoMembershipTypeEnum>[
    doctor,
    mutuality,
    patient,
    specialist,
    other,
  ];

  static CareTeamMembershipDtoMembershipTypeEnum fromJson(dynamic value) =>
    CareTeamMembershipDtoMembershipTypeEnumTypeTransformer().decode(value);

  static List<CareTeamMembershipDtoMembershipTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CareTeamMembershipDtoMembershipTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CareTeamMembershipDtoMembershipTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [CareTeamMembershipDtoMembershipTypeEnum] to String,
/// and [decode] dynamic data back to [CareTeamMembershipDtoMembershipTypeEnum].
class CareTeamMembershipDtoMembershipTypeEnumTypeTransformer {
  factory CareTeamMembershipDtoMembershipTypeEnumTypeTransformer() => _instance ??= const CareTeamMembershipDtoMembershipTypeEnumTypeTransformer._();

  const CareTeamMembershipDtoMembershipTypeEnumTypeTransformer._();

  String encode(CareTeamMembershipDtoMembershipTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CareTeamMembershipDtoMembershipTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CareTeamMembershipDtoMembershipTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'doctor': return CareTeamMembershipDtoMembershipTypeEnum.doctor;
        case r'mutuality': return CareTeamMembershipDtoMembershipTypeEnum.mutuality;
        case r'patient': return CareTeamMembershipDtoMembershipTypeEnum.patient;
        case r'specialist': return CareTeamMembershipDtoMembershipTypeEnum.specialist;
        case r'other': return CareTeamMembershipDtoMembershipTypeEnum.other;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CareTeamMembershipDtoMembershipTypeEnumTypeTransformer] instance.
  static CareTeamMembershipDtoMembershipTypeEnumTypeTransformer _instance;
}


