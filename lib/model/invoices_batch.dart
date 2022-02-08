//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

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

  String fileRef;

  String batchRef;

  String ioFederationCode;

  int uniqueSendNumber;

  InvoiceSender sender;

  int numericalRef;

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
    (invoicingYear == null ? 0 : invoicingYear.hashCode) +
    (invoicingMonth == null ? 0 : invoicingMonth.hashCode) +
    (fileRef == null ? 0 : fileRef.hashCode) +
    (batchRef == null ? 0 : batchRef.hashCode) +
    (ioFederationCode == null ? 0 : ioFederationCode.hashCode) +
    (uniqueSendNumber == null ? 0 : uniqueSendNumber.hashCode) +
    (sender == null ? 0 : sender.hashCode) +
    (numericalRef == null ? 0 : numericalRef.hashCode) +
    (invoices == null ? 0 : invoices.hashCode);

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
  static InvoicesBatch fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InvoicesBatch(
        invoicingYear: mapValueOfType<int>(json, r'invoicingYear'),
        invoicingMonth: mapValueOfType<int>(json, r'invoicingMonth'),
        fileRef: mapValueOfType<String>(json, r'fileRef'),
        batchRef: mapValueOfType<String>(json, r'batchRef'),
        ioFederationCode: mapValueOfType<String>(json, r'ioFederationCode'),
        uniqueSendNumber: mapValueOfType<int>(json, r'uniqueSendNumber'),
        sender: InvoiceSender.fromJson(json[r'sender']),
        numericalRef: mapValueOfType<int>(json, r'numericalRef'),
        invoices: EfactInvoice.listFromJson(json[r'invoices']),
      );
    }
    return null;
  }

  static List<InvoicesBatch> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InvoicesBatch.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InvoicesBatch>[];

  static Map<String, InvoicesBatch> mapFromJson(dynamic json) {
    final map = <String, InvoicesBatch>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InvoicesBatch.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InvoicesBatch-objects as value to a dart map
  static Map<String, List<InvoicesBatch>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InvoicesBatch>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InvoicesBatch.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

