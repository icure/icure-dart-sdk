//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TypedValueDtoObject {
  /// Returns a new [TypedValueDtoObject] instance.
  TypedValueDtoObject({
    this.type,
    this.booleanValue,
    this.integerValue,
    this.doubleValue,
    this.stringValue,
    this.dateValue,
    this.encryptedSelf,
  });

  TypedValueDtoObjectTypeEnum type;

  bool booleanValue;

  int integerValue;

  double doubleValue;

  String stringValue;

  DateTime dateValue;

  /// The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
  String encryptedSelf;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TypedValueDtoObject &&
     other.type == type &&
     other.booleanValue == booleanValue &&
     other.integerValue == integerValue &&
     other.doubleValue == doubleValue &&
     other.stringValue == stringValue &&
     other.dateValue == dateValue &&
     other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (type == null ? 0 : type.hashCode) +
    (booleanValue == null ? 0 : booleanValue.hashCode) +
    (integerValue == null ? 0 : integerValue.hashCode) +
    (doubleValue == null ? 0 : doubleValue.hashCode) +
    (stringValue == null ? 0 : stringValue.hashCode) +
    (dateValue == null ? 0 : dateValue.hashCode) +
    (encryptedSelf == null ? 0 : encryptedSelf.hashCode);

  @override
  String toString() => 'TypedValueDtoObject[type=$type, booleanValue=$booleanValue, integerValue=$integerValue, doubleValue=$doubleValue, stringValue=$stringValue, dateValue=$dateValue, encryptedSelf=$encryptedSelf]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (type != null) {
      json[r'type'] = type;
    }
    if (booleanValue != null) {
      json[r'booleanValue'] = booleanValue;
    }
    if (integerValue != null) {
      json[r'integerValue'] = integerValue;
    }
    if (doubleValue != null) {
      json[r'doubleValue'] = doubleValue;
    }
    if (stringValue != null) {
      json[r'stringValue'] = stringValue;
    }
    if (dateValue != null) {
      json[r'dateValue'] = dateValue.toUtc().toIso8601String();
    }
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [TypedValueDtoObject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TypedValueDtoObject fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return TypedValueDtoObject(
        type: TypedValueDtoObjectTypeEnum.fromJson(json[r'type']),
        booleanValue: mapValueOfType<bool>(json, r'booleanValue'),
        integerValue: mapValueOfType<int>(json, r'integerValue'),
        doubleValue: mapValueOfType<double>(json, r'doubleValue'),
        stringValue: mapValueOfType<String>(json, r'stringValue'),
        dateValue: mapDateTime(json, r'dateValue', ''),
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<TypedValueDtoObject> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TypedValueDtoObject.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TypedValueDtoObject>[];

  static Map<String, TypedValueDtoObject> mapFromJson(dynamic json) {
    final map = <String, TypedValueDtoObject>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = TypedValueDtoObject.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TypedValueDtoObject-objects as value to a dart map
  static Map<String, List<TypedValueDtoObject>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TypedValueDtoObject>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = TypedValueDtoObject.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class TypedValueDtoObjectTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TypedValueDtoObjectTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const BOOLEAN = TypedValueDtoObjectTypeEnum._(r'BOOLEAN');
  static const INTEGER = TypedValueDtoObjectTypeEnum._(r'INTEGER');
  static const DOUBLE = TypedValueDtoObjectTypeEnum._(r'DOUBLE');
  static const STRING = TypedValueDtoObjectTypeEnum._(r'STRING');
  static const DATE = TypedValueDtoObjectTypeEnum._(r'DATE');
  static const CLOB = TypedValueDtoObjectTypeEnum._(r'CLOB');
  static const JSON = TypedValueDtoObjectTypeEnum._(r'JSON');

  /// List of all possible values in this [enum][TypedValueDtoObjectTypeEnum].
  static const values = <TypedValueDtoObjectTypeEnum>[
    BOOLEAN,
    INTEGER,
    DOUBLE,
    STRING,
    DATE,
    CLOB,
    JSON,
  ];

  static TypedValueDtoObjectTypeEnum fromJson(dynamic value) =>
    TypedValueDtoObjectTypeEnumTypeTransformer().decode(value);

  static List<TypedValueDtoObjectTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TypedValueDtoObjectTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TypedValueDtoObjectTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [TypedValueDtoObjectTypeEnum] to String,
/// and [decode] dynamic data back to [TypedValueDtoObjectTypeEnum].
class TypedValueDtoObjectTypeEnumTypeTransformer {
  factory TypedValueDtoObjectTypeEnumTypeTransformer() => _instance ??= const TypedValueDtoObjectTypeEnumTypeTransformer._();

  const TypedValueDtoObjectTypeEnumTypeTransformer._();

  String encode(TypedValueDtoObjectTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TypedValueDtoObjectTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TypedValueDtoObjectTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'BOOLEAN': return TypedValueDtoObjectTypeEnum.BOOLEAN;
        case r'INTEGER': return TypedValueDtoObjectTypeEnum.INTEGER;
        case r'DOUBLE': return TypedValueDtoObjectTypeEnum.DOUBLE;
        case r'STRING': return TypedValueDtoObjectTypeEnum.STRING;
        case r'DATE': return TypedValueDtoObjectTypeEnum.DATE;
        case r'CLOB': return TypedValueDtoObjectTypeEnum.CLOB;
        case r'JSON': return TypedValueDtoObjectTypeEnum.JSON;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TypedValueDtoObjectTypeEnumTypeTransformer] instance.
  static TypedValueDtoObjectTypeEnumTypeTransformer _instance;
}


