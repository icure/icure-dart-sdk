//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class ReplicationStats {
  /// Returns a new [ReplicationStats] instance.
  ReplicationStats({
    this.revisionsChecked,
    this.missingRevisionsFound,
    this.docsRead,
    this.docsWritten,
    this.changesPending,
    this.docWriteFailures,
    this.checkpointedSourceSeq,
    this.startTime,
    this.error,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? revisionsChecked;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? missingRevisionsFound;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? docsRead;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? docsWritten;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? changesPending;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? docWriteFailures;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? checkpointedSourceSeq;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReplicationStats &&
          other.revisionsChecked == revisionsChecked &&
          other.missingRevisionsFound == missingRevisionsFound &&
          other.docsRead == docsRead &&
          other.docsWritten == docsWritten &&
          other.changesPending == changesPending &&
          other.docWriteFailures == docWriteFailures &&
          other.checkpointedSourceSeq == checkpointedSourceSeq &&
          other.startTime == startTime &&
          other.error == error;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (revisionsChecked == null ? 0 : revisionsChecked!.hashCode) +
      (missingRevisionsFound == null ? 0 : missingRevisionsFound!.hashCode) +
      (docsRead == null ? 0 : docsRead!.hashCode) +
      (docsWritten == null ? 0 : docsWritten!.hashCode) +
      (changesPending == null ? 0 : changesPending!.hashCode) +
      (docWriteFailures == null ? 0 : docWriteFailures!.hashCode) +
      (checkpointedSourceSeq == null ? 0 : checkpointedSourceSeq!.hashCode) +
      (startTime == null ? 0 : startTime!.hashCode) +
      (error == null ? 0 : error!.hashCode);

  @override
  String toString() =>
      'ReplicationStats[revisionsChecked=$revisionsChecked, missingRevisionsFound=$missingRevisionsFound, docsRead=$docsRead, docsWritten=$docsWritten, changesPending=$changesPending, docWriteFailures=$docWriteFailures, checkpointedSourceSeq=$checkpointedSourceSeq, startTime=$startTime, error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (revisionsChecked != null) {
      json[r'revisions_checked'] = revisionsChecked;
    }
    if (missingRevisionsFound != null) {
      json[r'missing_revisions_found'] = missingRevisionsFound;
    }
    if (docsRead != null) {
      json[r'docs_read'] = docsRead;
    }
    if (docsWritten != null) {
      json[r'docs_written'] = docsWritten;
    }
    if (changesPending != null) {
      json[r'changes_pending'] = changesPending;
    }
    if (docWriteFailures != null) {
      json[r'doc_write_failures'] = docWriteFailures;
    }
    if (checkpointedSourceSeq != null) {
      json[r'checkpointed_source_seq'] = checkpointedSourceSeq;
    }
    if (startTime != null) {
      json[r'start_time'] = startTime!.toUtc().toIso8601String();
    }
    if (error != null) {
      json[r'error'] = error;
    }
    return json;
  }

  /// Returns a new [ReplicationStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReplicationStats? fromJson(dynamic value) {
    if (value is ReplicationStats) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReplicationStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReplicationStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReplicationStats(
        revisionsChecked: mapValueOfType<int>(json, r'revisions_checked'),
        missingRevisionsFound: mapValueOfType<int>(json, r'missing_revisions_found'),
        docsRead: mapValueOfType<int>(json, r'docs_read'),
        docsWritten: mapValueOfType<int>(json, r'docs_written'),
        changesPending: mapValueOfType<int>(json, r'changes_pending'),
        docWriteFailures: mapValueOfType<int>(json, r'doc_write_failures'),
        checkpointedSourceSeq: mapValueOfType<String>(json, r'checkpointed_source_seq'),
        startTime: mapDateTime(json, r'start_time', ''),
        error: mapValueOfType<String>(json, r'error'),
      );
    }
    return null;
  }

  static List<ReplicationStats>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ReplicationStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReplicationStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReplicationStats> mapFromJson(dynamic json) {
    final map = <String, ReplicationStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReplicationStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReplicationStats-objects as value to a dart map
  static Map<String, List<ReplicationStats>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ReplicationStats>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReplicationStats.listFromJson(
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
  static const requiredKeys = <String>{};
}
