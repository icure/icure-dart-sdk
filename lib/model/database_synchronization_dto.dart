//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DatabaseSynchronizationDto {
  /// Returns a new [DatabaseSynchronizationDto] instance.
  DatabaseSynchronizationDto({
    this.source_,
    this.target,
    this.filter,
    this.localTarget,
  });

  String source_;

  String target;

  String filter;

  DatabaseSynchronizationDtoLocalTargetEnum localTarget;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DatabaseSynchronizationDto &&
     other.source_ == source_ &&
     other.target == target &&
     other.filter == filter &&
     other.localTarget == localTarget;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (source_ == null ? 0 : source_.hashCode) +
    (target == null ? 0 : target.hashCode) +
    (filter == null ? 0 : filter.hashCode) +
    (localTarget == null ? 0 : localTarget.hashCode);

  @override
  String toString() => 'DatabaseSynchronizationDto[source_=$source_, target=$target, filter=$filter, localTarget=$localTarget]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (source_ != null) {
      json[r'source'] = source_;
    }
    if (target != null) {
      json[r'target'] = target;
    }
    if (filter != null) {
      json[r'filter'] = filter;
    }
    if (localTarget != null) {
      json[r'localTarget'] = localTarget;
    }
    return json;
  }

  /// Returns a new [DatabaseSynchronizationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DatabaseSynchronizationDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return DatabaseSynchronizationDto(
        source_: mapValueOfType<String>(json, r'source'),
        target: mapValueOfType<String>(json, r'target'),
        filter: mapValueOfType<String>(json, r'filter'),
        localTarget: DatabaseSynchronizationDtoLocalTargetEnum.fromJson(json[r'localTarget']),
      );
    }
    return null;
  }

  static List<DatabaseSynchronizationDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DatabaseSynchronizationDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DatabaseSynchronizationDto>[];

  static Map<String, DatabaseSynchronizationDto> mapFromJson(dynamic json) {
    final map = <String, DatabaseSynchronizationDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = DatabaseSynchronizationDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DatabaseSynchronizationDto-objects as value to a dart map
  static Map<String, List<DatabaseSynchronizationDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DatabaseSynchronizationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = DatabaseSynchronizationDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class DatabaseSynchronizationDtoLocalTargetEnum {
  /// Instantiate a new enum with the provided [value].
  const DatabaseSynchronizationDtoLocalTargetEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const base = DatabaseSynchronizationDtoLocalTargetEnum._(r'base');
  static const healthdata = DatabaseSynchronizationDtoLocalTargetEnum._(r'healthdata');
  static const patient = DatabaseSynchronizationDtoLocalTargetEnum._(r'patient');

  /// List of all possible values in this [enum][DatabaseSynchronizationDtoLocalTargetEnum].
  static const values = <DatabaseSynchronizationDtoLocalTargetEnum>[
    base,
    healthdata,
    patient,
  ];

  static DatabaseSynchronizationDtoLocalTargetEnum fromJson(dynamic value) =>
    DatabaseSynchronizationDtoLocalTargetEnumTypeTransformer().decode(value);

  static List<DatabaseSynchronizationDtoLocalTargetEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DatabaseSynchronizationDtoLocalTargetEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DatabaseSynchronizationDtoLocalTargetEnum>[];
}

/// Transformation class that can [encode] an instance of [DatabaseSynchronizationDtoLocalTargetEnum] to String,
/// and [decode] dynamic data back to [DatabaseSynchronizationDtoLocalTargetEnum].
class DatabaseSynchronizationDtoLocalTargetEnumTypeTransformer {
  factory DatabaseSynchronizationDtoLocalTargetEnumTypeTransformer() => _instance ??= const DatabaseSynchronizationDtoLocalTargetEnumTypeTransformer._();

  const DatabaseSynchronizationDtoLocalTargetEnumTypeTransformer._();

  String encode(DatabaseSynchronizationDtoLocalTargetEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DatabaseSynchronizationDtoLocalTargetEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DatabaseSynchronizationDtoLocalTargetEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'base': return DatabaseSynchronizationDtoLocalTargetEnum.base;
        case r'healthdata': return DatabaseSynchronizationDtoLocalTargetEnum.healthdata;
        case r'patient': return DatabaseSynchronizationDtoLocalTargetEnum.patient;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DatabaseSynchronizationDtoLocalTargetEnumTypeTransformer] instance.
  static DatabaseSynchronizationDtoLocalTargetEnumTypeTransformer _instance;
}


