//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EntityReferenceDto {
  /// Returns a new [EntityReferenceDto] instance.
  EntityReferenceDto({
    @required this.id,
    this.rev,
    this.deletionDate,
    this.docId,
  });

  String id;

  String rev;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  int deletionDate;

  String docId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EntityReferenceDto &&
     other.id == id &&
     other.rev == rev &&
     other.deletionDate == deletionDate &&
     other.docId == docId;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (rev == null ? 0 : rev.hashCode) +
    (deletionDate == null ? 0 : deletionDate.hashCode) +
    (docId == null ? 0 : docId.hashCode);

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
  static EntityReferenceDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return EntityReferenceDto(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        docId: mapValueOfType<String>(json, r'docId'),
      );
    }
    return null;
  }

  static List<EntityReferenceDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(EntityReferenceDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <EntityReferenceDto>[];

  static Map<String, EntityReferenceDto> mapFromJson(dynamic json) {
    final map = <String, EntityReferenceDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = EntityReferenceDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EntityReferenceDto-objects as value to a dart map
  static Map<String, List<EntityReferenceDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EntityReferenceDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = EntityReferenceDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

