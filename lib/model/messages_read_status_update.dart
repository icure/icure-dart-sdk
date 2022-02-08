//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MessagesReadStatusUpdate {
  /// Returns a new [MessagesReadStatusUpdate] instance.
  MessagesReadStatusUpdate({
    this.ids = const [],
    this.time,
    this.status,
    this.userId,
  });

  List<String> ids;

  int time;

  bool status;

  String userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MessagesReadStatusUpdate &&
     other.ids == ids &&
     other.time == time &&
     other.status == status &&
     other.userId == userId;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (ids == null ? 0 : ids.hashCode) +
    (time == null ? 0 : time.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (userId == null ? 0 : userId.hashCode);

  @override
  String toString() => 'MessagesReadStatusUpdate[ids=$ids, time=$time, status=$status, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (ids != null) {
      json[r'ids'] = ids;
    }
    if (time != null) {
      json[r'time'] = time;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    return json;
  }

  /// Returns a new [MessagesReadStatusUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MessagesReadStatusUpdate fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MessagesReadStatusUpdate(
        ids: json[r'ids'] is List
          ? (json[r'ids'] as List).cast<String>()
          : null,
        time: mapValueOfType<int>(json, r'time'),
        status: mapValueOfType<bool>(json, r'status'),
        userId: mapValueOfType<String>(json, r'userId'),
      );
    }
    return null;
  }

  static List<MessagesReadStatusUpdate> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MessagesReadStatusUpdate.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MessagesReadStatusUpdate>[];

  static Map<String, MessagesReadStatusUpdate> mapFromJson(dynamic json) {
    final map = <String, MessagesReadStatusUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = MessagesReadStatusUpdate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MessagesReadStatusUpdate-objects as value to a dart map
  static Map<String, List<MessagesReadStatusUpdate>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MessagesReadStatusUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = MessagesReadStatusUpdate.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

