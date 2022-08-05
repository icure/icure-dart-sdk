//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class FlatRateTarificationDto {
  /// Returns a new [FlatRateTarificationDto] instance.
  FlatRateTarificationDto({
    this.code,
    this.flatRateType,
    this.label = const {},
    this.valorisations = const [],
    this.encryptedSelf,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  FlatRateTarificationDtoFlatRateTypeEnum? flatRateType;

  Map<String, String> label;

  List<ValorisationDto> valorisations;

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
      identical(this, other) || other is FlatRateTarificationDto &&
          other.code == code &&
          other.flatRateType == flatRateType &&
          other.label == label &&
          other.valorisations == valorisations &&
          other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
  (code == null ? 0 : code!.hashCode) +
      (flatRateType == null ? 0 : flatRateType!.hashCode) +
      (label.hashCode) +
      (valorisations.hashCode) +
      (encryptedSelf == null ? 0 : encryptedSelf!.hashCode);

  @override
  String toString() =>
      'FlatRateTarificationDto[code=$code, flatRateType=$flatRateType, label=$label, valorisations=$valorisations, encryptedSelf=$encryptedSelf]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json[r'code'] = code;
    }
    if (flatRateType != null) {
      json[r'flatRateType'] = flatRateType;
    }
    json[r'label'] = label;
    json[r'valorisations'] = valorisations;
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [FlatRateTarificationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FlatRateTarificationDto? fromJson(dynamic value) {
    if (value is FlatRateTarificationDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FlatRateTarificationDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FlatRateTarificationDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FlatRateTarificationDto(
        code: mapValueOfType<String>(json, r'code'),
        flatRateType: FlatRateTarificationDtoFlatRateTypeEnum.fromJson(json[r'flatRateType']),
        label: mapCastOfType<String, String>(json, r'label') ?? const {},
        valorisations: ValorisationDto.listFromJson(json[r'valorisations'])!,
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<FlatRateTarificationDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FlatRateTarificationDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlatRateTarificationDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FlatRateTarificationDto> mapFromJson(dynamic json) {
    final map = <String, FlatRateTarificationDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FlatRateTarificationDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FlatRateTarificationDto-objects as value to a dart map
  static Map<String, List<FlatRateTarificationDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FlatRateTarificationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FlatRateTarificationDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'valorisations',
  };
}


class FlatRateTarificationDtoFlatRateTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const FlatRateTarificationDtoFlatRateTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const physician = FlatRateTarificationDtoFlatRateTypeEnum._(r'physician');
  static const physiotherapist = FlatRateTarificationDtoFlatRateTypeEnum._(r'physiotherapist');
  static const nurse = FlatRateTarificationDtoFlatRateTypeEnum._(r'nurse');
  static const ptd = FlatRateTarificationDtoFlatRateTypeEnum._(r'ptd');

  /// List of all possible values in this [enum][FlatRateTarificationDtoFlatRateTypeEnum].
  static const values = <FlatRateTarificationDtoFlatRateTypeEnum>[
    physician,
    physiotherapist,
    nurse,
    ptd,
  ];

  static FlatRateTarificationDtoFlatRateTypeEnum? fromJson(dynamic value) => FlatRateTarificationDtoFlatRateTypeEnumTypeTransformer().decode(value);

  static List<FlatRateTarificationDtoFlatRateTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FlatRateTarificationDtoFlatRateTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlatRateTarificationDtoFlatRateTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FlatRateTarificationDtoFlatRateTypeEnum] to String,
/// and [decode] dynamic data back to [FlatRateTarificationDtoFlatRateTypeEnum].
class FlatRateTarificationDtoFlatRateTypeEnumTypeTransformer {
  factory FlatRateTarificationDtoFlatRateTypeEnumTypeTransformer() => _instance ??= const FlatRateTarificationDtoFlatRateTypeEnumTypeTransformer._();

  const FlatRateTarificationDtoFlatRateTypeEnumTypeTransformer._();

  String encode(FlatRateTarificationDtoFlatRateTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FlatRateTarificationDtoFlatRateTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FlatRateTarificationDtoFlatRateTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'physician':
          return FlatRateTarificationDtoFlatRateTypeEnum.physician;
        case r'physiotherapist':
          return FlatRateTarificationDtoFlatRateTypeEnum.physiotherapist;
        case r'nurse':
          return FlatRateTarificationDtoFlatRateTypeEnum.nurse;
        case r'ptd':
          return FlatRateTarificationDtoFlatRateTypeEnum.ptd;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FlatRateTarificationDtoFlatRateTypeEnumTypeTransformer] instance.
  static FlatRateTarificationDtoFlatRateTypeEnumTypeTransformer? _instance;
}
