//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PermissionItemDto {
  /// Returns a new [PermissionItemDto] instance.
  PermissionItemDto({
    @required this.type,
    @required this.predicate,
  });

  PermissionItemDtoTypeEnum type;

  Object predicate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PermissionItemDto &&
     other.type == type &&
     other.predicate == predicate;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (type == null ? 0 : type.hashCode) +
    (predicate == null ? 0 : predicate.hashCode);

  @override
  String toString() => 'PermissionItemDto[type=$type, predicate=$predicate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = type;
      json[r'predicate'] = predicate;
    return json;
  }

  /// Returns a new [PermissionItemDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PermissionItemDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PermissionItemDto(
        type: PermissionItemDtoTypeEnum.fromJson(json[r'type']),
        predicate: mapValueOfType<Object>(json, r'predicate'),
      );
    }
    return null;
  }

  static List<PermissionItemDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PermissionItemDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PermissionItemDto>[];

  static Map<String, PermissionItemDto> mapFromJson(dynamic json) {
    final map = <String, PermissionItemDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PermissionItemDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PermissionItemDto-objects as value to a dart map
  static Map<String, List<PermissionItemDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PermissionItemDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PermissionItemDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class PermissionItemDtoTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PermissionItemDtoTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const AUTHENTICATE = PermissionItemDtoTypeEnum._(r'AUTHENTICATE');
  static const ADMIN = PermissionItemDtoTypeEnum._(r'ADMIN');
  static const PATIENT_VIEW = PermissionItemDtoTypeEnum._(r'PATIENT_VIEW');
  static const PATIENT_CREATE = PermissionItemDtoTypeEnum._(r'PATIENT_CREATE');
  static const PATIENT_CHANGE_DELETE = PermissionItemDtoTypeEnum._(r'PATIENT_CHANGE_DELETE');
  static const MEDICAL_DATA_VIEW = PermissionItemDtoTypeEnum._(r'MEDICAL_DATA_VIEW');
  static const MEDICAL_DATA_CREATE = PermissionItemDtoTypeEnum._(r'MEDICAL_DATA_CREATE');
  static const MEDICAL_CHANGE_DELETE = PermissionItemDtoTypeEnum._(r'MEDICAL_CHANGE_DELETE');
  static const FINANCIAL_DATA_VIEW = PermissionItemDtoTypeEnum._(r'FINANCIAL_DATA_VIEW');
  static const FINANCIAL_DATA_CREATE = PermissionItemDtoTypeEnum._(r'FINANCIAL_DATA_CREATE');
  static const FINANCIAL_CHANGE_DELETE = PermissionItemDtoTypeEnum._(r'FINANCIAL_CHANGE_DELETE');

  /// List of all possible values in this [enum][PermissionItemDtoTypeEnum].
  static const values = <PermissionItemDtoTypeEnum>[
    AUTHENTICATE,
    ADMIN,
    PATIENT_VIEW,
    PATIENT_CREATE,
    PATIENT_CHANGE_DELETE,
    MEDICAL_DATA_VIEW,
    MEDICAL_DATA_CREATE,
    MEDICAL_CHANGE_DELETE,
    FINANCIAL_DATA_VIEW,
    FINANCIAL_DATA_CREATE,
    FINANCIAL_CHANGE_DELETE,
  ];

  static PermissionItemDtoTypeEnum fromJson(dynamic value) =>
    PermissionItemDtoTypeEnumTypeTransformer().decode(value);

  static List<PermissionItemDtoTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PermissionItemDtoTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PermissionItemDtoTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [PermissionItemDtoTypeEnum] to String,
/// and [decode] dynamic data back to [PermissionItemDtoTypeEnum].
class PermissionItemDtoTypeEnumTypeTransformer {
  factory PermissionItemDtoTypeEnumTypeTransformer() => _instance ??= const PermissionItemDtoTypeEnumTypeTransformer._();

  const PermissionItemDtoTypeEnumTypeTransformer._();

  String encode(PermissionItemDtoTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PermissionItemDtoTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PermissionItemDtoTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'AUTHENTICATE': return PermissionItemDtoTypeEnum.AUTHENTICATE;
        case r'ADMIN': return PermissionItemDtoTypeEnum.ADMIN;
        case r'PATIENT_VIEW': return PermissionItemDtoTypeEnum.PATIENT_VIEW;
        case r'PATIENT_CREATE': return PermissionItemDtoTypeEnum.PATIENT_CREATE;
        case r'PATIENT_CHANGE_DELETE': return PermissionItemDtoTypeEnum.PATIENT_CHANGE_DELETE;
        case r'MEDICAL_DATA_VIEW': return PermissionItemDtoTypeEnum.MEDICAL_DATA_VIEW;
        case r'MEDICAL_DATA_CREATE': return PermissionItemDtoTypeEnum.MEDICAL_DATA_CREATE;
        case r'MEDICAL_CHANGE_DELETE': return PermissionItemDtoTypeEnum.MEDICAL_CHANGE_DELETE;
        case r'FINANCIAL_DATA_VIEW': return PermissionItemDtoTypeEnum.FINANCIAL_DATA_VIEW;
        case r'FINANCIAL_DATA_CREATE': return PermissionItemDtoTypeEnum.FINANCIAL_DATA_CREATE;
        case r'FINANCIAL_CHANGE_DELETE': return PermissionItemDtoTypeEnum.FINANCIAL_CHANGE_DELETE;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PermissionItemDtoTypeEnumTypeTransformer] instance.
  static PermissionItemDtoTypeEnumTypeTransformer _instance;
}


