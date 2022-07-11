//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class EntityReferenceDto {
  /// Returns a new [EntityReferenceDto] instance.
  EntityReferenceDto({
    required this.id,
    this.rev,
    this.deletionDate,
    this.docId,
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deletionDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? docId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is EntityReferenceDto && other.id == id && other.rev == rev && other.deletionDate == deletionDate && other.docId == docId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
  (id.hashCode) + (rev == null ? 0 : rev!.hashCode) + (deletionDate == null ? 0 : deletionDate!.hashCode) + (docId == null ? 0 : docId!.hashCode);

  @override
  String toString() => 'EntityReferenceDto[id=$id, rev=$rev, deletionDate=$deletionDate, docId=$docId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = id;
    if (rev != null) {
      json[r'rev'] = rev;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
    }
    if (docId != null) {
      json[r'docId'] = docId;
    }
    return json;
  }

  /// Returns a new [EntityReferenceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EntityReferenceDto? fromJson(dynamic value) {
    if (value is EntityReferenceDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EntityReferenceDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EntityReferenceDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EntityReferenceDto(
        id: mapValueOfType<String>(json, r'id')!,
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        docId: mapValueOfType<String>(json, r'docId'),
      );
    }
    return null;
  }

  static List<EntityReferenceDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EntityReferenceDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityReferenceDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EntityReferenceDto> mapFromJson(dynamic json) {
    final map = <String, EntityReferenceDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EntityReferenceDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EntityReferenceDto-objects as value to a dart map
  static Map<String, List<EntityReferenceDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EntityReferenceDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EntityReferenceDto.listFromJson(
          entry.value,
          growable: growable,
        );
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
