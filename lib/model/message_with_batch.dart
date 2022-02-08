//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MessageWithBatch {
  /// Returns a new [MessageWithBatch] instance.
  MessageWithBatch({
    this.invoicesBatch,
    this.message,
  });

  InvoicesBatch invoicesBatch;

  MessageDto message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MessageWithBatch &&
     other.invoicesBatch == invoicesBatch &&
     other.message == message;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (invoicesBatch == null ? 0 : invoicesBatch.hashCode) +
    (message == null ? 0 : message.hashCode);

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
  static MessageWithBatch fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MessageWithBatch(
        invoicesBatch: InvoicesBatch.fromJson(json[r'invoicesBatch']),
        message: MessageDto.fromJson(json[r'message']),
      );
    }
    return null;
  }

  static List<MessageWithBatch> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MessageWithBatch.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MessageWithBatch>[];

  static Map<String, MessageWithBatch> mapFromJson(dynamic json) {
    final map = <String, MessageWithBatch>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = MessageWithBatch.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MessageWithBatch-objects as value to a dart map
  static Map<String, List<MessageWithBatch>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MessageWithBatch>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = MessageWithBatch.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

