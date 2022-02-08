//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaginatedListClassificationDto {
  /// Returns a new [PaginatedListClassificationDto] instance.
  PaginatedListClassificationDto({
    @required this.pageSize,
    @required this.totalSize,
    this.rows = const [],
    this.nextKeyPair,
  });

  int pageSize;

  int totalSize;

  List<ClassificationDto> rows;

  PaginatedDocumentKeyIdPairObject nextKeyPair;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedListClassificationDto &&
     other.pageSize == pageSize &&
     other.totalSize == totalSize &&
     other.rows == rows &&
     other.nextKeyPair == nextKeyPair;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (pageSize == null ? 0 : pageSize.hashCode) +
    (totalSize == null ? 0 : totalSize.hashCode) +
    (rows == null ? 0 : rows.hashCode) +
    (nextKeyPair == null ? 0 : nextKeyPair.hashCode);

  @override
  String toString() => 'PaginatedListClassificationDto[pageSize=$pageSize, totalSize=$totalSize, rows=$rows, nextKeyPair=$nextKeyPair]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'pageSize'] = pageSize;
      json[r'totalSize'] = totalSize;
      json[r'rows'] = rows;
    if (nextKeyPair != null) {
      json[r'nextKeyPair'] = nextKeyPair;
    }
    return json;
  }

  /// Returns a new [PaginatedListClassificationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaginatedListClassificationDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PaginatedListClassificationDto(
        pageSize: mapValueOfType<int>(json, r'pageSize'),
        totalSize: mapValueOfType<int>(json, r'totalSize'),
        rows: ClassificationDto.listFromJson(json[r'rows']),
        nextKeyPair: PaginatedDocumentKeyIdPairObject.fromJson(json[r'nextKeyPair']),
      );
    }
    return null;
  }

  static List<PaginatedListClassificationDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PaginatedListClassificationDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PaginatedListClassificationDto>[];

  static Map<String, PaginatedListClassificationDto> mapFromJson(dynamic json) {
    final map = <String, PaginatedListClassificationDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PaginatedListClassificationDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PaginatedListClassificationDto-objects as value to a dart map
  static Map<String, List<PaginatedListClassificationDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PaginatedListClassificationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PaginatedListClassificationDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

