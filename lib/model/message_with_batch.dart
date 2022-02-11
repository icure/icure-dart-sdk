//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class MessageWithBatch {
  /// Returns a new [MessageWithBatch] instance.
  MessageWithBatch({
    this.invoicesBatch,
    this.message,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  InvoicesBatch? invoicesBatch;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MessageDto? message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MessageWithBatch &&
     other.invoicesBatch == invoicesBatch &&
     other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (invoicesBatch == null ? 0 : invoicesBatch!.hashCode) +
    (message == null ? 0 : message!.hashCode);

  @override
  String toString() => 'MessageWithBatch[invoicesBatch=$invoicesBatch, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (invoicesBatch != null) {
      json[r'invoicesBatch'] = invoicesBatch;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    return json;
  }

  /// Returns a new [MessageWithBatch] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MessageWithBatch? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MessageWithBatch[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MessageWithBatch[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MessageWithBatch(
        invoicesBatch: InvoicesBatch.fromJson(json[r'invoicesBatch']),
        message: MessageDto.fromJson(json[r'message']),
      );
    }
    return null;
  }

  static List<MessageWithBatch>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessageWithBatch>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessageWithBatch.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MessageWithBatch> mapFromJson(dynamic json) {
    final map = <String, MessageWithBatch>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MessageWithBatch.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MessageWithBatch-objects as value to a dart map
  static Map<String, List<MessageWithBatch>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MessageWithBatch>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MessageWithBatch.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

