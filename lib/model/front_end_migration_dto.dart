//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class FrontEndMigrationDto {
  /// Returns a new [FrontEndMigrationDto] instance.
  FrontEndMigrationDto({
    required this.id,
    this.rev,
    this.deletionDate,
    this.name,
    this.startDate,
    this.endDate,
    this.status,
    this.logs,
    this.userId,
    this.startKey,
    this.startKeyDocId,
    this.processCount,
    this.properties = const {},
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deletionDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endDate;

  FrontEndMigrationDtoStatusEnum? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startKeyDocId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? processCount;

  /// Extra properties for the fem. Those properties are typed (see class Property)
  Set<PropertyStubDto> properties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FrontEndMigrationDto &&
     other.id == id &&
     other.rev == rev &&
     other.deletionDate == deletionDate &&
     other.name == name &&
     other.startDate == startDate &&
     other.endDate == endDate &&
     other.status == status &&
     other.logs == logs &&
     other.userId == userId &&
     other.startKey == startKey &&
     other.startKeyDocId == startKeyDocId &&
     other.processCount == processCount &&
     other.properties == properties;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (rev == null ? 0 : rev!.hashCode) +
    (deletionDate == null ? 0 : deletionDate!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (logs == null ? 0 : logs!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (startKey == null ? 0 : startKey!.hashCode) +
    (startKeyDocId == null ? 0 : startKeyDocId!.hashCode) +
    (processCount == null ? 0 : processCount!.hashCode) +
    (properties.hashCode);

  @override
  String toString() => 'FrontEndMigrationDto[id=$id, rev=$rev, deletionDate=$deletionDate, name=$name, startDate=$startDate, endDate=$endDate, status=$status, logs=$logs, userId=$userId, startKey=$startKey, startKeyDocId=$startKeyDocId, processCount=$processCount, properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (rev != null) {
      json[r'rev'] = rev;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (startDate != null) {
      json[r'startDate'] = startDate;
    }
    if (endDate != null) {
      json[r'endDate'] = endDate;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (logs != null) {
      json[r'logs'] = logs;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    if (startKey != null) {
      json[r'startKey'] = startKey;
    }
    if (startKeyDocId != null) {
      json[r'startKeyDocId'] = startKeyDocId;
    }
    if (processCount != null) {
      json[r'processCount'] = processCount;
    }
      json[r'properties'] = properties;
    return json;
  }

  /// Returns a new [FrontEndMigrationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FrontEndMigrationDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FrontEndMigrationDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FrontEndMigrationDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FrontEndMigrationDto(
        id: mapValueOfType<String>(json, r'id')!,
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        name: mapValueOfType<String>(json, r'name'),
        startDate: mapValueOfType<int>(json, r'startDate'),
        endDate: mapValueOfType<int>(json, r'endDate'),
        status: FrontEndMigrationDtoStatusEnum.fromJson(json[r'status']),
        logs: mapValueOfType<String>(json, r'logs'),
        userId: mapValueOfType<String>(json, r'userId'),
        startKey: mapValueOfType<String>(json, r'startKey'),
        startKeyDocId: mapValueOfType<String>(json, r'startKeyDocId'),
        processCount: mapValueOfType<int>(json, r'processCount'),
        properties: PropertyStubDto.listFromJson(json[r'properties'])!.toSet(),
      );
    }
    return null;
  }

  static List<FrontEndMigrationDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FrontEndMigrationDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FrontEndMigrationDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FrontEndMigrationDto> mapFromJson(dynamic json) {
    final map = <String, FrontEndMigrationDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FrontEndMigrationDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FrontEndMigrationDto-objects as value to a dart map
  static Map<String, List<FrontEndMigrationDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FrontEndMigrationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FrontEndMigrationDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'properties',
  };
}


class FrontEndMigrationDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const FrontEndMigrationDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const STARTED = FrontEndMigrationDtoStatusEnum._(r'STARTED');
  static const PAUSED = FrontEndMigrationDtoStatusEnum._(r'PAUSED');
  static const ERROR = FrontEndMigrationDtoStatusEnum._(r'ERROR');
  static const SUCCESS = FrontEndMigrationDtoStatusEnum._(r'SUCCESS');

  /// List of all possible values in this [enum][FrontEndMigrationDtoStatusEnum].
  static const values = <FrontEndMigrationDtoStatusEnum>[
    STARTED,
    PAUSED,
    ERROR,
    SUCCESS,
  ];

  static FrontEndMigrationDtoStatusEnum? fromJson(dynamic value) => FrontEndMigrationDtoStatusEnumTypeTransformer().decode(value);

  static List<FrontEndMigrationDtoStatusEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FrontEndMigrationDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FrontEndMigrationDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FrontEndMigrationDtoStatusEnum] to String,
/// and [decode] dynamic data back to [FrontEndMigrationDtoStatusEnum].
class FrontEndMigrationDtoStatusEnumTypeTransformer {
  factory FrontEndMigrationDtoStatusEnumTypeTransformer() => _instance ??= const FrontEndMigrationDtoStatusEnumTypeTransformer._();

  const FrontEndMigrationDtoStatusEnumTypeTransformer._();

  String encode(FrontEndMigrationDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FrontEndMigrationDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FrontEndMigrationDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'STARTED': return FrontEndMigrationDtoStatusEnum.STARTED;
        case r'PAUSED': return FrontEndMigrationDtoStatusEnum.PAUSED;
        case r'ERROR': return FrontEndMigrationDtoStatusEnum.ERROR;
        case r'SUCCESS': return FrontEndMigrationDtoStatusEnum.SUCCESS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FrontEndMigrationDtoStatusEnumTypeTransformer] instance.
  static FrontEndMigrationDtoStatusEnumTypeTransformer? _instance;
}


