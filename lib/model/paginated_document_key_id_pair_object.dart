//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class PaginatedDocumentKeyIdPairObject {
  /// Returns a new [PaginatedDocumentKeyIdPairObject] instance.
  PaginatedDocumentKeyIdPairObject({
    this.startKey,
    this.startKeyDocId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? startKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startKeyDocId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is PaginatedDocumentKeyIdPairObject &&
          other.startKey == startKey &&
          other.startKeyDocId == startKeyDocId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
  (startKey == null ? 0 : startKey!.hashCode) +
      (startKeyDocId == null ? 0 : startKeyDocId!.hashCode);

  @override
  String toString() => 'PaginatedDocumentKeyIdPairObject[startKey=$startKey, startKeyDocId=$startKeyDocId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (startKey != null) {
      json[r'startKey'] = startKey;
    }
    if (startKeyDocId != null) {
      json[r'startKeyDocId'] = startKeyDocId;
    }
    return json;
  }

  /// Returns a new [PaginatedDocumentKeyIdPairObject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaginatedDocumentKeyIdPairObject? fromJson(dynamic value) {
    if (value is PaginatedDocumentKeyIdPairObject) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaginatedDocumentKeyIdPairObject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaginatedDocumentKeyIdPairObject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaginatedDocumentKeyIdPairObject(
        startKey: mapValueOfType<Object>(json, r'startKey'),
        startKeyDocId: mapValueOfType<String>(json, r'startKeyDocId'),
      );
    }
    return null;
  }

  static List<PaginatedDocumentKeyIdPairObject>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaginatedDocumentKeyIdPairObject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaginatedDocumentKeyIdPairObject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaginatedDocumentKeyIdPairObject> mapFromJson(dynamic json) {
    final map = <String, PaginatedDocumentKeyIdPairObject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaginatedDocumentKeyIdPairObject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaginatedDocumentKeyIdPairObject-objects as value to a dart map
  static Map<String, List<PaginatedDocumentKeyIdPairObject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaginatedDocumentKeyIdPairObject>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaginatedDocumentKeyIdPairObject.listFromJson(entry.value, growable: growable,);
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
