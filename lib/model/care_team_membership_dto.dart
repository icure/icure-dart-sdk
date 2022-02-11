//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class CareTeamMembershipDto {
  /// Returns a new [CareTeamMembershipDto] instance.
  CareTeamMembershipDto({
    this.startDate,
    this.endDate,
    this.careTeamMemberId,
    this.membershipType,
    this.encryptedSelf,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? careTeamMemberId;

  CareTeamMembershipDtoMembershipTypeEnum? membershipType;

  /// The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? encryptedSelf;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CareTeamMembershipDto &&
          other.startDate == startDate &&
          other.endDate == endDate &&
          other.careTeamMemberId == careTeamMemberId &&
          other.membershipType == membershipType &&
          other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (startDate == null ? 0 : startDate!.hashCode) +
      (endDate == null ? 0 : endDate!.hashCode) +
      (careTeamMemberId == null ? 0 : careTeamMemberId!.hashCode) +
      (membershipType == null ? 0 : membershipType!.hashCode) +
      (encryptedSelf == null ? 0 : encryptedSelf!.hashCode);

  @override
  String toString() =>
      'CareTeamMembershipDto[startDate=$startDate, endDate=$endDate, careTeamMemberId=$careTeamMemberId, membershipType=$membershipType, encryptedSelf=$encryptedSelf]';

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
  static CareTeamMembershipDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CareTeamMembershipDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CareTeamMembershipDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

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

  static List<CareTeamMembershipDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CareTeamMembershipDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CareTeamMembershipDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CareTeamMembershipDto> mapFromJson(dynamic json) {
    final map = <String, CareTeamMembershipDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CareTeamMembershipDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CareTeamMembershipDto-objects as value to a dart map
  static Map<String, List<CareTeamMembershipDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CareTeamMembershipDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CareTeamMembershipDto.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}

class CareTeamMembershipDtoMembershipTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CareTeamMembershipDtoMembershipTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

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

  static CareTeamMembershipDtoMembershipTypeEnum? fromJson(dynamic value) => CareTeamMembershipDtoMembershipTypeEnumTypeTransformer().decode(value);

  static List<CareTeamMembershipDtoMembershipTypeEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CareTeamMembershipDtoMembershipTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CareTeamMembershipDtoMembershipTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
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
  CareTeamMembershipDtoMembershipTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'doctor':
          return CareTeamMembershipDtoMembershipTypeEnum.doctor;
        case r'mutuality':
          return CareTeamMembershipDtoMembershipTypeEnum.mutuality;
        case r'patient':
          return CareTeamMembershipDtoMembershipTypeEnum.patient;
        case r'specialist':
          return CareTeamMembershipDtoMembershipTypeEnum.specialist;
        case r'other':
          return CareTeamMembershipDtoMembershipTypeEnum.other;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CareTeamMembershipDtoMembershipTypeEnumTypeTransformer] instance.
  static CareTeamMembershipDtoMembershipTypeEnumTypeTransformer? _instance;
}
