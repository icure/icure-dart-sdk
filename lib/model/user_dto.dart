//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserDto {
  /// Returns a new [UserDto] instance.
  UserDto({
    required this.id,
    this.rev,
    this.deletionDate,
    this.created,
    this.name,
    this.properties = const {},
    this.permissions = const {},
    this.roles = const {},
    this.type,
    this.status,
    this.login,
    this.passwordHash,
    this.secret,
    this.use2fa,
    this.groupId,
    this.healthcarePartyId,
    this.patientId,
    this.deviceId,
    this.autoDelegations = const {},
    this.createdDate,
    this.termsOfUseDate,
    this.email,
    this.mobilePhone,
    this.applicationTokens = const {},
    this.authenticationTokens = const {},
  });

  /// the Id of the user. We encourage using either a v4 UUID or a HL7 Id.
  String id;

  /// the revision of the user in the database, used for conflict management / optimistic locking.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deletionDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

  /// Last name of the user. This is the official last name that should be used for official administrative purposes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Extra properties for the user. Those properties are typed (see class Property)
  Set<PropertyStubDto> properties;

  /// If permission to modify patient data is granted or revoked
  Set<PermissionDto> permissions;

  /// Roles specified for the user
  Set<String> roles;

  /// Authorization source for user. 'Database', 'ldap' or 'token'
  UserDtoTypeEnum? type;

  /// State of user's activeness: 'Active', 'Disabled' or 'Registering'
  UserDtoStatusEnum? status;

  /// Username for this user. We encourage using an email address
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? login;

  /// Hashed version of the password (BCrypt is used for hashing)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? passwordHash;

  /// Secret token used to verify 2fa
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? secret;

  /// Whether the user has activated two factors authentication
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? use2fa;

  /// id of the group (practice/hospital) the user is member of
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? groupId;

  /// Id of the healthcare party if the user is a healthcare party.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? healthcarePartyId;

  /// Id of the patient if the user is a patient
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? patientId;

  /// Id of the device if the user is a device
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deviceId;

  /// Delegations that are automatically generated client side when a new database object is created by this user
  Map<String, Set<String>> autoDelegations;

  /// the timestamp (unix epoch in ms) of creation of the user, will be filled automatically if missing. Not enforced by the application server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdDate;

  /// the timestamp (unix epoch in ms) of the latest validation of the terms of use of the application
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? termsOfUseDate;

  /// email address of the user (used for token exchange or password recovery).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// mobile phone of the user (used for token exchange or password recovery).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mobilePhone;

  Map<String, String> applicationTokens;

  /// Encrypted and time-limited Authentication tokens used for inter-applications authentication
  Map<String, AuthenticationTokenDto> authenticationTokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserDto &&
     other.id == id &&
     other.rev == rev &&
     other.deletionDate == deletionDate &&
     other.created == created &&
     other.name == name &&
     other.properties == properties &&
     other.permissions == permissions &&
     other.roles == roles &&
     other.type == type &&
     other.status == status &&
     other.login == login &&
     other.passwordHash == passwordHash &&
     other.secret == secret &&
     other.use2fa == use2fa &&
     other.groupId == groupId &&
     other.healthcarePartyId == healthcarePartyId &&
     other.patientId == patientId &&
     other.deviceId == deviceId &&
     other.autoDelegations == autoDelegations &&
     other.createdDate == createdDate &&
     other.termsOfUseDate == termsOfUseDate &&
     other.email == email &&
     other.mobilePhone == mobilePhone &&
     other.applicationTokens == applicationTokens &&
     other.authenticationTokens == authenticationTokens;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (rev == null ? 0 : rev!.hashCode) +
    (deletionDate == null ? 0 : deletionDate!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (properties.hashCode) +
    (permissions.hashCode) +
    (roles.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (login == null ? 0 : login!.hashCode) +
    (passwordHash == null ? 0 : passwordHash!.hashCode) +
    (secret == null ? 0 : secret!.hashCode) +
    (use2fa == null ? 0 : use2fa!.hashCode) +
    (groupId == null ? 0 : groupId!.hashCode) +
    (healthcarePartyId == null ? 0 : healthcarePartyId!.hashCode) +
    (patientId == null ? 0 : patientId!.hashCode) +
    (deviceId == null ? 0 : deviceId!.hashCode) +
    (autoDelegations.hashCode) +
    (createdDate == null ? 0 : createdDate!.hashCode) +
    (termsOfUseDate == null ? 0 : termsOfUseDate!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (mobilePhone == null ? 0 : mobilePhone!.hashCode) +
    (applicationTokens.hashCode) +
    (authenticationTokens.hashCode);

  @override
  String toString() => 'UserDto[id=$id, rev=$rev, deletionDate=$deletionDate, created=$created, name=$name, properties=$properties, permissions=$permissions, roles=$roles, type=$type, status=$status, login=$login, passwordHash=$passwordHash, secret=$secret, use2fa=$use2fa, groupId=$groupId, healthcarePartyId=$healthcarePartyId, patientId=$patientId, deviceId=$deviceId, autoDelegations=$autoDelegations, createdDate=$createdDate, termsOfUseDate=$termsOfUseDate, email=$email, mobilePhone=$mobilePhone, applicationTokens=$applicationTokens, authenticationTokens=$authenticationTokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (rev != null) {
      json[r'rev'] = rev;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
    }
    if (created != null) {
      json[r'created'] = created;
    }
    if (name != null) {
      json[r'name'] = name;
    }
      json[r'properties'] = properties;
      json[r'permissions'] = permissions;
      json[r'roles'] = roles;
    if (type != null) {
      json[r'type'] = type;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (login != null) {
      json[r'login'] = login;
    }
    if (passwordHash != null) {
      json[r'passwordHash'] = passwordHash;
    }
    if (secret != null) {
      json[r'secret'] = secret;
    }
    if (use2fa != null) {
      json[r'use2fa'] = use2fa;
    }
    if (groupId != null) {
      json[r'groupId'] = groupId;
    }
    if (healthcarePartyId != null) {
      json[r'healthcarePartyId'] = healthcarePartyId;
    }
    if (patientId != null) {
      json[r'patientId'] = patientId;
    }
    if (deviceId != null) {
      json[r'deviceId'] = deviceId;
    }
      json[r'autoDelegations'] = autoDelegations;
    if (createdDate != null) {
      json[r'createdDate'] = createdDate!.toUtc().toIso8601String();
    }
    if (termsOfUseDate != null) {
      json[r'termsOfUseDate'] = termsOfUseDate!.toUtc().toIso8601String();
    }
    if (email != null) {
      json[r'email'] = email;
    }
    if (mobilePhone != null) {
      json[r'mobilePhone'] = mobilePhone;
    }
      json[r'applicationTokens'] = applicationTokens;
      json[r'authenticationTokens'] = authenticationTokens;
    return json;
  }

  /// Returns a new [UserDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserDto(
        id: mapValueOfType<String>(json, r'id')!,
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        created: mapValueOfType<int>(json, r'created'),
        name: mapValueOfType<String>(json, r'name'),
        properties: PropertyStubDto.listFromJson(json[r'properties'])!.toSet(),
        permissions: PermissionDto.listFromJson(json[r'permissions'])!.toSet(),
        roles: json[r'roles'] is Set
            ? (json[r'roles'] as Set).cast<String>()
            : const {},
        type: UserDtoTypeEnum.fromJson(json[r'type']),
        status: UserDtoStatusEnum.fromJson(json[r'status']),
        login: mapValueOfType<String>(json, r'login'),
        passwordHash: mapValueOfType<String>(json, r'passwordHash'),
        secret: mapValueOfType<String>(json, r'secret'),
        use2fa: mapValueOfType<bool>(json, r'use2fa'),
        groupId: mapValueOfType<String>(json, r'groupId'),
        healthcarePartyId: mapValueOfType<String>(json, r'healthcarePartyId'),
        patientId: mapValueOfType<String>(json, r'patientId'),
        deviceId: mapValueOfType<String>(json, r'deviceId'),
        autoDelegations: json[r'autoDelegations'] == null
          ? const {}
            : mapCastOfType<String, dynamic>(json, r'autoDelegations')!.map((key, value) => MapEntry(key, (value is List ? value.toSet().cast<String>() : const {}))),
        createdDate: mapDateTime(json, r'createdDate', ''),
        termsOfUseDate: mapDateTime(json, r'termsOfUseDate', ''),
        email: mapValueOfType<String>(json, r'email'),
        mobilePhone: mapValueOfType<String>(json, r'mobilePhone'),
        applicationTokens: mapCastOfType<String, String>(json, r'applicationTokens')!,
        authenticationTokens: mapCastOfType<String, AuthenticationTokenDto>(json, r'authenticationTokens')!,
      );
    }
    return null;
  }

  static List<UserDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserDto> mapFromJson(dynamic json) {
    final map = <String, UserDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserDto-objects as value to a dart map
  static Map<String, List<UserDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'properties',
    'permissions',
    'roles',
    'autoDelegations',
    'applicationTokens',
    'authenticationTokens',
  };
}

/// Authorization source for user. 'Database', 'ldap' or 'token'
class UserDtoTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const UserDtoTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const database = UserDtoTypeEnum._(r'database');
  static const ldap = UserDtoTypeEnum._(r'ldap');
  static const token = UserDtoTypeEnum._(r'token');

  /// List of all possible values in this [enum][UserDtoTypeEnum].
  static const values = <UserDtoTypeEnum>[
    database,
    ldap,
    token,
  ];

  static UserDtoTypeEnum? fromJson(dynamic value) => UserDtoTypeEnumTypeTransformer().decode(value);

  static List<UserDtoTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserDtoTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserDtoTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserDtoTypeEnum] to String,
/// and [decode] dynamic data back to [UserDtoTypeEnum].
class UserDtoTypeEnumTypeTransformer {
  factory UserDtoTypeEnumTypeTransformer() => _instance ??= const UserDtoTypeEnumTypeTransformer._();

  const UserDtoTypeEnumTypeTransformer._();

  String encode(UserDtoTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserDtoTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserDtoTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'database': return UserDtoTypeEnum.database;
        case r'ldap': return UserDtoTypeEnum.ldap;
        case r'token': return UserDtoTypeEnum.token;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserDtoTypeEnumTypeTransformer] instance.
  static UserDtoTypeEnumTypeTransformer? _instance;
}


/// State of user's activeness: 'Active', 'Disabled' or 'Registering'
class UserDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const UserDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACTIVE = UserDtoStatusEnum._(r'ACTIVE');
  static const DISABLED = UserDtoStatusEnum._(r'DISABLED');
  static const REGISTERING = UserDtoStatusEnum._(r'REGISTERING');

  /// List of all possible values in this [enum][UserDtoStatusEnum].
  static const values = <UserDtoStatusEnum>[
    ACTIVE,
    DISABLED,
    REGISTERING,
  ];

  static UserDtoStatusEnum? fromJson(dynamic value) => UserDtoStatusEnumTypeTransformer().decode(value);

  static List<UserDtoStatusEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserDtoStatusEnum] to String,
/// and [decode] dynamic data back to [UserDtoStatusEnum].
class UserDtoStatusEnumTypeTransformer {
  factory UserDtoStatusEnumTypeTransformer() => _instance ??= const UserDtoStatusEnumTypeTransformer._();

  const UserDtoStatusEnumTypeTransformer._();

  String encode(UserDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'ACTIVE': return UserDtoStatusEnum.ACTIVE;
        case r'DISABLED': return UserDtoStatusEnum.DISABLED;
        case r'REGISTERING': return UserDtoStatusEnum.REGISTERING;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserDtoStatusEnumTypeTransformer] instance.
  static UserDtoStatusEnumTypeTransformer? _instance;
}


