//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class ReplicatorDocument {
  /// Returns a new [ReplicatorDocument] instance.
  ReplicatorDocument({
    required this.id,
    this.rev,
    this.source_,
    this.target,
    this.owner,
    this.createTarget,
    this.continuous,
    this.docIds = const [],
    this.replicationState,
    this.replicationStateTime,
    this.replicationStats,
    this.errorCount,
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rev;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Remote? source_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Remote? target;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? createTarget;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? continuous;

  List<String> docIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? replicationState;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? replicationStateTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ReplicationStats? replicationStats;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? errorCount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReplicatorDocument &&
          other.id == id &&
          other.rev == rev &&
          other.source_ == source_ &&
          other.target == target &&
          other.owner == owner &&
          other.createTarget == createTarget &&
          other.continuous == continuous &&
          other.docIds == docIds &&
          other.replicationState == replicationState &&
          other.replicationStateTime == replicationStateTime &&
          other.replicationStats == replicationStats &&
          other.errorCount == errorCount;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (rev == null ? 0 : rev!.hashCode) +
      (source_ == null ? 0 : source_!.hashCode) +
      (target == null ? 0 : target!.hashCode) +
      (owner == null ? 0 : owner!.hashCode) +
      (createTarget == null ? 0 : createTarget!.hashCode) +
      (continuous == null ? 0 : continuous!.hashCode) +
      (docIds.hashCode) +
      (replicationState == null ? 0 : replicationState!.hashCode) +
      (replicationStateTime == null ? 0 : replicationStateTime!.hashCode) +
      (replicationStats == null ? 0 : replicationStats!.hashCode) +
      (errorCount == null ? 0 : errorCount!.hashCode);

  @override
  String toString() =>
      'ReplicatorDocument[id=$id, rev=$rev, source_=$source_, target=$target, owner=$owner, createTarget=$createTarget, continuous=$continuous, docIds=$docIds, replicationState=$replicationState, replicationStateTime=$replicationStateTime, replicationStats=$replicationStats, errorCount=$errorCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'_id'] = id;
    if (rev != null) {
      json[r'_rev'] = rev;
    }
    if (source_ != null) {
      json[r'source'] = source_;
    }
    if (target != null) {
      json[r'target'] = target;
    }
    if (owner != null) {
      json[r'owner'] = owner;
    }
    if (createTarget != null) {
      json[r'create_target'] = createTarget;
    }
    if (continuous != null) {
      json[r'continuous'] = continuous;
    }
    json[r'doc_ids'] = docIds;
    if (replicationState != null) {
      json[r'_replication_state'] = replicationState;
    }
    if (replicationStateTime != null) {
      json[r'_replication_state_time'] = replicationStateTime!.toUtc().toIso8601String();
    }
    if (replicationStats != null) {
      json[r'_replication_stats'] = replicationStats;
    }
    if (errorCount != null) {
      json[r'error_count'] = errorCount;
    }
    return json;
  }

  /// Returns a new [ReplicatorDocument] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReplicatorDocument? fromJson(dynamic value) {
    if (value is ReplicatorDocument) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReplicatorDocument[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReplicatorDocument[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReplicatorDocument(
        id: mapValueOfType<String>(json, r'_id')!,
        rev: mapValueOfType<String>(json, r'_rev'),
        source_: Remote.fromJson(json[r'source']),
        target: Remote.fromJson(json[r'target']),
        owner: mapValueOfType<String>(json, r'owner'),
        createTarget: mapValueOfType<bool>(json, r'create_target'),
        continuous: mapValueOfType<bool>(json, r'continuous'),
        docIds: json[r'doc_ids'] is List ? (json[r'doc_ids'] as List).cast<String>() : const [],
        replicationState: mapValueOfType<String>(json, r'_replication_state'),
        replicationStateTime: mapDateTime(json, r'_replication_state_time', ''),
        replicationStats: ReplicationStats.fromJson(json[r'_replication_stats']),
        errorCount: mapValueOfType<int>(json, r'error_count'),
      );
    }
    return null;
  }

  static List<ReplicatorDocument>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ReplicatorDocument>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReplicatorDocument.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReplicatorDocument> mapFromJson(dynamic json) {
    final map = <String, ReplicatorDocument>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReplicatorDocument.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReplicatorDocument-objects as value to a dart map
  static Map<String, List<ReplicatorDocument>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ReplicatorDocument>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReplicatorDocument.listFromJson(
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
    '_id',
  };
}
