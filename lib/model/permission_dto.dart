//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PermissionDto {
  /// Returns a new [PermissionDto] instance.
  PermissionDto({
    this.grants = const {},
    this.revokes = const {},
  });

  /// Granted permissions.
  Set<PermissionItemDto> grants;

  /// Revoked permissions.
  Set<PermissionItemDto> revokes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PermissionDto &&
     other.grants == grants &&
     other.revokes == revokes;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (grants == null ? 0 : grants.hashCode) +
    (revokes == null ? 0 : revokes.hashCode);

  @override
  String toString() => 'PermissionDto[grants=$grants, revokes=$revokes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'grants'] = grants;
      json[r'revokes'] = revokes;
    return json;
  }

  /// Returns a new [PermissionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PermissionDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PermissionDto(
        grants: PermissionItemDto.listFromJson(json[r'grants']).toSet(),
        revokes: PermissionItemDto.listFromJson(json[r'revokes']).toSet(),
      );
    }
    return null;
  }

  static List<PermissionDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PermissionDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PermissionDto>[];

  static Map<String, PermissionDto> mapFromJson(dynamic json) {
    final map = <String, PermissionDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PermissionDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PermissionDto-objects as value to a dart map
  static Map<String, List<PermissionDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PermissionDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PermissionDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

