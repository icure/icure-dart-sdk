//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class MessagesReadStatusUpdate {
  /// Returns a new [MessagesReadStatusUpdate] instance.
  MessagesReadStatusUpdate({
    this.ids = const [],
    this.time,
    this.status,
    this.userId,
  });

  List<String> ids;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? time;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MessagesReadStatusUpdate &&
     other.ids == ids &&
     other.time == time &&
     other.status == status &&
     other.userId == userId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ids.hashCode) +
    (time == null ? 0 : time!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (userId == null ? 0 : userId!.hashCode);

  @override
  String toString() => 'MessagesReadStatusUpdate[ids=$ids, time=$time, status=$status, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ids'] = ids;
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
  static MessagesReadStatusUpdate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MessagesReadStatusUpdate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MessagesReadStatusUpdate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MessagesReadStatusUpdate(
        ids: json[r'ids'] is List
            ? (json[r'ids'] as List).cast<String>()
            : const [],
        time: mapValueOfType<int>(json, r'time'),
        status: mapValueOfType<bool>(json, r'status'),
        userId: mapValueOfType<String>(json, r'userId'),
      );
    }
    return null;
  }

  static List<MessagesReadStatusUpdate>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessagesReadStatusUpdate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessagesReadStatusUpdate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MessagesReadStatusUpdate> mapFromJson(dynamic json) {
    final map = <String, MessagesReadStatusUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MessagesReadStatusUpdate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MessagesReadStatusUpdate-objects as value to a dart map
  static Map<String, List<MessagesReadStatusUpdate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MessagesReadStatusUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MessagesReadStatusUpdate.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

