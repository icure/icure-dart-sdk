//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RightDto {
  /// Returns a new [RightDto] instance.
  RightDto({
    this.userId,
    this.read = false,
    this.write = false,
    this.administration = false,
  });

  String userId;

  bool read;

  bool write;

  bool administration;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RightDto &&
     other.userId == userId &&
     other.read == read &&
     other.write == write &&
     other.administration == administration;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (userId == null ? 0 : userId.hashCode) +
    (read == null ? 0 : read.hashCode) +
    (write == null ? 0 : write.hashCode) +
    (administration == null ? 0 : administration.hashCode);

  @override
  String toString() => 'RightDto[userId=$userId, read=$read, write=$write, administration=$administration]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (userId != null) {
      json[r'userId'] = userId;
    }
      json[r'read'] = read;
      json[r'write'] = write;
      json[r'administration'] = administration;
    return json;
  }

  /// Returns a new [RightDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RightDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RightDto(
        userId: mapValueOfType<String>(json, r'userId'),
        read: mapValueOfType<bool>(json, r'read'),
        write: mapValueOfType<bool>(json, r'write'),
        administration: mapValueOfType<bool>(json, r'administration'),
      );
    }
    return null;
  }

  static List<RightDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RightDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RightDto>[];

  static Map<String, RightDto> mapFromJson(dynamic json) {
    final map = <String, RightDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RightDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RightDto-objects as value to a dart map
  static Map<String, List<RightDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RightDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RightDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

