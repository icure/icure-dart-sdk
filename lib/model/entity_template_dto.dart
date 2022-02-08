//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EntityTemplateDto {
  /// Returns a new [EntityTemplateDto] instance.
  EntityTemplateDto({
    @required this.id,
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

  String rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  int deletionDate;

  String userId;

  String descr;

  Set<String> keywords;

  String entityType;

  String subType;

  bool defaultTemplate;

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
    (id == null ? 0 : id.hashCode) +
    (rev == null ? 0 : rev.hashCode) +
    (deletionDate == null ? 0 : deletionDate.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (descr == null ? 0 : descr.hashCode) +
    (keywords == null ? 0 : keywords.hashCode) +
    (entityType == null ? 0 : entityType.hashCode) +
    (subType == null ? 0 : subType.hashCode) +
    (defaultTemplate == null ? 0 : defaultTemplate.hashCode) +
    (entity == null ? 0 : entity.hashCode);

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
    if (keywords != null) {
      json[r'keywords'] = keywords;
    }
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
  static EntityTemplateDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return EntityTemplateDto(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        userId: mapValueOfType<String>(json, r'userId'),
        descr: mapValueOfType<String>(json, r'descr'),
        keywords: json[r'keywords'] is Set
          ? (json[r'keywords'] as Set).cast<String>()
          : null,
        entityType: mapValueOfType<String>(json, r'entityType'),
        subType: mapValueOfType<String>(json, r'subType'),
        defaultTemplate: mapValueOfType<bool>(json, r'defaultTemplate'),
        entity: null //TODO Map.listFromJson(json[r'entity']),
      );
    }
    return null;
  }

  static List<EntityTemplateDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(EntityTemplateDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <EntityTemplateDto>[];

  static Map<String, EntityTemplateDto> mapFromJson(dynamic json) {
    final map = <String, EntityTemplateDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = EntityTemplateDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EntityTemplateDto-objects as value to a dart map
  static Map<String, List<EntityTemplateDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EntityTemplateDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = EntityTemplateDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

