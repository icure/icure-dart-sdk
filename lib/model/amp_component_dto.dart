//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class AmpComponentDto {
  /// Returns a new [AmpComponentDto] instance.
  AmpComponentDto({
    this.from,
    this.to,
    this.ingredients = const [],
    this.pharmaceuticalForms = const [],
    this.routeOfAdministrations = const [],
    this.dividable,
    this.scored,
    this.crushable,
    this.containsAlcohol,
    this.sugarFree,
    this.modifiedReleaseType,
    this.specificDrugDevice,
    this.dimensions,
    this.name,
    this.note,
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

  List<IngredientDto> ingredients;

  List<PharmaceuticalFormStubDto> pharmaceuticalForms;

  List<RouteOfAdministrationDto> routeOfAdministrations;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dividable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scored;

  AmpComponentDtoCrushableEnum? crushable;

  AmpComponentDtoContainsAlcoholEnum? containsAlcohol;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? sugarFree;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? modifiedReleaseType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? specificDrugDevice;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dimensions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SamTextDto? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SamTextDto? note;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AmpComponentDto &&
          other.from == from &&
          other.to == to &&
          other.ingredients == ingredients &&
          other.pharmaceuticalForms == pharmaceuticalForms &&
          other.routeOfAdministrations == routeOfAdministrations &&
          other.dividable == dividable &&
          other.scored == scored &&
          other.crushable == crushable &&
          other.containsAlcohol == containsAlcohol &&
          other.sugarFree == sugarFree &&
          other.modifiedReleaseType == modifiedReleaseType &&
          other.specificDrugDevice == specificDrugDevice &&
          other.dimensions == dimensions &&
          other.name == name &&
          other.note == note;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
  (from == null ? 0 : from!.hashCode) +
      (to == null ? 0 : to!.hashCode) +
      (ingredients.hashCode) +
      (pharmaceuticalForms.hashCode) +
      (routeOfAdministrations.hashCode) +
      (dividable == null ? 0 : dividable!.hashCode) +
      (scored == null ? 0 : scored!.hashCode) +
      (crushable == null ? 0 : crushable!.hashCode) +
      (containsAlcohol == null ? 0 : containsAlcohol!.hashCode) +
      (sugarFree == null ? 0 : sugarFree!.hashCode) +
      (modifiedReleaseType == null ? 0 : modifiedReleaseType!.hashCode) +
      (specificDrugDevice == null ? 0 : specificDrugDevice!.hashCode) +
      (dimensions == null ? 0 : dimensions!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (note == null ? 0 : note!.hashCode);

  @override
  String toString() =>
      'AmpComponentDto[from=$from, to=$to, ingredients=$ingredients, pharmaceuticalForms=$pharmaceuticalForms, routeOfAdministrations=$routeOfAdministrations, dividable=$dividable, scored=$scored, crushable=$crushable, containsAlcohol=$containsAlcohol, sugarFree=$sugarFree, modifiedReleaseType=$modifiedReleaseType, specificDrugDevice=$specificDrugDevice, dimensions=$dimensions, name=$name, note=$note]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (from != null) {
      json[r'from'] = from;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    json[r'ingredients'] = ingredients;
    json[r'pharmaceuticalForms'] = pharmaceuticalForms;
    json[r'routeOfAdministrations'] = routeOfAdministrations;
    if (dividable != null) {
      json[r'dividable'] = dividable;
    }
    if (scored != null) {
      json[r'scored'] = scored;
    }
    if (crushable != null) {
      json[r'crushable'] = crushable;
    }
    if (containsAlcohol != null) {
      json[r'containsAlcohol'] = containsAlcohol;
    }
    if (sugarFree != null) {
      json[r'sugarFree'] = sugarFree;
    }
    if (modifiedReleaseType != null) {
      json[r'modifiedReleaseType'] = modifiedReleaseType;
    }
    if (specificDrugDevice != null) {
      json[r'specificDrugDevice'] = specificDrugDevice;
    }
    if (dimensions != null) {
      json[r'dimensions'] = dimensions;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (note != null) {
      json[r'note'] = note;
    }
    return json;
  }

  /// Returns a new [AmpComponentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AmpComponentDto? fromJson(dynamic value) {
    if (value is AmpComponentDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AmpComponentDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AmpComponentDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AmpComponentDto(
        from: mapValueOfType<int>(json, r'from'),
        to: mapValueOfType<int>(json, r'to'),
        ingredients: IngredientDto.listFromJson(json[r'ingredients']) ?? const [],
        pharmaceuticalForms: PharmaceuticalFormStubDto.listFromJson(json[r'pharmaceuticalForms']) ?? const [],
        routeOfAdministrations: RouteOfAdministrationDto.listFromJson(json[r'routeOfAdministrations']) ?? const [],
        dividable: mapValueOfType<String>(json, r'dividable'),
        scored: mapValueOfType<String>(json, r'scored'),
        crushable: AmpComponentDtoCrushableEnum.fromJson(json[r'crushable']),
        containsAlcohol: AmpComponentDtoContainsAlcoholEnum.fromJson(json[r'containsAlcohol']),
        sugarFree: mapValueOfType<bool>(json, r'sugarFree'),
        modifiedReleaseType: mapValueOfType<int>(json, r'modifiedReleaseType'),
        specificDrugDevice: mapValueOfType<int>(json, r'specificDrugDevice'),
        dimensions: mapValueOfType<String>(json, r'dimensions'),
        name: SamTextDto.fromJson(json[r'name']),
        note: SamTextDto.fromJson(json[r'note']),
      );
    }
    return null;
  }

  static List<AmpComponentDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AmpComponentDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AmpComponentDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AmpComponentDto> mapFromJson(dynamic json) {
    final map = <String, AmpComponentDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AmpComponentDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AmpComponentDto-objects as value to a dart map
  static Map<String, List<AmpComponentDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AmpComponentDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AmpComponentDto.listFromJson(
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

class AmpComponentDtoCrushableEnum {
  /// Instantiate a new enum with the provided [value].
  const AmpComponentDtoCrushableEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const Y = AmpComponentDtoCrushableEnum._(r'Y');
  static const N = AmpComponentDtoCrushableEnum._(r'N');
  static const X = AmpComponentDtoCrushableEnum._(r'X');

  /// List of all possible values in this [enum][AmpComponentDtoCrushableEnum].
  static const values = <AmpComponentDtoCrushableEnum>[
    Y,
    N,
    X,
  ];

  static AmpComponentDtoCrushableEnum? fromJson(dynamic value) => AmpComponentDtoCrushableEnumTypeTransformer().decode(value);

  static List<AmpComponentDtoCrushableEnum>? listFromJson(dynamic json, {
    bool growable = false,
  }) {
    final result = <AmpComponentDtoCrushableEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AmpComponentDtoCrushableEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AmpComponentDtoCrushableEnum] to String,
/// and [decode] dynamic data back to [AmpComponentDtoCrushableEnum].
class AmpComponentDtoCrushableEnumTypeTransformer {
  factory AmpComponentDtoCrushableEnumTypeTransformer() => _instance ??= const AmpComponentDtoCrushableEnumTypeTransformer._();

  const AmpComponentDtoCrushableEnumTypeTransformer._();

  String encode(AmpComponentDtoCrushableEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AmpComponentDtoCrushableEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AmpComponentDtoCrushableEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'Y':
          return AmpComponentDtoCrushableEnum.Y;
        case r'N':
          return AmpComponentDtoCrushableEnum.N;
        case r'X':
          return AmpComponentDtoCrushableEnum.X;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AmpComponentDtoCrushableEnumTypeTransformer] instance.
  static AmpComponentDtoCrushableEnumTypeTransformer? _instance;
}

class AmpComponentDtoContainsAlcoholEnum {
  /// Instantiate a new enum with the provided [value].
  const AmpComponentDtoContainsAlcoholEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const Y = AmpComponentDtoContainsAlcoholEnum._(r'Y');
  static const N = AmpComponentDtoContainsAlcoholEnum._(r'N');
  static const X = AmpComponentDtoContainsAlcoholEnum._(r'X');

  /// List of all possible values in this [enum][AmpComponentDtoContainsAlcoholEnum].
  static const values = <AmpComponentDtoContainsAlcoholEnum>[
    Y,
    N,
    X,
  ];

  static AmpComponentDtoContainsAlcoholEnum? fromJson(dynamic value) => AmpComponentDtoContainsAlcoholEnumTypeTransformer().decode(value);

  static List<AmpComponentDtoContainsAlcoholEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AmpComponentDtoContainsAlcoholEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AmpComponentDtoContainsAlcoholEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AmpComponentDtoContainsAlcoholEnum] to String,
/// and [decode] dynamic data back to [AmpComponentDtoContainsAlcoholEnum].
class AmpComponentDtoContainsAlcoholEnumTypeTransformer {
  factory AmpComponentDtoContainsAlcoholEnumTypeTransformer() => _instance ??= const AmpComponentDtoContainsAlcoholEnumTypeTransformer._();

  const AmpComponentDtoContainsAlcoholEnumTypeTransformer._();

  String encode(AmpComponentDtoContainsAlcoholEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AmpComponentDtoContainsAlcoholEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AmpComponentDtoContainsAlcoholEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'Y':
          return AmpComponentDtoContainsAlcoholEnum.Y;
        case r'N':
          return AmpComponentDtoContainsAlcoholEnum.N;
        case r'X':
          return AmpComponentDtoContainsAlcoholEnum.X;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AmpComponentDtoContainsAlcoholEnumTypeTransformer] instance.
  static AmpComponentDtoContainsAlcoholEnumTypeTransformer? _instance;
}
