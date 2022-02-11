//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class InvoicesBatch {
  /// Returns a new [InvoicesBatch] instance.
  InvoicesBatch({
    this.invoicingYear = 0,
    this.invoicingMonth = 0,
    this.fileRef,
    this.batchRef,
    this.ioFederationCode,
    this.uniqueSendNumber,
    this.sender,
    this.numericalRef,
    this.invoices = const [],
  });

  int invoicingYear;

  int invoicingMonth;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fileRef;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? batchRef;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ioFederationCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? uniqueSendNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  InvoiceSender? sender;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numericalRef;

  List<EfactInvoice> invoices;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InvoicesBatch &&
     other.invoicingYear == invoicingYear &&
     other.invoicingMonth == invoicingMonth &&
     other.fileRef == fileRef &&
     other.batchRef == batchRef &&
     other.ioFederationCode == ioFederationCode &&
     other.uniqueSendNumber == uniqueSendNumber &&
     other.sender == sender &&
     other.numericalRef == numericalRef &&
     other.invoices == invoices;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (invoicingYear.hashCode) +
    (invoicingMonth.hashCode) +
    (fileRef == null ? 0 : fileRef!.hashCode) +
    (batchRef == null ? 0 : batchRef!.hashCode) +
    (ioFederationCode == null ? 0 : ioFederationCode!.hashCode) +
    (uniqueSendNumber == null ? 0 : uniqueSendNumber!.hashCode) +
    (sender == null ? 0 : sender!.hashCode) +
    (numericalRef == null ? 0 : numericalRef!.hashCode) +
    (invoices.hashCode);

  @override
  String toString() => 'InvoicesBatch[invoicingYear=$invoicingYear, invoicingMonth=$invoicingMonth, fileRef=$fileRef, batchRef=$batchRef, ioFederationCode=$ioFederationCode, uniqueSendNumber=$uniqueSendNumber, sender=$sender, numericalRef=$numericalRef, invoices=$invoices]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'invoicingYear'] = invoicingYear;
      json[r'invoicingMonth'] = invoicingMonth;
    if (fileRef != null) {
      json[r'fileRef'] = fileRef;
    }
    if (batchRef != null) {
      json[r'batchRef'] = batchRef;
    }
    if (ioFederationCode != null) {
      json[r'ioFederationCode'] = ioFederationCode;
    }
    if (uniqueSendNumber != null) {
      json[r'uniqueSendNumber'] = uniqueSendNumber;
    }
    if (sender != null) {
      json[r'sender'] = sender;
    }
    if (numericalRef != null) {
      json[r'numericalRef'] = numericalRef;
    }
      json[r'invoices'] = invoices;
    return json;
  }

  /// Returns a new [InvoicesBatch] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InvoicesBatch? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InvoicesBatch[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InvoicesBatch[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InvoicesBatch(
        invoicingYear: mapValueOfType<int>(json, r'invoicingYear')!,
        invoicingMonth: mapValueOfType<int>(json, r'invoicingMonth')!,
        fileRef: mapValueOfType<String>(json, r'fileRef'),
        batchRef: mapValueOfType<String>(json, r'batchRef'),
        ioFederationCode: mapValueOfType<String>(json, r'ioFederationCode'),
        uniqueSendNumber: mapValueOfType<int>(json, r'uniqueSendNumber'),
        sender: InvoiceSender.fromJson(json[r'sender']),
        numericalRef: mapValueOfType<int>(json, r'numericalRef'),
        invoices: EfactInvoice.listFromJson(json[r'invoices'])!,
      );
    }
    return null;
  }

  static List<InvoicesBatch>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvoicesBatch>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvoicesBatch.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InvoicesBatch> mapFromJson(dynamic json) {
    final map = <String, InvoicesBatch>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvoicesBatch.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InvoicesBatch-objects as value to a dart map
  static Map<String, List<InvoicesBatch>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InvoicesBatch>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvoicesBatch.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'invoicingYear',
    'invoicingMonth',
    'invoices',
  };
}

