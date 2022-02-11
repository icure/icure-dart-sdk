//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class PropertyTypeStubDto {
  /// Returns a new [PropertyTypeStubDto] instance.
  PropertyTypeStubDto({
    this.identifier,
    this.type,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? identifier;

  PropertyTypeStubDtoTypeEnum? type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is PropertyTypeStubDto &&
          other.identifier == identifier &&
          other.type == type;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
  (identifier == null ? 0 : identifier!.hashCode) +
      (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'PropertyTypeStubDto[identifier=$identifier, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (identifier != null) {
      json[r'identifier'] = identifier;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    return json;
  }

  /// Returns a new [PropertyTypeStubDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PropertyTypeStubDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PropertyTypeStubDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PropertyTypeStubDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PropertyTypeStubDto(
        identifier: mapValueOfType<String>(json, r'identifier'),
        type: PropertyTypeStubDtoTypeEnum.fromJson(json[r'type']),
      );
    }
    return null;
  }

  static List<PropertyTypeStubDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PropertyTypeStubDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PropertyTypeStubDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PropertyTypeStubDto> mapFromJson(dynamic json) {
    final map = <String, PropertyTypeStubDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PropertyTypeStubDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PropertyTypeStubDto-objects as value to a dart map
  static Map<String, List<PropertyTypeStubDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PropertyTypeStubDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PropertyTypeStubDto.listFromJson(entry.value, growable: growable,);
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


class PropertyTypeStubDtoTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PropertyTypeStubDtoTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const BOOLEAN = PropertyTypeStubDtoTypeEnum._(r'BOOLEAN');
  static const INTEGER = PropertyTypeStubDtoTypeEnum._(r'INTEGER');
  static const DOUBLE = PropertyTypeStubDtoTypeEnum._(r'DOUBLE');
  static const STRING = PropertyTypeStubDtoTypeEnum._(r'STRING');
  static const DATE = PropertyTypeStubDtoTypeEnum._(r'DATE');
  static const CLOB = PropertyTypeStubDtoTypeEnum._(r'CLOB');
  static const JSON = PropertyTypeStubDtoTypeEnum._(r'JSON');

  /// List of all possible values in this [enum][PropertyTypeStubDtoTypeEnum].
  static const values = <PropertyTypeStubDtoTypeEnum>[
    BOOLEAN,
    INTEGER,
    DOUBLE,
    STRING,
    DATE,
    CLOB,
    JSON,
  ];

  static PropertyTypeStubDtoTypeEnum? fromJson(dynamic value) => PropertyTypeStubDtoTypeEnumTypeTransformer().decode(value);

  static List<PropertyTypeStubDtoTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PropertyTypeStubDtoTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PropertyTypeStubDtoTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PropertyTypeStubDtoTypeEnum] to String,
/// and [decode] dynamic data back to [PropertyTypeStubDtoTypeEnum].
class PropertyTypeStubDtoTypeEnumTypeTransformer {
  factory PropertyTypeStubDtoTypeEnumTypeTransformer() => _instance ??= const PropertyTypeStubDtoTypeEnumTypeTransformer._();

  const PropertyTypeStubDtoTypeEnumTypeTransformer._();

  String encode(PropertyTypeStubDtoTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PropertyTypeStubDtoTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PropertyTypeStubDtoTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'BOOLEAN':
          return PropertyTypeStubDtoTypeEnum.BOOLEAN;
        case r'INTEGER':
          return PropertyTypeStubDtoTypeEnum.INTEGER;
        case r'DOUBLE':
          return PropertyTypeStubDtoTypeEnum.DOUBLE;
        case r'STRING':
          return PropertyTypeStubDtoTypeEnum.STRING;
        case r'DATE':
          return PropertyTypeStubDtoTypeEnum.DATE;
        case r'CLOB':
          return PropertyTypeStubDtoTypeEnum.CLOB;
        case r'JSON':
          return PropertyTypeStubDtoTypeEnum.JSON;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PropertyTypeStubDtoTypeEnumTypeTransformer] instance.
  static PropertyTypeStubDtoTypeEnumTypeTransformer? _instance;
}


