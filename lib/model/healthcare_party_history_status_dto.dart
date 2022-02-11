//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class HealthcarePartyHistoryStatusDto {
  /// Returns a new [HealthcarePartyHistoryStatusDto] instance.
  HealthcarePartyHistoryStatusDto({
    required this.status,
    required this.specialisationCode,
    required this.startDate,
    required this.active,
  });

  HealthcarePartyHistoryStatusDtoStatusEnum status;

  String specialisationCode;

  int startDate;

  bool active;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HealthcarePartyHistoryStatusDto &&
     other.status == status &&
     other.specialisationCode == specialisationCode &&
     other.startDate == startDate &&
     other.active == active;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status.hashCode) +
    (specialisationCode.hashCode) +
    (startDate.hashCode) +
    (active.hashCode);

  @override
  String toString() => 'HealthcarePartyHistoryStatusDto[status=$status, specialisationCode=$specialisationCode, startDate=$startDate, active=$active]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = status;
      json[r'specialisationCode'] = specialisationCode;
      json[r'startDate'] = startDate;
      json[r'active'] = active;
    return json;
  }

  /// Returns a new [HealthcarePartyHistoryStatusDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HealthcarePartyHistoryStatusDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HealthcarePartyHistoryStatusDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HealthcarePartyHistoryStatusDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HealthcarePartyHistoryStatusDto(
        status: HealthcarePartyHistoryStatusDtoStatusEnum.fromJson(json[r'status'])!,
        specialisationCode: mapValueOfType<String>(json, r'specialisationCode')!,
        startDate: mapValueOfType<int>(json, r'startDate')!,
        active: mapValueOfType<bool>(json, r'active')!,
      );
    }
    return null;
  }

  static List<HealthcarePartyHistoryStatusDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HealthcarePartyHistoryStatusDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HealthcarePartyHistoryStatusDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HealthcarePartyHistoryStatusDto> mapFromJson(dynamic json) {
    final map = <String, HealthcarePartyHistoryStatusDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HealthcarePartyHistoryStatusDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HealthcarePartyHistoryStatusDto-objects as value to a dart map
  static Map<String, List<HealthcarePartyHistoryStatusDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HealthcarePartyHistoryStatusDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HealthcarePartyHistoryStatusDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
    'specialisationCode',
    'startDate',
    'active',
  };
}


class HealthcarePartyHistoryStatusDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const HealthcarePartyHistoryStatusDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const trainee = HealthcarePartyHistoryStatusDtoStatusEnum._(r'trainee');
  static const withconvention = HealthcarePartyHistoryStatusDtoStatusEnum._(r'withconvention');
  static const accreditated = HealthcarePartyHistoryStatusDtoStatusEnum._(r'accreditated');

  /// List of all possible values in this [enum][HealthcarePartyHistoryStatusDtoStatusEnum].
  static const values = <HealthcarePartyHistoryStatusDtoStatusEnum>[
    trainee,
    withconvention,
    accreditated,
  ];

  static HealthcarePartyHistoryStatusDtoStatusEnum? fromJson(dynamic value) => HealthcarePartyHistoryStatusDtoStatusEnumTypeTransformer().decode(value);

  static List<HealthcarePartyHistoryStatusDtoStatusEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HealthcarePartyHistoryStatusDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HealthcarePartyHistoryStatusDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HealthcarePartyHistoryStatusDtoStatusEnum] to String,
/// and [decode] dynamic data back to [HealthcarePartyHistoryStatusDtoStatusEnum].
class HealthcarePartyHistoryStatusDtoStatusEnumTypeTransformer {
  factory HealthcarePartyHistoryStatusDtoStatusEnumTypeTransformer() => _instance ??= const HealthcarePartyHistoryStatusDtoStatusEnumTypeTransformer._();

  const HealthcarePartyHistoryStatusDtoStatusEnumTypeTransformer._();

  String encode(HealthcarePartyHistoryStatusDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HealthcarePartyHistoryStatusDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HealthcarePartyHistoryStatusDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'trainee': return HealthcarePartyHistoryStatusDtoStatusEnum.trainee;
        case r'withconvention': return HealthcarePartyHistoryStatusDtoStatusEnum.withconvention;
        case r'accreditated': return HealthcarePartyHistoryStatusDtoStatusEnum.accreditated;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HealthcarePartyHistoryStatusDtoStatusEnumTypeTransformer] instance.
  static HealthcarePartyHistoryStatusDtoStatusEnumTypeTransformer? _instance;
}


