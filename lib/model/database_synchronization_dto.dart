//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? target;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filter;

  DatabaseSynchronizationDtoLocalTargetEnum? localTarget;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DatabaseSynchronizationDto &&
     other.source_ == source_ &&
     other.target == target &&
     other.filter == filter &&
     other.localTarget == localTarget;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (source_ == null ? 0 : source_!.hashCode) +
    (target == null ? 0 : target!.hashCode) +
    (filter == null ? 0 : filter!.hashCode) +
    (localTarget == null ? 0 : localTarget!.hashCode);

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
  static DatabaseSynchronizationDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DatabaseSynchronizationDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DatabaseSynchronizationDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DatabaseSynchronizationDto(
        source_: mapValueOfType<String>(json, r'source'),
        target: mapValueOfType<String>(json, r'target'),
        filter: mapValueOfType<String>(json, r'filter'),
        localTarget: DatabaseSynchronizationDtoLocalTargetEnum.fromJson(json[r'localTarget']),
      );
    }
    return null;
  }

  static List<DatabaseSynchronizationDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DatabaseSynchronizationDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DatabaseSynchronizationDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DatabaseSynchronizationDto> mapFromJson(dynamic json) {
    final map = <String, DatabaseSynchronizationDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DatabaseSynchronizationDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DatabaseSynchronizationDto-objects as value to a dart map
  static Map<String, List<DatabaseSynchronizationDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DatabaseSynchronizationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DatabaseSynchronizationDto.listFromJson(entry.value, growable: growable,);
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


class DatabaseSynchronizationDtoLocalTargetEnum {
  /// Instantiate a new enum with the provided [value].
  const DatabaseSynchronizationDtoLocalTargetEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

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

  static DatabaseSynchronizationDtoLocalTargetEnum? fromJson(dynamic value) => DatabaseSynchronizationDtoLocalTargetEnumTypeTransformer().decode(value);

  static List<DatabaseSynchronizationDtoLocalTargetEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DatabaseSynchronizationDtoLocalTargetEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DatabaseSynchronizationDtoLocalTargetEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
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
  DatabaseSynchronizationDtoLocalTargetEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'base': return DatabaseSynchronizationDtoLocalTargetEnum.base;
        case r'healthdata': return DatabaseSynchronizationDtoLocalTargetEnum.healthdata;
        case r'patient': return DatabaseSynchronizationDtoLocalTargetEnum.patient;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DatabaseSynchronizationDtoLocalTargetEnumTypeTransformer] instance.
  static DatabaseSynchronizationDtoLocalTargetEnumTypeTransformer? _instance;
}


