//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaginatedDocumentKeyIdPairObject {
  /// Returns a new [PaginatedDocumentKeyIdPairObject] instance.
  PaginatedDocumentKeyIdPairObject({
    this.startKey,
    this.startKeyDocId,
  });

  Object startKey;

  String startKeyDocId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedDocumentKeyIdPairObject &&
     other.startKey == startKey &&
     other.startKeyDocId == startKeyDocId;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (startKey == null ? 0 : startKey.hashCode) +
    (startKeyDocId == null ? 0 : startKeyDocId.hashCode);

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
  static PaginatedDocumentKeyIdPairObject fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PaginatedDocumentKeyIdPairObject(
        startKey: mapValueOfType<Object>(json, r'startKey'),
        startKeyDocId: mapValueOfType<String>(json, r'startKeyDocId'),
      );
    }
    return null;
  }

  static List<PaginatedDocumentKeyIdPairObject> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PaginatedDocumentKeyIdPairObject.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PaginatedDocumentKeyIdPairObject>[];

  static Map<String, PaginatedDocumentKeyIdPairObject> mapFromJson(dynamic json) {
    final map = <String, PaginatedDocumentKeyIdPairObject>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PaginatedDocumentKeyIdPairObject.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PaginatedDocumentKeyIdPairObject-objects as value to a dart map
  static Map<String, List<PaginatedDocumentKeyIdPairObject>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PaginatedDocumentKeyIdPairObject>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PaginatedDocumentKeyIdPairObject.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

