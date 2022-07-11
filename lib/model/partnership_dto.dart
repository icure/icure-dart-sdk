//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class PartnershipDto {
  /// Returns a new [PartnershipDto] instance.
  PartnershipDto({
    this.type,
    this.status,
    this.partnerId,
    this.meToOtherRelationshipDescription,
    this.otherToMeRelationshipDescription,
  });

  /// Type of relationship.
  PartnershipDtoTypeEnum? type;

  /// Status of the relationship.
  PartnershipDtoStatusEnum? status;

  /// UUID of the contact person or patient in this relationship.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? partnerId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? meToOtherRelationshipDescription;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? otherToMeRelationshipDescription;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PartnershipDto &&
          other.type == type &&
          other.status == status &&
          other.partnerId == partnerId &&
          other.meToOtherRelationshipDescription == meToOtherRelationshipDescription &&
          other.otherToMeRelationshipDescription == otherToMeRelationshipDescription;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (type == null ? 0 : type!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (partnerId == null ? 0 : partnerId!.hashCode) +
      (meToOtherRelationshipDescription == null ? 0 : meToOtherRelationshipDescription!.hashCode) +
      (otherToMeRelationshipDescription == null ? 0 : otherToMeRelationshipDescription!.hashCode);

  @override
  String toString() =>
      'PartnershipDto[type=$type, status=$status, partnerId=$partnerId, meToOtherRelationshipDescription=$meToOtherRelationshipDescription, otherToMeRelationshipDescription=$otherToMeRelationshipDescription]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (type != null) {
      json[r'type'] = type;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (partnerId != null) {
      json[r'partnerId'] = partnerId;
    }
    if (meToOtherRelationshipDescription != null) {
      json[r'meToOtherRelationshipDescription'] = meToOtherRelationshipDescription;
    }
    if (otherToMeRelationshipDescription != null) {
      json[r'otherToMeRelationshipDescription'] = otherToMeRelationshipDescription;
    }
    return json;
  }

  /// Returns a new [PartnershipDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PartnershipDto? fromJson(dynamic value) {
    if (value is PartnershipDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PartnershipDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PartnershipDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PartnershipDto(
        type: PartnershipDtoTypeEnum.fromJson(json[r'type']),
        status: PartnershipDtoStatusEnum.fromJson(json[r'status']),
        partnerId: mapValueOfType<String>(json, r'partnerId'),
        meToOtherRelationshipDescription: mapValueOfType<String>(json, r'meToOtherRelationshipDescription'),
        otherToMeRelationshipDescription: mapValueOfType<String>(json, r'otherToMeRelationshipDescription'),
      );
    }
    return null;
  }

  static List<PartnershipDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PartnershipDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PartnershipDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PartnershipDto> mapFromJson(dynamic json) {
    final map = <String, PartnershipDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PartnershipDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PartnershipDto-objects as value to a dart map
  static Map<String, List<PartnershipDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PartnershipDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PartnershipDto.listFromJson(
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

/// Type of relationship.
class PartnershipDtoTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PartnershipDtoTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const primaryContact = PartnershipDtoTypeEnum._(r'primary_contact');
  static const primaryContactFor = PartnershipDtoTypeEnum._(r'primary_contact_for');
  static const family = PartnershipDtoTypeEnum._(r'family');
  static const friend = PartnershipDtoTypeEnum._(r'friend');
  static const counselor = PartnershipDtoTypeEnum._(r'counselor');
  static const contact = PartnershipDtoTypeEnum._(r'contact');
  static const brother = PartnershipDtoTypeEnum._(r'brother');
  static const brotherinlaw = PartnershipDtoTypeEnum._(r'brotherinlaw');
  static const child = PartnershipDtoTypeEnum._(r'child');
  static const daughter = PartnershipDtoTypeEnum._(r'daughter');
  static const employer = PartnershipDtoTypeEnum._(r'employer');
  static const father = PartnershipDtoTypeEnum._(r'father');
  static const grandchild = PartnershipDtoTypeEnum._(r'grandchild');
  static const grandparent = PartnershipDtoTypeEnum._(r'grandparent');
  static const husband = PartnershipDtoTypeEnum._(r'husband');
  static const lawyer = PartnershipDtoTypeEnum._(r'lawyer');
  static const mother = PartnershipDtoTypeEnum._(r'mother');
  static const neighbour = PartnershipDtoTypeEnum._(r'neighbour');
  static const notary = PartnershipDtoTypeEnum._(r'notary');
  static const partner = PartnershipDtoTypeEnum._(r'partner');
  static const sister = PartnershipDtoTypeEnum._(r'sister');
  static const sisterinlaw = PartnershipDtoTypeEnum._(r'sisterinlaw');
  static const son = PartnershipDtoTypeEnum._(r'son');
  static const spouse = PartnershipDtoTypeEnum._(r'spouse');
  static const stepdaughter = PartnershipDtoTypeEnum._(r'stepdaughter');
  static const stepfather = PartnershipDtoTypeEnum._(r'stepfather');
  static const stepmother = PartnershipDtoTypeEnum._(r'stepmother');
  static const stepson = PartnershipDtoTypeEnum._(r'stepson');
  static const tutor = PartnershipDtoTypeEnum._(r'tutor');
  static const nextOfKin = PartnershipDtoTypeEnum._(r'next_of_kin');
  static const federalAgency = PartnershipDtoTypeEnum._(r'federal_agency');
  static const insuranceCompany = PartnershipDtoTypeEnum._(r'insurance_company');
  static const stateAgency = PartnershipDtoTypeEnum._(r'state_agency');
  static const unknown = PartnershipDtoTypeEnum._(r'unknown');
  static const seealso = PartnershipDtoTypeEnum._(r'seealso');
  static const refer = PartnershipDtoTypeEnum._(r'refer');

  /// List of all possible values in this [enum][PartnershipDtoTypeEnum].
  static const values = <PartnershipDtoTypeEnum>[
    primaryContact,
    primaryContactFor,
    family,
    friend,
    counselor,
    contact,
    brother,
    brotherinlaw,
    child,
    daughter,
    employer,
    father,
    grandchild,
    grandparent,
    husband,
    lawyer,
    mother,
    neighbour,
    notary,
    partner,
    sister,
    sisterinlaw,
    son,
    spouse,
    stepdaughter,
    stepfather,
    stepmother,
    stepson,
    tutor,
    nextOfKin,
    federalAgency,
    insuranceCompany,
    stateAgency,
    unknown,
    seealso,
    refer,
  ];

  static PartnershipDtoTypeEnum? fromJson(dynamic value) => PartnershipDtoTypeEnumTypeTransformer().decode(value);

  static List<PartnershipDtoTypeEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PartnershipDtoTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PartnershipDtoTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PartnershipDtoTypeEnum] to String,
/// and [decode] dynamic data back to [PartnershipDtoTypeEnum].
class PartnershipDtoTypeEnumTypeTransformer {
  factory PartnershipDtoTypeEnumTypeTransformer() => _instance ??= const PartnershipDtoTypeEnumTypeTransformer._();

  const PartnershipDtoTypeEnumTypeTransformer._();

  String encode(PartnershipDtoTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PartnershipDtoTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PartnershipDtoTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'primary_contact':
          return PartnershipDtoTypeEnum.primaryContact;
        case r'primary_contact_for':
          return PartnershipDtoTypeEnum.primaryContactFor;
        case r'family':
          return PartnershipDtoTypeEnum.family;
        case r'friend':
          return PartnershipDtoTypeEnum.friend;
        case r'counselor':
          return PartnershipDtoTypeEnum.counselor;
        case r'contact':
          return PartnershipDtoTypeEnum.contact;
        case r'brother':
          return PartnershipDtoTypeEnum.brother;
        case r'brotherinlaw':
          return PartnershipDtoTypeEnum.brotherinlaw;
        case r'child':
          return PartnershipDtoTypeEnum.child;
        case r'daughter':
          return PartnershipDtoTypeEnum.daughter;
        case r'employer':
          return PartnershipDtoTypeEnum.employer;
        case r'father':
          return PartnershipDtoTypeEnum.father;
        case r'grandchild':
          return PartnershipDtoTypeEnum.grandchild;
        case r'grandparent':
          return PartnershipDtoTypeEnum.grandparent;
        case r'husband':
          return PartnershipDtoTypeEnum.husband;
        case r'lawyer':
          return PartnershipDtoTypeEnum.lawyer;
        case r'mother':
          return PartnershipDtoTypeEnum.mother;
        case r'neighbour':
          return PartnershipDtoTypeEnum.neighbour;
        case r'notary':
          return PartnershipDtoTypeEnum.notary;
        case r'partner':
          return PartnershipDtoTypeEnum.partner;
        case r'sister':
          return PartnershipDtoTypeEnum.sister;
        case r'sisterinlaw':
          return PartnershipDtoTypeEnum.sisterinlaw;
        case r'son':
          return PartnershipDtoTypeEnum.son;
        case r'spouse':
          return PartnershipDtoTypeEnum.spouse;
        case r'stepdaughter':
          return PartnershipDtoTypeEnum.stepdaughter;
        case r'stepfather':
          return PartnershipDtoTypeEnum.stepfather;
        case r'stepmother':
          return PartnershipDtoTypeEnum.stepmother;
        case r'stepson':
          return PartnershipDtoTypeEnum.stepson;
        case r'tutor':
          return PartnershipDtoTypeEnum.tutor;
        case r'next_of_kin':
          return PartnershipDtoTypeEnum.nextOfKin;
        case r'federal_agency':
          return PartnershipDtoTypeEnum.federalAgency;
        case r'insurance_company':
          return PartnershipDtoTypeEnum.insuranceCompany;
        case r'state_agency':
          return PartnershipDtoTypeEnum.stateAgency;
        case r'unknown':
          return PartnershipDtoTypeEnum.unknown;
        case r'seealso':
          return PartnershipDtoTypeEnum.seealso;
        case r'refer':
          return PartnershipDtoTypeEnum.refer;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PartnershipDtoTypeEnumTypeTransformer] instance.
  static PartnershipDtoTypeEnumTypeTransformer? _instance;
}

/// Status of the relationship.
class PartnershipDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const PartnershipDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = PartnershipDtoStatusEnum._(r'active');
  static const complicated = PartnershipDtoStatusEnum._(r'complicated');
  static const past = PartnershipDtoStatusEnum._(r'past');

  /// List of all possible values in this [enum][PartnershipDtoStatusEnum].
  static const values = <PartnershipDtoStatusEnum>[
    active,
    complicated,
    past,
  ];

  static PartnershipDtoStatusEnum? fromJson(dynamic value) => PartnershipDtoStatusEnumTypeTransformer().decode(value);

  static List<PartnershipDtoStatusEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PartnershipDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PartnershipDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PartnershipDtoStatusEnum] to String,
/// and [decode] dynamic data back to [PartnershipDtoStatusEnum].
class PartnershipDtoStatusEnumTypeTransformer {
  factory PartnershipDtoStatusEnumTypeTransformer() => _instance ??= const PartnershipDtoStatusEnumTypeTransformer._();

  const PartnershipDtoStatusEnumTypeTransformer._();

  String encode(PartnershipDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PartnershipDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PartnershipDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'active':
          return PartnershipDtoStatusEnum.active;
        case r'complicated':
          return PartnershipDtoStatusEnum.complicated;
        case r'past':
          return PartnershipDtoStatusEnum.past;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PartnershipDtoStatusEnumTypeTransformer] instance.
  static PartnershipDtoStatusEnumTypeTransformer? _instance;
}
