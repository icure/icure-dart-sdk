//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class DelegationDto {
  /// Returns a new [DelegationDto] instance.
  DelegationDto({
    this.owner,
    this.delegatedTo,
    this.key,
    this.tags = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? delegatedTo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  List<String> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DelegationDto &&
     other.owner == owner &&
     other.delegatedTo == delegatedTo &&
     other.key == key &&
     other.tags == tags;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (owner == null ? 0 : owner!.hashCode) +
    (delegatedTo == null ? 0 : delegatedTo!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (tags.hashCode);

  @override
  String toString() => 'DelegationDto[owner=$owner, delegatedTo=$delegatedTo, key=$key, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (owner != null) {
      json[r'owner'] = owner;
    }
    if (delegatedTo != null) {
      json[r'delegatedTo'] = delegatedTo;
    }
    if (key != null) {
      json[r'key'] = key;
    }
      json[r'tags'] = tags;
    return json;
  }

  /// Returns a new [DelegationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DelegationDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DelegationDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DelegationDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DelegationDto(
        owner: mapValueOfType<String>(json, r'owner'),
        delegatedTo: mapValueOfType<String>(json, r'delegatedTo'),
        key: mapValueOfType<String>(json, r'key'),
        tags: json[r'tags'] is List
            ? (json[r'tags'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<DelegationDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DelegationDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DelegationDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DelegationDto> mapFromJson(dynamic json) {
    final map = <String, DelegationDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DelegationDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DelegationDto-objects as value to a dart map
  static Map<String, Set<DelegationDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, Set<DelegationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DelegationDto.listFromJson(entry.value, growable: growable,)?.toSet();
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'tags',
  };
}

