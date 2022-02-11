//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class SumehrValidityDto {
  /// Returns a new [SumehrValidityDto] instance.
  SumehrValidityDto({
    required this.sumehrValid,
  });

  SumehrValidityDtoSumehrValidEnum sumehrValid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SumehrValidityDto &&
     other.sumehrValid == sumehrValid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sumehrValid.hashCode);

  @override
  String toString() => 'SumehrValidityDto[sumehrValid=$sumehrValid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'sumehrValid'] = sumehrValid;
    return json;
  }

  /// Returns a new [SumehrValidityDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SumehrValidityDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SumehrValidityDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SumehrValidityDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SumehrValidityDto(
        sumehrValid: SumehrValidityDtoSumehrValidEnum.fromJson(json[r'sumehrValid'])!,
      );
    }
    return null;
  }

  static List<SumehrValidityDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SumehrValidityDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SumehrValidityDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SumehrValidityDto> mapFromJson(dynamic json) {
    final map = <String, SumehrValidityDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SumehrValidityDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SumehrValidityDto-objects as value to a dart map
  static Map<String, List<SumehrValidityDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SumehrValidityDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SumehrValidityDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'sumehrValid',
  };
}


class SumehrValidityDtoSumehrValidEnum {
  /// Instantiate a new enum with the provided [value].
  const SumehrValidityDtoSumehrValidEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const absent = SumehrValidityDtoSumehrValidEnum._(r'absent');
  static const uptodate = SumehrValidityDtoSumehrValidEnum._(r'uptodate');
  static const outdated = SumehrValidityDtoSumehrValidEnum._(r'outdated');

  /// List of all possible values in this [enum][SumehrValidityDtoSumehrValidEnum].
  static const values = <SumehrValidityDtoSumehrValidEnum>[
    absent,
    uptodate,
    outdated,
  ];

  static SumehrValidityDtoSumehrValidEnum? fromJson(dynamic value) => SumehrValidityDtoSumehrValidEnumTypeTransformer().decode(value);

  static List<SumehrValidityDtoSumehrValidEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SumehrValidityDtoSumehrValidEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SumehrValidityDtoSumehrValidEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SumehrValidityDtoSumehrValidEnum] to String,
/// and [decode] dynamic data back to [SumehrValidityDtoSumehrValidEnum].
class SumehrValidityDtoSumehrValidEnumTypeTransformer {
  factory SumehrValidityDtoSumehrValidEnumTypeTransformer() => _instance ??= const SumehrValidityDtoSumehrValidEnumTypeTransformer._();

  const SumehrValidityDtoSumehrValidEnumTypeTransformer._();

  String encode(SumehrValidityDtoSumehrValidEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SumehrValidityDtoSumehrValidEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SumehrValidityDtoSumehrValidEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'absent': return SumehrValidityDtoSumehrValidEnum.absent;
        case r'uptodate': return SumehrValidityDtoSumehrValidEnum.uptodate;
        case r'outdated': return SumehrValidityDtoSumehrValidEnum.outdated;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SumehrValidityDtoSumehrValidEnumTypeTransformer] instance.
  static SumehrValidityDtoSumehrValidEnumTypeTransformer? _instance;
}


