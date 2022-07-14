//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaginatedListMaintenanceTaskDto {
  /// Returns a new [PaginatedListMaintenanceTaskDto] instance.
  PaginatedListMaintenanceTaskDto({
    @required this.pageSize,
    @required this.totalSize,
    this.rows = const [],
    this.nextKeyPair,
  });

  int pageSize;

  int totalSize;

  List<MaintenanceTaskDto> rows;

  PaginatedDocumentKeyIdPairObject nextKeyPair;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedListMaintenanceTaskDto &&
     other.pageSize == pageSize &&
     other.totalSize == totalSize &&
     other.rows == rows &&
     other.nextKeyPair == nextKeyPair;

  @override
  int get hashCode =>
    (pageSize == null ? 0 : pageSize.hashCode) +
    (totalSize == null ? 0 : totalSize.hashCode) +
    (rows == null ? 0 : rows.hashCode) +
    (nextKeyPair == null ? 0 : nextKeyPair.hashCode);

  @override
  String toString() => 'PaginatedListMaintenanceTaskDto[pageSize=$pageSize, totalSize=$totalSize, rows=$rows, nextKeyPair=$nextKeyPair]';

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

  /// Returns a new [PaginatedListMaintenanceTaskDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PaginatedListMaintenanceTaskDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PaginatedListMaintenanceTaskDto(
        pageSize: json[r'pageSize'],
        totalSize: json[r'totalSize'],
        rows: MaintenanceTaskDto.listFromJson(json[r'rows']),
        nextKeyPair: PaginatedDocumentKeyIdPairObject.fromJson(json[r'nextKeyPair']),
    );

  static List<PaginatedListMaintenanceTaskDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PaginatedListMaintenanceTaskDto>[]
      : json.map((dynamic value) => PaginatedListMaintenanceTaskDto.fromJson(value)).toList(growable: true == growable);

  static Map<String, PaginatedListMaintenanceTaskDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PaginatedListMaintenanceTaskDto>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = PaginatedListMaintenanceTaskDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PaginatedListMaintenanceTaskDto-objects as value to a dart map
  static Map<String, List<PaginatedListMaintenanceTaskDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PaginatedListMaintenanceTaskDto>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = PaginatedListMaintenanceTaskDto.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

