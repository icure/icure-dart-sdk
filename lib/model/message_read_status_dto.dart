//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MessageReadStatusDto {
  /// Returns a new [MessageReadStatusDto] instance.
  MessageReadStatusDto({
    this.time,
    this.read = false,
  });

  int time;

  bool read;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MessageReadStatusDto &&
     other.time == time &&
     other.read == read;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (time == null ? 0 : time.hashCode) +
    (read == null ? 0 : read.hashCode);

  @override
  String toString() => 'MessageReadStatusDto[time=$time, read=$read]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (time != null) {
      json[r'time'] = time;
    }
      json[r'read'] = read;
    return json;
  }

  /// Returns a new [MessageReadStatusDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MessageReadStatusDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MessageReadStatusDto(
        time: mapValueOfType<int>(json, r'time'),
        read: mapValueOfType<bool>(json, r'read'),
      );
    }
    return null;
  }

  static List<MessageReadStatusDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MessageReadStatusDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MessageReadStatusDto>[];

  static Map<String, MessageReadStatusDto> mapFromJson(dynamic json) {
    final map = <String, MessageReadStatusDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = MessageReadStatusDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MessageReadStatusDto-objects as value to a dart map
  static Map<String, List<MessageReadStatusDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MessageReadStatusDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = MessageReadStatusDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

