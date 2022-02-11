//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class TelecomDto {
  /// Returns a new [TelecomDto] instance.
  TelecomDto({
    this.telecomType,
    this.telecomNumber,
    this.telecomDescription,
    this.encryptedSelf,
  });

  /// The type of telecom method being used, ex: landline phone, mobile phone, email, fax, etc.
  TelecomDtoTelecomTypeEnum? telecomType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? telecomNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? telecomDescription;

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
      identical(this, other) || other is TelecomDto &&
          other.telecomType == telecomType &&
          other.telecomNumber == telecomNumber &&
          other.telecomDescription == telecomDescription &&
          other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
  (telecomType == null ? 0 : telecomType!.hashCode) +
      (telecomNumber == null ? 0 : telecomNumber!.hashCode) +
      (telecomDescription == null ? 0 : telecomDescription!.hashCode) +
      (encryptedSelf == null ? 0 : encryptedSelf!.hashCode);

  @override
  String toString() =>
      'TelecomDto[telecomType=$telecomType, telecomNumber=$telecomNumber, telecomDescription=$telecomDescription, encryptedSelf=$encryptedSelf]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (telecomType != null) {
      json[r'telecomType'] = telecomType;
    }
    if (telecomNumber != null) {
      json[r'telecomNumber'] = telecomNumber;
    }
    if (telecomDescription != null) {
      json[r'telecomDescription'] = telecomDescription;
    }
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [TelecomDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TelecomDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TelecomDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TelecomDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TelecomDto(
        telecomType: TelecomDtoTelecomTypeEnum.fromJson(json[r'telecomType']),
        telecomNumber: mapValueOfType<String>(json, r'telecomNumber'),
        telecomDescription: mapValueOfType<String>(json, r'telecomDescription'),
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<TelecomDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TelecomDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TelecomDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TelecomDto> mapFromJson(dynamic json) {
    final map = <String, TelecomDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TelecomDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TelecomDto-objects as value to a dart map
  static Map<String, List<TelecomDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TelecomDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TelecomDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// The type of telecom method being used, ex: landline phone, mobile phone, email, fax, etc.
class TelecomDtoTelecomTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TelecomDtoTelecomTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const mobile = TelecomDtoTelecomTypeEnum._(r'mobile');
  static const phone = TelecomDtoTelecomTypeEnum._(r'phone');
  static const email = TelecomDtoTelecomTypeEnum._(r'email');
  static const fax = TelecomDtoTelecomTypeEnum._(r'fax');
  static const skype = TelecomDtoTelecomTypeEnum._(r'skype');
  static const im = TelecomDtoTelecomTypeEnum._(r'im');
  static const medibridge = TelecomDtoTelecomTypeEnum._(r'medibridge');
  static const ehealthbox = TelecomDtoTelecomTypeEnum._(r'ehealthbox');
  static const apicrypt = TelecomDtoTelecomTypeEnum._(r'apicrypt');
  static const web = TelecomDtoTelecomTypeEnum._(r'web');
  static const print = TelecomDtoTelecomTypeEnum._(r'print');
  static const disk = TelecomDtoTelecomTypeEnum._(r'disk');
  static const other = TelecomDtoTelecomTypeEnum._(r'other');
  static const pager = TelecomDtoTelecomTypeEnum._(r'pager');

  /// List of all possible values in this [enum][TelecomDtoTelecomTypeEnum].
  static const values = <TelecomDtoTelecomTypeEnum>[
    mobile,
    phone,
    email,
    fax,
    skype,
    im,
    medibridge,
    ehealthbox,
    apicrypt,
    web,
    print,
    disk,
    other,
    pager,
  ];

  static TelecomDtoTelecomTypeEnum? fromJson(dynamic value) => TelecomDtoTelecomTypeEnumTypeTransformer().decode(value);

  static List<TelecomDtoTelecomTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TelecomDtoTelecomTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TelecomDtoTelecomTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TelecomDtoTelecomTypeEnum] to String,
/// and [decode] dynamic data back to [TelecomDtoTelecomTypeEnum].
class TelecomDtoTelecomTypeEnumTypeTransformer {
  factory TelecomDtoTelecomTypeEnumTypeTransformer() => _instance ??= const TelecomDtoTelecomTypeEnumTypeTransformer._();

  const TelecomDtoTelecomTypeEnumTypeTransformer._();

  String encode(TelecomDtoTelecomTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TelecomDtoTelecomTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TelecomDtoTelecomTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'mobile':
          return TelecomDtoTelecomTypeEnum.mobile;
        case r'phone':
          return TelecomDtoTelecomTypeEnum.phone;
        case r'email':
          return TelecomDtoTelecomTypeEnum.email;
        case r'fax':
          return TelecomDtoTelecomTypeEnum.fax;
        case r'skype':
          return TelecomDtoTelecomTypeEnum.skype;
        case r'im':
          return TelecomDtoTelecomTypeEnum.im;
        case r'medibridge':
          return TelecomDtoTelecomTypeEnum.medibridge;
        case r'ehealthbox':
          return TelecomDtoTelecomTypeEnum.ehealthbox;
        case r'apicrypt':
          return TelecomDtoTelecomTypeEnum.apicrypt;
        case r'web':
          return TelecomDtoTelecomTypeEnum.web;
        case r'print':
          return TelecomDtoTelecomTypeEnum.print;
        case r'disk':
          return TelecomDtoTelecomTypeEnum.disk;
        case r'other':
          return TelecomDtoTelecomTypeEnum.other;
        case r'pager':
          return TelecomDtoTelecomTypeEnum.pager;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TelecomDtoTelecomTypeEnumTypeTransformer] instance.
  static TelecomDtoTelecomTypeEnumTypeTransformer? _instance;
}


