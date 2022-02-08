//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

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

  int revisionsChecked;

  int missingRevisionsFound;

  int docsRead;

  int docsWritten;

  int changesPending;

  int docWriteFailures;

  String checkpointedSourceSeq;

  DateTime startTime;

  String error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReplicationStats &&
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
    (revisionsChecked == null ? 0 : revisionsChecked.hashCode) +
    (missingRevisionsFound == null ? 0 : missingRevisionsFound.hashCode) +
    (docsRead == null ? 0 : docsRead.hashCode) +
    (docsWritten == null ? 0 : docsWritten.hashCode) +
    (changesPending == null ? 0 : changesPending.hashCode) +
    (docWriteFailures == null ? 0 : docWriteFailures.hashCode) +
    (checkpointedSourceSeq == null ? 0 : checkpointedSourceSeq.hashCode) +
    (startTime == null ? 0 : startTime.hashCode) +
    (error == null ? 0 : error.hashCode);

  @override
  String toString() => 'ReplicationStats[revisionsChecked=$revisionsChecked, missingRevisionsFound=$missingRevisionsFound, docsRead=$docsRead, docsWritten=$docsWritten, changesPending=$changesPending, docWriteFailures=$docWriteFailures, checkpointedSourceSeq=$checkpointedSourceSeq, startTime=$startTime, error=$error]';

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
      json[r'start_time'] = startTime.toUtc().toIso8601String();
    }
    if (error != null) {
      json[r'error'] = error;
    }
    return json;
  }

  /// Returns a new [ReplicationStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReplicationStats fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
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

  static List<ReplicationStats> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ReplicationStats.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ReplicationStats>[];

  static Map<String, ReplicationStats> mapFromJson(dynamic json) {
    final map = <String, ReplicationStats>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ReplicationStats.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ReplicationStats-objects as value to a dart map
  static Map<String, List<ReplicationStats>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ReplicationStats>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ReplicationStats.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

