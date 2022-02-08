//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HealthcarePartyHistoryStatusDto {
  /// Returns a new [HealthcarePartyHistoryStatusDto] instance.
  HealthcarePartyHistoryStatusDto({
    @required this.status,
    @required this.specialisationCode,
    @required this.startDate,
    @required this.active,
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
    (status == null ? 0 : status.hashCode) +
    (specialisationCode == null ? 0 : specialisationCode.hashCode) +
    (startDate == null ? 0 : startDate.hashCode) +
    (active == null ? 0 : active.hashCode);

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
  static HealthcarePartyHistoryStatusDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return HealthcarePartyHistoryStatusDto(
        status: HealthcarePartyHistoryStatusDtoStatusEnum.fromJson(json[r'status']),
        specialisationCode: mapValueOfType<String>(json, r'specialisationCode'),
        startDate: mapValueOfType<int>(json, r'startDate'),
        active: mapValueOfType<bool>(json, r'active'),
      );
    }
    return null;
  }

  static List<HealthcarePartyHistoryStatusDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(HealthcarePartyHistoryStatusDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <HealthcarePartyHistoryStatusDto>[];

  static Map<String, HealthcarePartyHistoryStatusDto> mapFromJson(dynamic json) {
    final map = <String, HealthcarePartyHistoryStatusDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = HealthcarePartyHistoryStatusDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of HealthcarePartyHistoryStatusDto-objects as value to a dart map
  static Map<String, List<HealthcarePartyHistoryStatusDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<HealthcarePartyHistoryStatusDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = HealthcarePartyHistoryStatusDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class HealthcarePartyHistoryStatusDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const HealthcarePartyHistoryStatusDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

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

  static HealthcarePartyHistoryStatusDtoStatusEnum fromJson(dynamic value) =>
    HealthcarePartyHistoryStatusDtoStatusEnumTypeTransformer().decode(value);

  static List<HealthcarePartyHistoryStatusDtoStatusEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(HealthcarePartyHistoryStatusDtoStatusEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <HealthcarePartyHistoryStatusDtoStatusEnum>[];
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
  HealthcarePartyHistoryStatusDtoStatusEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'trainee': return HealthcarePartyHistoryStatusDtoStatusEnum.trainee;
        case r'withconvention': return HealthcarePartyHistoryStatusDtoStatusEnum.withconvention;
        case r'accreditated': return HealthcarePartyHistoryStatusDtoStatusEnum.accreditated;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HealthcarePartyHistoryStatusDtoStatusEnumTypeTransformer] instance.
  static HealthcarePartyHistoryStatusDtoStatusEnumTypeTransformer _instance;
}


