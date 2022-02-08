//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EfactInvoice {
  /// Returns a new [EfactInvoice] instance.
  EfactInvoice({
    this.patient,
    this.ioCode,
    this.items = const [],
    this.reason,
    this.invoiceRef,
    this.invoiceNumber,
    @required this.ignorePrescriptionDate,
    @required this.hospitalisedPatient,
    @required this.creditNote,
    this.relatedInvoiceIoCode,
    this.relatedInvoiceNumber,
    this.relatedBatchSendNumber,
    this.relatedBatchYearMonth,
  });

  PatientDto patient;

  String ioCode;

  List<InvoiceItem> items;

  EfactInvoiceReasonEnum reason;

  String invoiceRef;

  int invoiceNumber;

  bool ignorePrescriptionDate;

  bool hospitalisedPatient;

  bool creditNote;

  String relatedInvoiceIoCode;

  int relatedInvoiceNumber;

  int relatedBatchSendNumber;

  int relatedBatchYearMonth;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EfactInvoice &&
     other.patient == patient &&
     other.ioCode == ioCode &&
     other.items == items &&
     other.reason == reason &&
     other.invoiceRef == invoiceRef &&
     other.invoiceNumber == invoiceNumber &&
     other.ignorePrescriptionDate == ignorePrescriptionDate &&
     other.hospitalisedPatient == hospitalisedPatient &&
     other.creditNote == creditNote &&
     other.relatedInvoiceIoCode == relatedInvoiceIoCode &&
     other.relatedInvoiceNumber == relatedInvoiceNumber &&
     other.relatedBatchSendNumber == relatedBatchSendNumber &&
     other.relatedBatchYearMonth == relatedBatchYearMonth;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (patient == null ? 0 : patient.hashCode) +
    (ioCode == null ? 0 : ioCode.hashCode) +
    (items == null ? 0 : items.hashCode) +
    (reason == null ? 0 : reason.hashCode) +
    (invoiceRef == null ? 0 : invoiceRef.hashCode) +
    (invoiceNumber == null ? 0 : invoiceNumber.hashCode) +
    (ignorePrescriptionDate == null ? 0 : ignorePrescriptionDate.hashCode) +
    (hospitalisedPatient == null ? 0 : hospitalisedPatient.hashCode) +
    (creditNote == null ? 0 : creditNote.hashCode) +
    (relatedInvoiceIoCode == null ? 0 : relatedInvoiceIoCode.hashCode) +
    (relatedInvoiceNumber == null ? 0 : relatedInvoiceNumber.hashCode) +
    (relatedBatchSendNumber == null ? 0 : relatedBatchSendNumber.hashCode) +
    (relatedBatchYearMonth == null ? 0 : relatedBatchYearMonth.hashCode);

  @override
  String toString() => 'EfactInvoice[patient=$patient, ioCode=$ioCode, items=$items, reason=$reason, invoiceRef=$invoiceRef, invoiceNumber=$invoiceNumber, ignorePrescriptionDate=$ignorePrescriptionDate, hospitalisedPatient=$hospitalisedPatient, creditNote=$creditNote, relatedInvoiceIoCode=$relatedInvoiceIoCode, relatedInvoiceNumber=$relatedInvoiceNumber, relatedBatchSendNumber=$relatedBatchSendNumber, relatedBatchYearMonth=$relatedBatchYearMonth]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (patient != null) {
      json[r'patient'] = patient;
    }
    if (ioCode != null) {
      json[r'ioCode'] = ioCode;
    }
      json[r'items'] = items;
    if (reason != null) {
      json[r'reason'] = reason;
    }
    if (invoiceRef != null) {
      json[r'invoiceRef'] = invoiceRef;
    }
    if (invoiceNumber != null) {
      json[r'invoiceNumber'] = invoiceNumber;
    }
      json[r'ignorePrescriptionDate'] = ignorePrescriptionDate;
      json[r'hospitalisedPatient'] = hospitalisedPatient;
      json[r'creditNote'] = creditNote;
    if (relatedInvoiceIoCode != null) {
      json[r'relatedInvoiceIoCode'] = relatedInvoiceIoCode;
    }
    if (relatedInvoiceNumber != null) {
      json[r'relatedInvoiceNumber'] = relatedInvoiceNumber;
    }
    if (relatedBatchSendNumber != null) {
      json[r'relatedBatchSendNumber'] = relatedBatchSendNumber;
    }
    if (relatedBatchYearMonth != null) {
      json[r'relatedBatchYearMonth'] = relatedBatchYearMonth;
    }
    return json;
  }

  /// Returns a new [EfactInvoice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EfactInvoice fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return EfactInvoice(
        patient: PatientDto.fromJson(json[r'patient']),
        ioCode: mapValueOfType<String>(json, r'ioCode'),
        items: InvoiceItem.listFromJson(json[r'items']),
        reason: EfactInvoiceReasonEnum.fromJson(json[r'reason']),
        invoiceRef: mapValueOfType<String>(json, r'invoiceRef'),
        invoiceNumber: mapValueOfType<int>(json, r'invoiceNumber'),
        ignorePrescriptionDate: mapValueOfType<bool>(json, r'ignorePrescriptionDate'),
        hospitalisedPatient: mapValueOfType<bool>(json, r'hospitalisedPatient'),
        creditNote: mapValueOfType<bool>(json, r'creditNote'),
        relatedInvoiceIoCode: mapValueOfType<String>(json, r'relatedInvoiceIoCode'),
        relatedInvoiceNumber: mapValueOfType<int>(json, r'relatedInvoiceNumber'),
        relatedBatchSendNumber: mapValueOfType<int>(json, r'relatedBatchSendNumber'),
        relatedBatchYearMonth: mapValueOfType<int>(json, r'relatedBatchYearMonth'),
      );
    }
    return null;
  }

  static List<EfactInvoice> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(EfactInvoice.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <EfactInvoice>[];

  static Map<String, EfactInvoice> mapFromJson(dynamic json) {
    final map = <String, EfactInvoice>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = EfactInvoice.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EfactInvoice-objects as value to a dart map
  static Map<String, List<EfactInvoice>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EfactInvoice>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = EfactInvoice.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class EfactInvoiceReasonEnum {
  /// Instantiate a new enum with the provided [value].
  const EfactInvoiceReasonEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const chimiotherapy = EfactInvoiceReasonEnum._(r'Chimiotherapy');
  static const professionalDisease = EfactInvoiceReasonEnum._(r'ProfessionalDisease');
  static const workAccident = EfactInvoiceReasonEnum._(r'WorkAccident');
  static const accident = EfactInvoiceReasonEnum._(r'Accident');
  static const other = EfactInvoiceReasonEnum._(r'Other');

  /// List of all possible values in this [enum][EfactInvoiceReasonEnum].
  static const values = <EfactInvoiceReasonEnum>[
    chimiotherapy,
    professionalDisease,
    workAccident,
    accident,
    other,
  ];

  static EfactInvoiceReasonEnum fromJson(dynamic value) =>
    EfactInvoiceReasonEnumTypeTransformer().decode(value);

  static List<EfactInvoiceReasonEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(EfactInvoiceReasonEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <EfactInvoiceReasonEnum>[];
}

/// Transformation class that can [encode] an instance of [EfactInvoiceReasonEnum] to String,
/// and [decode] dynamic data back to [EfactInvoiceReasonEnum].
class EfactInvoiceReasonEnumTypeTransformer {
  factory EfactInvoiceReasonEnumTypeTransformer() => _instance ??= const EfactInvoiceReasonEnumTypeTransformer._();

  const EfactInvoiceReasonEnumTypeTransformer._();

  String encode(EfactInvoiceReasonEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EfactInvoiceReasonEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EfactInvoiceReasonEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'Chimiotherapy': return EfactInvoiceReasonEnum.chimiotherapy;
        case r'ProfessionalDisease': return EfactInvoiceReasonEnum.professionalDisease;
        case r'WorkAccident': return EfactInvoiceReasonEnum.workAccident;
        case r'Accident': return EfactInvoiceReasonEnum.accident;
        case r'Other': return EfactInvoiceReasonEnum.other;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EfactInvoiceReasonEnumTypeTransformer] instance.
  static EfactInvoiceReasonEnumTypeTransformer _instance;
}


