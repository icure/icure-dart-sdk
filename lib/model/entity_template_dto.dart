//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EntityTemplateDto {
  /// Returns a new [EntityTemplateDto] instance.
  EntityTemplateDto({
    required this.id,
    this.rev,
    this.deletionDate,
    this.userId,
    this.descr,
    this.keywords = const {},
    this.entityType,
    this.subType,
    this.defaultTemplate,
    this.entity = const [],
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
  String? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? descr;

  Set<String> keywords;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entityType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? defaultTemplate;

  List<Map<String, Object>> entity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EntityTemplateDto &&
     other.id == id &&
     other.rev == rev &&
     other.deletionDate == deletionDate &&
     other.userId == userId &&
     other.descr == descr &&
     other.keywords == keywords &&
     other.entityType == entityType &&
     other.subType == subType &&
     other.defaultTemplate == defaultTemplate &&
     other.entity == entity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (rev == null ? 0 : rev!.hashCode) +
    (deletionDate == null ? 0 : deletionDate!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (descr == null ? 0 : descr!.hashCode) +
    (keywords.hashCode) +
    (entityType == null ? 0 : entityType!.hashCode) +
    (subType == null ? 0 : subType!.hashCode) +
    (defaultTemplate == null ? 0 : defaultTemplate!.hashCode) +
    (entity.hashCode);

  @override
  String toString() => 'EntityTemplateDto[id=$id, rev=$rev, deletionDate=$deletionDate, userId=$userId, descr=$descr, keywords=$keywords, entityType=$entityType, subType=$subType, defaultTemplate=$defaultTemplate, entity=$entity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (rev != null) {
      json[r'rev'] = rev;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    if (descr != null) {
      json[r'descr'] = descr;
    }
      json[r'keywords'] = keywords;
    if (entityType != null) {
      json[r'entityType'] = entityType;
    }
    if (subType != null) {
      json[r'subType'] = subType;
    }
    if (defaultTemplate != null) {
      json[r'defaultTemplate'] = defaultTemplate;
    }
      json[r'entity'] = entity;
    return json;
  }

  /// Returns a new [EntityTemplateDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EntityTemplateDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EntityTemplateDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EntityTemplateDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EntityTemplateDto(
        id: mapValueOfType<String>(json, r'id')!,
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        userId: mapValueOfType<String>(json, r'userId'),
        descr: mapValueOfType<String>(json, r'descr'),
        keywords: json[r'keywords'] is Set
            ? (json[r'keywords'] as Set).cast<String>()
            : const {},
        entityType: mapValueOfType<String>(json, r'entityType'),
        subType: mapValueOfType<String>(json, r'subType'),
        defaultTemplate: mapValueOfType<bool>(json, r'defaultTemplate'),
        entity:
            List.from((json[r'entity' as List].cast<Map<String, Object>>())),
      );
    }
    return null;
  }

  static List<EntityTemplateDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityTemplateDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityTemplateDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EntityTemplateDto> mapFromJson(dynamic json) {
    final map = <String, EntityTemplateDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EntityTemplateDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EntityTemplateDto-objects as value to a dart map
  static Map<String, List<EntityTemplateDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EntityTemplateDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EntityTemplateDto.listFromJson(entry.value, growable: growable,);
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
    'entity',
  };
}

