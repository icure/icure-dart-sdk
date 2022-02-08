//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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
    required this.ignorePrescriptionDate,
    required this.hospitalisedPatient,
    required this.creditNote,
    this.relatedInvoiceIoCode,
    this.relatedInvoiceNumber,
    this.relatedBatchSendNumber,
    this.relatedBatchYearMonth,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PatientDto? patient;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ioCode;

  List<InvoiceItem> items;

  EfactInvoiceReasonEnum? reason;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? invoiceRef;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? invoiceNumber;

  bool ignorePrescriptionDate;

  bool hospitalisedPatient;

  bool creditNote;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? relatedInvoiceIoCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? relatedInvoiceNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? relatedBatchSendNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? relatedBatchYearMonth;

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
    (patient == null ? 0 : patient!.hashCode) +
    (ioCode == null ? 0 : ioCode!.hashCode) +
    (items.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (invoiceRef == null ? 0 : invoiceRef!.hashCode) +
    (invoiceNumber == null ? 0 : invoiceNumber!.hashCode) +
    (ignorePrescriptionDate.hashCode) +
    (hospitalisedPatient.hashCode) +
    (creditNote.hashCode) +
    (relatedInvoiceIoCode == null ? 0 : relatedInvoiceIoCode!.hashCode) +
    (relatedInvoiceNumber == null ? 0 : relatedInvoiceNumber!.hashCode) +
    (relatedBatchSendNumber == null ? 0 : relatedBatchSendNumber!.hashCode) +
    (relatedBatchYearMonth == null ? 0 : relatedBatchYearMonth!.hashCode);

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
  static EfactInvoice? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EfactInvoice[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EfactInvoice[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EfactInvoice(
        patient: PatientDto.fromJson(json[r'patient']),
        ioCode: mapValueOfType<String>(json, r'ioCode'),
        items: InvoiceItem.listFromJson(json[r'items'])!,
        reason: EfactInvoiceReasonEnum.fromJson(json[r'reason']),
        invoiceRef: mapValueOfType<String>(json, r'invoiceRef'),
        invoiceNumber: mapValueOfType<int>(json, r'invoiceNumber'),
        ignorePrescriptionDate: mapValueOfType<bool>(json, r'ignorePrescriptionDate')!,
        hospitalisedPatient: mapValueOfType<bool>(json, r'hospitalisedPatient')!,
        creditNote: mapValueOfType<bool>(json, r'creditNote')!,
        relatedInvoiceIoCode: mapValueOfType<String>(json, r'relatedInvoiceIoCode'),
        relatedInvoiceNumber: mapValueOfType<int>(json, r'relatedInvoiceNumber'),
        relatedBatchSendNumber: mapValueOfType<int>(json, r'relatedBatchSendNumber'),
        relatedBatchYearMonth: mapValueOfType<int>(json, r'relatedBatchYearMonth'),
      );
    }
    return null;
  }

  static List<EfactInvoice>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EfactInvoice>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EfactInvoice.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EfactInvoice> mapFromJson(dynamic json) {
    final map = <String, EfactInvoice>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EfactInvoice.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EfactInvoice-objects as value to a dart map
  static Map<String, List<EfactInvoice>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EfactInvoice>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EfactInvoice.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'items',
    'ignorePrescriptionDate',
    'hospitalisedPatient',
    'creditNote',
  };
}


class EfactInvoiceReasonEnum {
  /// Instantiate a new enum with the provided [value].
  const EfactInvoiceReasonEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

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

  static EfactInvoiceReasonEnum? fromJson(dynamic value) => EfactInvoiceReasonEnumTypeTransformer().decode(value);

  static List<EfactInvoiceReasonEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EfactInvoiceReasonEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EfactInvoiceReasonEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
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
  EfactInvoiceReasonEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'Chimiotherapy': return EfactInvoiceReasonEnum.chimiotherapy;
        case r'ProfessionalDisease': return EfactInvoiceReasonEnum.professionalDisease;
        case r'WorkAccident': return EfactInvoiceReasonEnum.workAccident;
        case r'Accident': return EfactInvoiceReasonEnum.accident;
        case r'Other': return EfactInvoiceReasonEnum.other;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EfactInvoiceReasonEnumTypeTransformer] instance.
  static EfactInvoiceReasonEnumTypeTransformer? _instance;
}


