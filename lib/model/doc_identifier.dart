//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DocIdentifier {
  /// Returns a new [DocIdentifier] instance.
  DocIdentifier({
    this.id,
    this.rev,
  });

  String id;

  String rev;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DocIdentifier &&
     other.id == id &&
     other.rev == rev;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (rev == null ? 0 : rev.hashCode);

  @override
  String toString() => 'DocIdentifier[id=$id, rev=$rev]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (rev != null) {
      json[r'rev'] = rev;
    }
    return json;
  }

  /// Returns a new [DocIdentifier] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DocIdentifier fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return DocIdentifier(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
      );
    }
    return null;
  }

  static List<DocIdentifier> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DocIdentifier.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DocIdentifier>[];

  static Map<String, DocIdentifier> mapFromJson(dynamic json) {
    final map = <String, DocIdentifier>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = DocIdentifier.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DocIdentifier-objects as value to a dart map
  static Map<String, List<DocIdentifier>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DocIdentifier>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = DocIdentifier.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

