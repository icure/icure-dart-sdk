//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReplicationInfoDto {
  /// Returns a new [ReplicationInfoDto] instance.
  ReplicationInfoDto({
    @required this.active,
    @required this.running,
    this.pendingFrom,
    this.pendingTo,
  });

  bool active;

  bool running;

  int pendingFrom;

  int pendingTo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReplicationInfoDto &&
     other.active == active &&
     other.running == running &&
     other.pendingFrom == pendingFrom &&
     other.pendingTo == pendingTo;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (active == null ? 0 : active.hashCode) +
    (running == null ? 0 : running.hashCode) +
    (pendingFrom == null ? 0 : pendingFrom.hashCode) +
    (pendingTo == null ? 0 : pendingTo.hashCode);

  @override
  String toString() => 'ReplicationInfoDto[active=$active, running=$running, pendingFrom=$pendingFrom, pendingTo=$pendingTo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'active'] = active;
      json[r'running'] = running;
    if (pendingFrom != null) {
      json[r'pendingFrom'] = pendingFrom;
    }
    if (pendingTo != null) {
      json[r'pendingTo'] = pendingTo;
    }
    return json;
  }

  /// Returns a new [ReplicationInfoDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReplicationInfoDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ReplicationInfoDto(
        active: mapValueOfType<bool>(json, r'active'),
        running: mapValueOfType<bool>(json, r'running'),
        pendingFrom: mapValueOfType<int>(json, r'pendingFrom'),
        pendingTo: mapValueOfType<int>(json, r'pendingTo'),
      );
    }
    return null;
  }

  static List<ReplicationInfoDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ReplicationInfoDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ReplicationInfoDto>[];

  static Map<String, ReplicationInfoDto> mapFromJson(dynamic json) {
    final map = <String, ReplicationInfoDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ReplicationInfoDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ReplicationInfoDto-objects as value to a dart map
  static Map<String, List<ReplicationInfoDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ReplicationInfoDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ReplicationInfoDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

