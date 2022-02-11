//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class IngredientDto {
  /// Returns a new [IngredientDto] instance.
  IngredientDto({
    this.from,
    this.to,
    this.rank,
    this.type,
    this.knownEffect,
    this.strengthDescription,
    this.strength,
    this.additionalInformation,
    this.substance,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? from;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? to;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rank;

  IngredientDtoTypeEnum? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? knownEffect;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? strengthDescription;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  QuantityDto? strength;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? additionalInformation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SubstanceStubDto? substance;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IngredientDto &&
     other.from == from &&
     other.to == to &&
     other.rank == rank &&
     other.type == type &&
     other.knownEffect == knownEffect &&
     other.strengthDescription == strengthDescription &&
     other.strength == strength &&
     other.additionalInformation == additionalInformation &&
     other.substance == substance;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (from == null ? 0 : from!.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (rank == null ? 0 : rank!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (knownEffect == null ? 0 : knownEffect!.hashCode) +
    (strengthDescription == null ? 0 : strengthDescription!.hashCode) +
    (strength == null ? 0 : strength!.hashCode) +
    (additionalInformation == null ? 0 : additionalInformation!.hashCode) +
    (substance == null ? 0 : substance!.hashCode);

  @override
  String toString() => 'IngredientDto[from=$from, to=$to, rank=$rank, type=$type, knownEffect=$knownEffect, strengthDescription=$strengthDescription, strength=$strength, additionalInformation=$additionalInformation, substance=$substance]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (from != null) {
      json[r'from'] = from;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (rank != null) {
      json[r'rank'] = rank;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (knownEffect != null) {
      json[r'knownEffect'] = knownEffect;
    }
    if (strengthDescription != null) {
      json[r'strengthDescription'] = strengthDescription;
    }
    if (strength != null) {
      json[r'strength'] = strength;
    }
    if (additionalInformation != null) {
      json[r'additionalInformation'] = additionalInformation;
    }
    if (substance != null) {
      json[r'substance'] = substance;
    }
    return json;
  }

  /// Returns a new [IngredientDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IngredientDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IngredientDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IngredientDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IngredientDto(
        from: mapValueOfType<int>(json, r'from'),
        to: mapValueOfType<int>(json, r'to'),
        rank: mapValueOfType<int>(json, r'rank'),
        type: IngredientDtoTypeEnum.fromJson(json[r'type']),
        knownEffect: mapValueOfType<bool>(json, r'knownEffect'),
        strengthDescription: mapValueOfType<String>(json, r'strengthDescription'),
        strength: QuantityDto.fromJson(json[r'strength']),
        additionalInformation: mapValueOfType<String>(json, r'additionalInformation'),
        substance: SubstanceStubDto.fromJson(json[r'substance']),
      );
    }
    return null;
  }

  static List<IngredientDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IngredientDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IngredientDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IngredientDto> mapFromJson(dynamic json) {
    final map = <String, IngredientDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IngredientDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IngredientDto-objects as value to a dart map
  static Map<String, List<IngredientDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IngredientDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IngredientDto.listFromJson(entry.value, growable: growable,);
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


class IngredientDtoTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const IngredientDtoTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACTIVE_SUBSTANCE = IngredientDtoTypeEnum._(r'ACTIVE_SUBSTANCE');
  static const EXCIPIENT = IngredientDtoTypeEnum._(r'EXCIPIENT');

  /// List of all possible values in this [enum][IngredientDtoTypeEnum].
  static const values = <IngredientDtoTypeEnum>[
    ACTIVE_SUBSTANCE,
    EXCIPIENT,
  ];

  static IngredientDtoTypeEnum? fromJson(dynamic value) => IngredientDtoTypeEnumTypeTransformer().decode(value);

  static List<IngredientDtoTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IngredientDtoTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IngredientDtoTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [IngredientDtoTypeEnum] to String,
/// and [decode] dynamic data back to [IngredientDtoTypeEnum].
class IngredientDtoTypeEnumTypeTransformer {
  factory IngredientDtoTypeEnumTypeTransformer() => _instance ??= const IngredientDtoTypeEnumTypeTransformer._();

  const IngredientDtoTypeEnumTypeTransformer._();

  String encode(IngredientDtoTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a IngredientDtoTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  IngredientDtoTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'ACTIVE_SUBSTANCE': return IngredientDtoTypeEnum.ACTIVE_SUBSTANCE;
        case r'EXCIPIENT': return IngredientDtoTypeEnum.EXCIPIENT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [IngredientDtoTypeEnumTypeTransformer] instance.
  static IngredientDtoTypeEnumTypeTransformer? _instance;
}


