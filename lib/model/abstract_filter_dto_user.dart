//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AbstractFilterDtoUser {
  /// Returns a new [AbstractFilterDtoUser] instance.
  AbstractFilterDtoUser({
    this.desc,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? desc;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AbstractFilterDtoUser &&
     other.desc == desc;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (desc == null ? 0 : desc!.hashCode);

  @override
  String toString() => 'AbstractFilterDtoUser[desc=$desc]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (desc != null) {
      json[r'desc'] = desc;
    }
    return json;
  }

  /// Returns a new [AbstractFilterDtoUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AbstractFilterDtoUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AbstractFilterDtoUser[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AbstractFilterDtoUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AbstractFilterDtoUser(
        desc: mapValueOfType<String>(json, r'desc'),
      );
    }
    return null;
  }

  static List<AbstractFilterDtoUser>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AbstractFilterDtoUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AbstractFilterDtoUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AbstractFilterDtoUser> mapFromJson(dynamic json) {
    final map = <String, AbstractFilterDtoUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AbstractFilterDtoUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AbstractFilterDtoUser-objects as value to a dart map
  static Map<String, List<AbstractFilterDtoUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AbstractFilterDtoUser>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AbstractFilterDtoUser.listFromJson(entry.value, growable: growable,);
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

