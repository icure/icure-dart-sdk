//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReplicationStatsDto {
  /// Returns a new [ReplicationStatsDto] instance.
  ReplicationStatsDto({
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
  bool operator ==(Object other) => identical(this, other) || other is ReplicationStatsDto &&
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
  String toString() => 'ReplicationStatsDto[revisionsChecked=$revisionsChecked, missingRevisionsFound=$missingRevisionsFound, docsRead=$docsRead, docsWritten=$docsWritten, changesPending=$changesPending, docWriteFailures=$docWriteFailures, checkpointedSourceSeq=$checkpointedSourceSeq, startTime=$startTime, error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (revisionsChecked != null) {
      json[r'revisionsChecked'] = revisionsChecked;
    }
    if (missingRevisionsFound != null) {
      json[r'missingRevisionsFound'] = missingRevisionsFound;
    }
    if (docsRead != null) {
      json[r'docsRead'] = docsRead;
    }
    if (docsWritten != null) {
      json[r'docsWritten'] = docsWritten;
    }
    if (changesPending != null) {
      json[r'changesPending'] = changesPending;
    }
    if (docWriteFailures != null) {
      json[r'docWriteFailures'] = docWriteFailures;
    }
    if (checkpointedSourceSeq != null) {
      json[r'checkpointedSourceSeq'] = checkpointedSourceSeq;
    }
    if (startTime != null) {
      json[r'startTime'] = startTime.toUtc().toIso8601String();
    }
    if (error != null) {
      json[r'error'] = error;
    }
    return json;
  }

  /// Returns a new [ReplicationStatsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReplicationStatsDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ReplicationStatsDto(
        revisionsChecked: mapValueOfType<int>(json, r'revisionsChecked'),
        missingRevisionsFound: mapValueOfType<int>(json, r'missingRevisionsFound'),
        docsRead: mapValueOfType<int>(json, r'docsRead'),
        docsWritten: mapValueOfType<int>(json, r'docsWritten'),
        changesPending: mapValueOfType<int>(json, r'changesPending'),
        docWriteFailures: mapValueOfType<int>(json, r'docWriteFailures'),
        checkpointedSourceSeq: mapValueOfType<String>(json, r'checkpointedSourceSeq'),
        startTime: mapDateTime(json, r'startTime', ''),
        error: mapValueOfType<String>(json, r'error'),
      );
    }
    return null;
  }

  static List<ReplicationStatsDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ReplicationStatsDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ReplicationStatsDto>[];

  static Map<String, ReplicationStatsDto> mapFromJson(dynamic json) {
    final map = <String, ReplicationStatsDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ReplicationStatsDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ReplicationStatsDto-objects as value to a dart map
  static Map<String, List<ReplicationStatsDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ReplicationStatsDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ReplicationStatsDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

