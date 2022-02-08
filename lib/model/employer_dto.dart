//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmployerDto {
  /// Returns a new [EmployerDto] instance.
  EmployerDto({
    this.name,
    this.addresse,
  });

  String name;

  AddressDto addresse;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmployerDto &&
     other.name == name &&
     other.addresse == addresse;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (name == null ? 0 : name.hashCode) +
    (addresse == null ? 0 : addresse.hashCode);

  @override
  String toString() => 'EmployerDto[name=$name, addresse=$addresse]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (addresse != null) {
      json[r'addresse'] = addresse;
    }
    return json;
  }

  /// Returns a new [EmployerDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmployerDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return EmployerDto(
        name: mapValueOfType<String>(json, r'name'),
        addresse: AddressDto.fromJson(json[r'addresse']),
      );
    }
    return null;
  }

  static List<EmployerDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(EmployerDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <EmployerDto>[];

  static Map<String, EmployerDto> mapFromJson(dynamic json) {
    final map = <String, EmployerDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = EmployerDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EmployerDto-objects as value to a dart map
  static Map<String, List<EmployerDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EmployerDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = EmployerDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

