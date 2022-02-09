//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? time;

  bool read;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MessageReadStatusDto &&
     other.time == time &&
     other.read == read;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (time == null ? 0 : time!.hashCode) +
    (read.hashCode);

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
  static MessageReadStatusDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MessageReadStatusDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MessageReadStatusDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MessageReadStatusDto(
        time: mapValueOfType<int>(json, r'time'),
        read: mapValueOfType<bool>(json, r'read')!,
      );
    }
    return null;
  }

  static List<MessageReadStatusDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessageReadStatusDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessageReadStatusDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MessageReadStatusDto> mapFromJson(dynamic json) {
    final map = <String, MessageReadStatusDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MessageReadStatusDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MessageReadStatusDto-objects as value to a dart map
  static Map<String, List<MessageReadStatusDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MessageReadStatusDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MessageReadStatusDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'read',
  };
}

