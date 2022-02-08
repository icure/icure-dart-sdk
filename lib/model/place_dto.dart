//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PlaceDto {
  /// Returns a new [PlaceDto] instance.
  PlaceDto({
    @required this.id,
    this.rev,
    this.deletionDate,
    this.name,
    this.address,
  });

  String id;

  String rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  int deletionDate;

  String name;

  AddressDto address;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PlaceDto &&
     other.id == id &&
     other.rev == rev &&
     other.deletionDate == deletionDate &&
     other.name == name &&
     other.address == address;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (rev == null ? 0 : rev.hashCode) +
    (deletionDate == null ? 0 : deletionDate.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (address == null ? 0 : address.hashCode);

  @override
  String toString() => 'PlaceDto[id=$id, rev=$rev, deletionDate=$deletionDate, name=$name, address=$address]';

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
    if (address != null) {
      json[r'address'] = address;
    }
    return json;
  }

  /// Returns a new [PlaceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlaceDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PlaceDto(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        name: mapValueOfType<String>(json, r'name'),
        address: AddressDto.fromJson(json[r'address']),
      );
    }
    return null;
  }

  static List<PlaceDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PlaceDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PlaceDto>[];

  static Map<String, PlaceDto> mapFromJson(dynamic json) {
    final map = <String, PlaceDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PlaceDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PlaceDto-objects as value to a dart map
  static Map<String, List<PlaceDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PlaceDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PlaceDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

