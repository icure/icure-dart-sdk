//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PublicKeyDto {
  /// Returns a new [PublicKeyDto] instance.
  PublicKeyDto({
    this.hcPartyId,
    this.hexString,
  });

  String hcPartyId;

  String hexString;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublicKeyDto &&
     other.hcPartyId == hcPartyId &&
     other.hexString == hexString;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (hcPartyId == null ? 0 : hcPartyId.hashCode) +
    (hexString == null ? 0 : hexString.hashCode);

  @override
  String toString() => 'PublicKeyDto[hcPartyId=$hcPartyId, hexString=$hexString]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (hcPartyId != null) {
      json[r'hcPartyId'] = hcPartyId;
    }
    if (hexString != null) {
      json[r'hexString'] = hexString;
    }
    return json;
  }

  /// Returns a new [PublicKeyDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublicKeyDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PublicKeyDto(
        hcPartyId: mapValueOfType<String>(json, r'hcPartyId'),
        hexString: mapValueOfType<String>(json, r'hexString'),
      );
    }
    return null;
  }

  static List<PublicKeyDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PublicKeyDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PublicKeyDto>[];

  static Map<String, PublicKeyDto> mapFromJson(dynamic json) {
    final map = <String, PublicKeyDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PublicKeyDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PublicKeyDto-objects as value to a dart map
  static Map<String, List<PublicKeyDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PublicKeyDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PublicKeyDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

