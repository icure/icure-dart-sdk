//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class VmpComponentDto {
  /// Returns a new [VmpComponentDto] instance.
  VmpComponentDto({
    this.code,
    this.virtualForm,
    this.routeOfAdministrations = const [],
    this.name,
    this.phaseNumber,
    this.virtualIngredients = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  VirtualFormDto? virtualForm;

  List<RouteOfAdministrationDto> routeOfAdministrations;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SamTextDto? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? phaseNumber;

  List<VirtualIngredientDto> virtualIngredients;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VmpComponentDto &&
          other.code == code &&
          other.virtualForm == virtualForm &&
          other.routeOfAdministrations == routeOfAdministrations &&
          other.name == name &&
          other.phaseNumber == phaseNumber &&
          other.virtualIngredients == virtualIngredients;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (code == null ? 0 : code!.hashCode) +
      (virtualForm == null ? 0 : virtualForm!.hashCode) +
      (routeOfAdministrations.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (phaseNumber == null ? 0 : phaseNumber!.hashCode) +
      (virtualIngredients.hashCode);

  @override
  String toString() =>
      'VmpComponentDto[code=$code, virtualForm=$virtualForm, routeOfAdministrations=$routeOfAdministrations, name=$name, phaseNumber=$phaseNumber, virtualIngredients=$virtualIngredients]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json[r'code'] = code;
    }
    if (virtualForm != null) {
      json[r'virtualForm'] = virtualForm;
    }
    json[r'routeOfAdministrations'] = routeOfAdministrations;
    if (name != null) {
      json[r'name'] = name;
    }
    if (phaseNumber != null) {
      json[r'phaseNumber'] = phaseNumber;
    }
    json[r'virtualIngredients'] = virtualIngredients;
    return json;
  }

  /// Returns a new [VmpComponentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VmpComponentDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VmpComponentDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VmpComponentDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VmpComponentDto(
        code: mapValueOfType<String>(json, r'code'),
        virtualForm: VirtualFormDto.fromJson(json[r'virtualForm']),
        routeOfAdministrations: RouteOfAdministrationDto.listFromJson(json[r'routeOfAdministrations']) ?? const [],
        name: SamTextDto.fromJson(json[r'name']),
        phaseNumber: mapValueOfType<int>(json, r'phaseNumber'),
        virtualIngredients: VirtualIngredientDto.listFromJson(json[r'virtualIngredients']) ?? const [],
      );
    }
    return null;
  }

  static List<VmpComponentDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <VmpComponentDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VmpComponentDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VmpComponentDto> mapFromJson(dynamic json) {
    final map = <String, VmpComponentDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VmpComponentDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VmpComponentDto-objects as value to a dart map
  static Map<String, List<VmpComponentDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<VmpComponentDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VmpComponentDto.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
