//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class PaginatedListMaintenanceTaskDto {
  /// Returns a new [PaginatedListMaintenanceTaskDto] instance.
  PaginatedListMaintenanceTaskDto({
    required this.pageSize,
    required this.totalSize,
    this.rows = const [],
    this.nextKeyPair,
  });

  int pageSize;

  int totalSize;

  List<MaintenanceTaskDto> rows;

  PaginatedDocumentKeyIdPairObject? nextKeyPair;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedListMaintenanceTaskDto &&
     other.pageSize == pageSize &&
     other.totalSize == totalSize &&
     other.rows == rows &&
     other.nextKeyPair == nextKeyPair;

  @override
  int get hashCode =>
    (pageSize.hashCode) +
    (totalSize.hashCode) +
    (rows.hashCode) +
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
  static PaginatedListMaintenanceTaskDto? fromJson(dynamic value) {
    if (value is PaginatedListMaintenanceTaskDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaginatedListMaintenanceTaskDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaginatedListMaintenanceTaskDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaginatedListMaintenanceTaskDto(
        pageSize: json[r'pageSize'],
        totalSize: json[r'totalSize'],
        rows: MaintenanceTaskDto.listFromJson(json[r'rows']) ?? const [],
        nextKeyPair: PaginatedDocumentKeyIdPairObject.fromJson(json[r'nextKeyPair']),
      );
    }
    return null;
    }

    static List<PaginatedListMaintenanceTaskDto>? listFromJson(dynamic json, {bool growable = false,}) {
      final result = <PaginatedListMaintenanceTaskDto>[];
      if (json is List && json.isNotEmpty) {
        for (final row in json) {
          final value = PaginatedListMaintenanceTaskDto.fromJson(row);
          if (value != null) {
            result.add(value);
          }
        }
      }
      return result.toList(growable: growable);
    }

    static Map<String, PaginatedListMaintenanceTaskDto> mapFromJson(dynamic json) {
      final map = <String, PaginatedListMaintenanceTaskDto>{};
      if (json is Map && json.isNotEmpty) {
        json = json.cast<String, dynamic>(); // ignore: parameter_assignments
        for (final entry in json.entries) {
          final value = PaginatedListMaintenanceTaskDto.fromJson(entry.value);
          if (value != null) {
            map[entry.key] = value;
          }
        }
      }
      return map;
    }

    // maps a json object with a list of PaginatedListMaintenanceTaskDto-objects as value to a dart map
    static Map<String, List<PaginatedListMaintenanceTaskDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
      final map = <String, List<PaginatedListMaintenanceTaskDto>>{};
      if (json is Map && json.isNotEmpty) {
        json = json.cast<String, dynamic>(); // ignore: parameter_assignments
        for (final entry in json.entries) {
          final value = PaginatedListMaintenanceTaskDto.listFromJson(
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
    'pageSize',
    'totalSize',
    'rows',
  };
}
