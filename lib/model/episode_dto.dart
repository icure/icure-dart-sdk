//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EpisodeDto {
  /// Returns a new [EpisodeDto] instance.
  EpisodeDto({
    required this.id,
    this.name,
    this.comment,
    this.startDate,
    this.endDate,
    this.encryptedSelf,
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? comment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endDate;

  /// The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? encryptedSelf;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EpisodeDto &&
     other.id == id &&
     other.name == name &&
     other.comment == comment &&
     other.startDate == startDate &&
     other.endDate == endDate &&
     other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (comment == null ? 0 : comment!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (encryptedSelf == null ? 0 : encryptedSelf!.hashCode);

  @override
  String toString() => 'EpisodeDto[id=$id, name=$name, comment=$comment, startDate=$startDate, endDate=$endDate, encryptedSelf=$encryptedSelf]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (name != null) {
      json[r'name'] = name;
    }
    if (comment != null) {
      json[r'comment'] = comment;
    }
    if (startDate != null) {
      json[r'startDate'] = startDate;
    }
    if (endDate != null) {
      json[r'endDate'] = endDate;
    }
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [EpisodeDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EpisodeDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EpisodeDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EpisodeDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EpisodeDto(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name'),
        comment: mapValueOfType<String>(json, r'comment'),
        startDate: mapValueOfType<int>(json, r'startDate'),
        endDate: mapValueOfType<int>(json, r'endDate'),
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<EpisodeDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EpisodeDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EpisodeDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EpisodeDto> mapFromJson(dynamic json) {
    final map = <String, EpisodeDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EpisodeDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EpisodeDto-objects as value to a dart map
  static Map<String, List<EpisodeDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EpisodeDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EpisodeDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

