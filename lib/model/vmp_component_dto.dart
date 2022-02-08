//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

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

  String code;

  VirtualFormDto virtualForm;

  List<RouteOfAdministrationDto> routeOfAdministrations;

  SamTextDto name;

  int phaseNumber;

  List<VirtualIngredientDto> virtualIngredients;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VmpComponentDto &&
     other.code == code &&
     other.virtualForm == virtualForm &&
     other.routeOfAdministrations == routeOfAdministrations &&
     other.name == name &&
     other.phaseNumber == phaseNumber &&
     other.virtualIngredients == virtualIngredients;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (code == null ? 0 : code.hashCode) +
    (virtualForm == null ? 0 : virtualForm.hashCode) +
    (routeOfAdministrations == null ? 0 : routeOfAdministrations.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (phaseNumber == null ? 0 : phaseNumber.hashCode) +
    (virtualIngredients == null ? 0 : virtualIngredients.hashCode);

  @override
  String toString() => 'VmpComponentDto[code=$code, virtualForm=$virtualForm, routeOfAdministrations=$routeOfAdministrations, name=$name, phaseNumber=$phaseNumber, virtualIngredients=$virtualIngredients]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json[r'code'] = code;
    }
    if (virtualForm != null) {
      json[r'virtualForm'] = virtualForm;
    }
    if (routeOfAdministrations != null) {
      json[r'routeOfAdministrations'] = routeOfAdministrations;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (phaseNumber != null) {
      json[r'phaseNumber'] = phaseNumber;
    }
    if (virtualIngredients != null) {
      json[r'virtualIngredients'] = virtualIngredients;
    }
    return json;
  }

  /// Returns a new [VmpComponentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VmpComponentDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return VmpComponentDto(
        code: mapValueOfType<String>(json, r'code'),
        virtualForm: VirtualFormDto.fromJson(json[r'virtualForm']),
        routeOfAdministrations: RouteOfAdministrationDto.listFromJson(json[r'routeOfAdministrations']),
        name: SamTextDto.fromJson(json[r'name']),
        phaseNumber: mapValueOfType<int>(json, r'phaseNumber'),
        virtualIngredients: VirtualIngredientDto.listFromJson(json[r'virtualIngredients']),
      );
    }
    return null;
  }

  static List<VmpComponentDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(VmpComponentDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <VmpComponentDto>[];

  static Map<String, VmpComponentDto> mapFromJson(dynamic json) {
    final map = <String, VmpComponentDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = VmpComponentDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of VmpComponentDto-objects as value to a dart map
  static Map<String, List<VmpComponentDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<VmpComponentDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = VmpComponentDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

