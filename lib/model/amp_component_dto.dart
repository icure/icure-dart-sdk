//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

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

  int from;

  int to;

  List<IngredientDto> ingredients;

  List<PharmaceuticalFormStubDto> pharmaceuticalForms;

  List<RouteOfAdministrationDto> routeOfAdministrations;

  String dividable;

  String scored;

  AmpComponentDtoCrushableEnum crushable;

  AmpComponentDtoContainsAlcoholEnum containsAlcohol;

  bool sugarFree;

  int modifiedReleaseType;

  int specificDrugDevice;

  String dimensions;

  SamTextDto name;

  SamTextDto note;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AmpComponentDto &&
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
    (from == null ? 0 : from.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (ingredients == null ? 0 : ingredients.hashCode) +
    (pharmaceuticalForms == null ? 0 : pharmaceuticalForms.hashCode) +
    (routeOfAdministrations == null ? 0 : routeOfAdministrations.hashCode) +
    (dividable == null ? 0 : dividable.hashCode) +
    (scored == null ? 0 : scored.hashCode) +
    (crushable == null ? 0 : crushable.hashCode) +
    (containsAlcohol == null ? 0 : containsAlcohol.hashCode) +
    (sugarFree == null ? 0 : sugarFree.hashCode) +
    (modifiedReleaseType == null ? 0 : modifiedReleaseType.hashCode) +
    (specificDrugDevice == null ? 0 : specificDrugDevice.hashCode) +
    (dimensions == null ? 0 : dimensions.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (note == null ? 0 : note.hashCode);

  @override
  String toString() => 'AmpComponentDto[from=$from, to=$to, ingredients=$ingredients, pharmaceuticalForms=$pharmaceuticalForms, routeOfAdministrations=$routeOfAdministrations, dividable=$dividable, scored=$scored, crushable=$crushable, containsAlcohol=$containsAlcohol, sugarFree=$sugarFree, modifiedReleaseType=$modifiedReleaseType, specificDrugDevice=$specificDrugDevice, dimensions=$dimensions, name=$name, note=$note]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (from != null) {
      json[r'from'] = from;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (ingredients != null) {
      json[r'ingredients'] = ingredients;
    }
    if (pharmaceuticalForms != null) {
      json[r'pharmaceuticalForms'] = pharmaceuticalForms;
    }
    if (routeOfAdministrations != null) {
      json[r'routeOfAdministrations'] = routeOfAdministrations;
    }
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
  static AmpComponentDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AmpComponentDto(
        from: mapValueOfType<int>(json, r'from'),
        to: mapValueOfType<int>(json, r'to'),
        ingredients: IngredientDto.listFromJson(json[r'ingredients']),
        pharmaceuticalForms: PharmaceuticalFormStubDto.listFromJson(json[r'pharmaceuticalForms']),
        routeOfAdministrations: RouteOfAdministrationDto.listFromJson(json[r'routeOfAdministrations']),
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

  static List<AmpComponentDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AmpComponentDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AmpComponentDto>[];

  static Map<String, AmpComponentDto> mapFromJson(dynamic json) {
    final map = <String, AmpComponentDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AmpComponentDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AmpComponentDto-objects as value to a dart map
  static Map<String, List<AmpComponentDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AmpComponentDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AmpComponentDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class AmpComponentDtoCrushableEnum {
  /// Instantiate a new enum with the provided [value].
  const AmpComponentDtoCrushableEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

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

  static AmpComponentDtoCrushableEnum fromJson(dynamic value) =>
    AmpComponentDtoCrushableEnumTypeTransformer().decode(value);

  static List<AmpComponentDtoCrushableEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AmpComponentDtoCrushableEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AmpComponentDtoCrushableEnum>[];
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
  AmpComponentDtoCrushableEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'Y': return AmpComponentDtoCrushableEnum.Y;
        case r'N': return AmpComponentDtoCrushableEnum.N;
        case r'X': return AmpComponentDtoCrushableEnum.X;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AmpComponentDtoCrushableEnumTypeTransformer] instance.
  static AmpComponentDtoCrushableEnumTypeTransformer _instance;
}



class AmpComponentDtoContainsAlcoholEnum {
  /// Instantiate a new enum with the provided [value].
  const AmpComponentDtoContainsAlcoholEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

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

  static AmpComponentDtoContainsAlcoholEnum fromJson(dynamic value) =>
    AmpComponentDtoContainsAlcoholEnumTypeTransformer().decode(value);

  static List<AmpComponentDtoContainsAlcoholEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AmpComponentDtoContainsAlcoholEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AmpComponentDtoContainsAlcoholEnum>[];
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
  AmpComponentDtoContainsAlcoholEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'Y': return AmpComponentDtoContainsAlcoholEnum.Y;
        case r'N': return AmpComponentDtoContainsAlcoholEnum.N;
        case r'X': return AmpComponentDtoContainsAlcoholEnum.X;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AmpComponentDtoContainsAlcoholEnumTypeTransformer] instance.
  static AmpComponentDtoContainsAlcoholEnumTypeTransformer _instance;
}


