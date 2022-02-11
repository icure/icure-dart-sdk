//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class AddressDto {
  /// Returns a new [AddressDto] instance.
  AddressDto({
    this.addressType,
    this.descr,
    this.street,
    this.houseNumber,
    this.postboxNumber,
    this.postalCode,
    this.city,
    this.state,
    this.country,
    this.note,
    this.telecoms = const [],
    this.encryptedSelf,
  });

  /// The type of place the address represents, ex: home, office, hospital, clinic, etc.
  AddressDtoAddressTypeEnum? addressType;

  /// Descriptive notes about the address
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? descr;

  /// Street name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? street;

  /// Building / house number
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? houseNumber;

  /// Post / PO box number
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postboxNumber;

  /// Postal/PIN/ZIP/Area code
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postalCode;

  /// Name of city in the address
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? city;

  /// Name of state in the Address
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  /// Name / code of country in the address
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? country;

  /// Additional notes
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  /// List of other contact details available through telecom services, ex: email, phone number, fax, etc.
  List<TelecomDto> telecoms;

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
      other is AddressDto &&
          other.addressType == addressType &&
          other.descr == descr &&
          other.street == street &&
          other.houseNumber == houseNumber &&
          other.postboxNumber == postboxNumber &&
          other.postalCode == postalCode &&
          other.city == city &&
          other.state == state &&
          other.country == country &&
          other.note == note &&
          other.telecoms == telecoms &&
          other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (addressType == null ? 0 : addressType!.hashCode) +
      (descr == null ? 0 : descr!.hashCode) +
      (street == null ? 0 : street!.hashCode) +
      (houseNumber == null ? 0 : houseNumber!.hashCode) +
      (postboxNumber == null ? 0 : postboxNumber!.hashCode) +
      (postalCode == null ? 0 : postalCode!.hashCode) +
      (city == null ? 0 : city!.hashCode) +
      (state == null ? 0 : state!.hashCode) +
      (country == null ? 0 : country!.hashCode) +
      (note == null ? 0 : note!.hashCode) +
      (telecoms.hashCode) +
      (encryptedSelf == null ? 0 : encryptedSelf!.hashCode);

  @override
  String toString() =>
      'AddressDto[addressType=$addressType, descr=$descr, street=$street, houseNumber=$houseNumber, postboxNumber=$postboxNumber, postalCode=$postalCode, city=$city, state=$state, country=$country, note=$note, telecoms=$telecoms, encryptedSelf=$encryptedSelf]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (addressType != null) {
      json[r'addressType'] = addressType;
    }
    if (descr != null) {
      json[r'descr'] = descr;
    }
    if (street != null) {
      json[r'street'] = street;
    }
    if (houseNumber != null) {
      json[r'houseNumber'] = houseNumber;
    }
    if (postboxNumber != null) {
      json[r'postboxNumber'] = postboxNumber;
    }
    if (postalCode != null) {
      json[r'postalCode'] = postalCode;
    }
    if (city != null) {
      json[r'city'] = city;
    }
    if (state != null) {
      json[r'state'] = state;
    }
    if (country != null) {
      json[r'country'] = country;
    }
    if (note != null) {
      json[r'note'] = note;
    }
    json[r'telecoms'] = telecoms;
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [AddressDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddressDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AddressDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AddressDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AddressDto(
        addressType: AddressDtoAddressTypeEnum.fromJson(json[r'addressType']),
        descr: mapValueOfType<String>(json, r'descr'),
        street: mapValueOfType<String>(json, r'street'),
        houseNumber: mapValueOfType<String>(json, r'houseNumber'),
        postboxNumber: mapValueOfType<String>(json, r'postboxNumber'),
        postalCode: mapValueOfType<String>(json, r'postalCode'),
        city: mapValueOfType<String>(json, r'city'),
        state: mapValueOfType<String>(json, r'state'),
        country: mapValueOfType<String>(json, r'country'),
        note: mapValueOfType<String>(json, r'note'),
        telecoms: TelecomDto.listFromJson(json[r'telecoms'])!,
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<AddressDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AddressDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddressDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddressDto> mapFromJson(dynamic json) {
    final map = <String, AddressDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddressDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddressDto-objects as value to a dart map
  static Map<String, List<AddressDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AddressDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddressDto.listFromJson(
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
  static const requiredKeys = <String>{
    'telecoms',
  };
}

/// The type of place the address represents, ex: home, office, hospital, clinic, etc.
class AddressDtoAddressTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AddressDtoAddressTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const home = AddressDtoAddressTypeEnum._(r'home');
  static const work = AddressDtoAddressTypeEnum._(r'work');
  static const vacation = AddressDtoAddressTypeEnum._(r'vacation');
  static const hospital = AddressDtoAddressTypeEnum._(r'hospital');
  static const clinic = AddressDtoAddressTypeEnum._(r'clinic');
  static const hq = AddressDtoAddressTypeEnum._(r'hq');
  static const other = AddressDtoAddressTypeEnum._(r'other');
  static const temporary = AddressDtoAddressTypeEnum._(r'temporary');
  static const postal = AddressDtoAddressTypeEnum._(r'postal');
  static const diplomatic = AddressDtoAddressTypeEnum._(r'diplomatic');
  static const reference = AddressDtoAddressTypeEnum._(r'reference');

  /// List of all possible values in this [enum][AddressDtoAddressTypeEnum].
  static const values = <AddressDtoAddressTypeEnum>[
    home,
    work,
    vacation,
    hospital,
    clinic,
    hq,
    other,
    temporary,
    postal,
    diplomatic,
    reference,
  ];

  static AddressDtoAddressTypeEnum? fromJson(dynamic value) => AddressDtoAddressTypeEnumTypeTransformer().decode(value);

  static List<AddressDtoAddressTypeEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AddressDtoAddressTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddressDtoAddressTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AddressDtoAddressTypeEnum] to String,
/// and [decode] dynamic data back to [AddressDtoAddressTypeEnum].
class AddressDtoAddressTypeEnumTypeTransformer {
  factory AddressDtoAddressTypeEnumTypeTransformer() => _instance ??= const AddressDtoAddressTypeEnumTypeTransformer._();

  const AddressDtoAddressTypeEnumTypeTransformer._();

  String encode(AddressDtoAddressTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AddressDtoAddressTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AddressDtoAddressTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'home':
          return AddressDtoAddressTypeEnum.home;
        case r'work':
          return AddressDtoAddressTypeEnum.work;
        case r'vacation':
          return AddressDtoAddressTypeEnum.vacation;
        case r'hospital':
          return AddressDtoAddressTypeEnum.hospital;
        case r'clinic':
          return AddressDtoAddressTypeEnum.clinic;
        case r'hq':
          return AddressDtoAddressTypeEnum.hq;
        case r'other':
          return AddressDtoAddressTypeEnum.other;
        case r'temporary':
          return AddressDtoAddressTypeEnum.temporary;
        case r'postal':
          return AddressDtoAddressTypeEnum.postal;
        case r'diplomatic':
          return AddressDtoAddressTypeEnum.diplomatic;
        case r'reference':
          return AddressDtoAddressTypeEnum.reference;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AddressDtoAddressTypeEnumTypeTransformer] instance.
  static AddressDtoAddressTypeEnumTypeTransformer? _instance;
}
