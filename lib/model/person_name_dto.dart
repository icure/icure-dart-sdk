//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PersonNameDto {
  /// Returns a new [PersonNameDto] instance.
  PersonNameDto({
    this.lastName,
    this.firstNames = const [],
    this.start,
    this.end,
    this.prefix = const [],
    this.suffix = const [],
    this.text,
    this.use,
  });

  /// Family name (often called 'Surname')
  String lastName;

  /// Given names (not always 'first'). Includes middle names. This repeating element order: Given Names appear in the correct order for presenting the name
  List<String> firstNames;

  /// Starting date of time period when name is/was valid for use. Date encoded as a fuzzy date on 8 positions (YYYYMMDD)
  int start;

  /// Ending date of time period when name is/was valid for use. Date encoded as a fuzzy date on 8 positions (YYYYMMDD)
  int end;

  /// Parts that come before the name. This repeating element order: Prefixes appear in the correct order for presenting the name
  List<String> prefix;

  /// Parts that come after the name. This repeating element order: Suffixes appear in the correct order for presenting the name
  List<String> suffix;

  /// Text representation of the full name
  String text;

  /// What is the use of this name
  PersonNameDtoUseEnum use;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PersonNameDto &&
     other.lastName == lastName &&
     other.firstNames == firstNames &&
     other.start == start &&
     other.end == end &&
     other.prefix == prefix &&
     other.suffix == suffix &&
     other.text == text &&
     other.use == use;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (lastName == null ? 0 : lastName.hashCode) +
    (firstNames == null ? 0 : firstNames.hashCode) +
    (start == null ? 0 : start.hashCode) +
    (end == null ? 0 : end.hashCode) +
    (prefix == null ? 0 : prefix.hashCode) +
    (suffix == null ? 0 : suffix.hashCode) +
    (text == null ? 0 : text.hashCode) +
    (use == null ? 0 : use.hashCode);

  @override
  String toString() => 'PersonNameDto[lastName=$lastName, firstNames=$firstNames, start=$start, end=$end, prefix=$prefix, suffix=$suffix, text=$text, use=$use]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (lastName != null) {
      json[r'lastName'] = lastName;
    }
      json[r'firstNames'] = firstNames;
    if (start != null) {
      json[r'start'] = start;
    }
    if (end != null) {
      json[r'end'] = end;
    }
      json[r'prefix'] = prefix;
      json[r'suffix'] = suffix;
    if (text != null) {
      json[r'text'] = text;
    }
    if (use != null) {
      json[r'use'] = use;
    }
    return json;
  }

  /// Returns a new [PersonNameDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PersonNameDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PersonNameDto(
        lastName: mapValueOfType<String>(json, r'lastName'),
        firstNames: json[r'firstNames'] is List
          ? (json[r'firstNames'] as List).cast<String>()
          : null,
        start: mapValueOfType<int>(json, r'start'),
        end: mapValueOfType<int>(json, r'end'),
        prefix: json[r'prefix'] is List
          ? (json[r'prefix'] as List).cast<String>()
          : null,
        suffix: json[r'suffix'] is List
          ? (json[r'suffix'] as List).cast<String>()
          : null,
        text: mapValueOfType<String>(json, r'text'),
        use: PersonNameDtoUseEnum.fromJson(json[r'use']),
      );
    }
    return null;
  }

  static List<PersonNameDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PersonNameDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PersonNameDto>[];

  static Map<String, PersonNameDto> mapFromJson(dynamic json) {
    final map = <String, PersonNameDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PersonNameDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PersonNameDto-objects as value to a dart map
  static Map<String, List<PersonNameDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PersonNameDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PersonNameDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

/// What is the use of this name
class PersonNameDtoUseEnum {
  /// Instantiate a new enum with the provided [value].
  const PersonNameDtoUseEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const usual = PersonNameDtoUseEnum._(r'usual');
  static const official = PersonNameDtoUseEnum._(r'official');
  static const temp = PersonNameDtoUseEnum._(r'temp');
  static const nickname = PersonNameDtoUseEnum._(r'nickname');
  static const anonymous = PersonNameDtoUseEnum._(r'anonymous');
  static const maiden = PersonNameDtoUseEnum._(r'maiden');
  static const old = PersonNameDtoUseEnum._(r'old');
  static const other = PersonNameDtoUseEnum._(r'other');

  /// List of all possible values in this [enum][PersonNameDtoUseEnum].
  static const values = <PersonNameDtoUseEnum>[
    usual,
    official,
    temp,
    nickname,
    anonymous,
    maiden,
    old,
    other,
  ];

  static PersonNameDtoUseEnum fromJson(dynamic value) =>
    PersonNameDtoUseEnumTypeTransformer().decode(value);

  static List<PersonNameDtoUseEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PersonNameDtoUseEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PersonNameDtoUseEnum>[];
}

/// Transformation class that can [encode] an instance of [PersonNameDtoUseEnum] to String,
/// and [decode] dynamic data back to [PersonNameDtoUseEnum].
class PersonNameDtoUseEnumTypeTransformer {
  factory PersonNameDtoUseEnumTypeTransformer() => _instance ??= const PersonNameDtoUseEnumTypeTransformer._();

  const PersonNameDtoUseEnumTypeTransformer._();

  String encode(PersonNameDtoUseEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PersonNameDtoUseEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PersonNameDtoUseEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'usual': return PersonNameDtoUseEnum.usual;
        case r'official': return PersonNameDtoUseEnum.official;
        case r'temp': return PersonNameDtoUseEnum.temp;
        case r'nickname': return PersonNameDtoUseEnum.nickname;
        case r'anonymous': return PersonNameDtoUseEnum.anonymous;
        case r'maiden': return PersonNameDtoUseEnum.maiden;
        case r'old': return PersonNameDtoUseEnum.old;
        case r'other': return PersonNameDtoUseEnum.other;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PersonNameDtoUseEnumTypeTransformer] instance.
  static PersonNameDtoUseEnumTypeTransformer _instance;
}


