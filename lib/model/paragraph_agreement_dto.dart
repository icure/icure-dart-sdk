//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ParagraphAgreementDto {
  /// Returns a new [ParagraphAgreementDto] instance.
  ParagraphAgreementDto({
    this.timestamp,
    this.paragraph,
    this.accepted,
    this.inTreatment,
    this.canceled,
    this.careProviderReference,
    this.decisionReference,
    this.start,
    this.end,
    this.cancelationDate,
    this.quantityValue,
    this.quantityUnit,
    this.ioRequestReference,
    this.responseType,
    this.refusalJustification = const {},
    this.verses = const {},
    this.coverageType,
    this.unitNumber,
    this.strength,
    this.strengthUnit,
    this.agreementAppendices = const [],
    this.documentId,
  });

  int timestamp;

  String paragraph;

  bool accepted;

  bool inTreatment;

  bool canceled;

  String careProviderReference;

  String decisionReference;

  int start;

  int end;

  int cancelationDate;

  double quantityValue;

  String quantityUnit;

  String ioRequestReference;

  String responseType;

  Map<String, String> refusalJustification;

  Set<int> verses;

  String coverageType;

  double unitNumber;

  double strength;

  String strengthUnit;

  List<AgreementAppendixDto> agreementAppendices;

  String documentId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ParagraphAgreementDto &&
     other.timestamp == timestamp &&
     other.paragraph == paragraph &&
     other.accepted == accepted &&
     other.inTreatment == inTreatment &&
     other.canceled == canceled &&
     other.careProviderReference == careProviderReference &&
     other.decisionReference == decisionReference &&
     other.start == start &&
     other.end == end &&
     other.cancelationDate == cancelationDate &&
     other.quantityValue == quantityValue &&
     other.quantityUnit == quantityUnit &&
     other.ioRequestReference == ioRequestReference &&
     other.responseType == responseType &&
     other.refusalJustification == refusalJustification &&
     other.verses == verses &&
     other.coverageType == coverageType &&
     other.unitNumber == unitNumber &&
     other.strength == strength &&
     other.strengthUnit == strengthUnit &&
     other.agreementAppendices == agreementAppendices &&
     other.documentId == documentId;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (timestamp == null ? 0 : timestamp.hashCode) +
    (paragraph == null ? 0 : paragraph.hashCode) +
    (accepted == null ? 0 : accepted.hashCode) +
    (inTreatment == null ? 0 : inTreatment.hashCode) +
    (canceled == null ? 0 : canceled.hashCode) +
    (careProviderReference == null ? 0 : careProviderReference.hashCode) +
    (decisionReference == null ? 0 : decisionReference.hashCode) +
    (start == null ? 0 : start.hashCode) +
    (end == null ? 0 : end.hashCode) +
    (cancelationDate == null ? 0 : cancelationDate.hashCode) +
    (quantityValue == null ? 0 : quantityValue.hashCode) +
    (quantityUnit == null ? 0 : quantityUnit.hashCode) +
    (ioRequestReference == null ? 0 : ioRequestReference.hashCode) +
    (responseType == null ? 0 : responseType.hashCode) +
    (refusalJustification == null ? 0 : refusalJustification.hashCode) +
    (verses == null ? 0 : verses.hashCode) +
    (coverageType == null ? 0 : coverageType.hashCode) +
    (unitNumber == null ? 0 : unitNumber.hashCode) +
    (strength == null ? 0 : strength.hashCode) +
    (strengthUnit == null ? 0 : strengthUnit.hashCode) +
    (agreementAppendices == null ? 0 : agreementAppendices.hashCode) +
    (documentId == null ? 0 : documentId.hashCode);

  @override
  String toString() => 'ParagraphAgreementDto[timestamp=$timestamp, paragraph=$paragraph, accepted=$accepted, inTreatment=$inTreatment, canceled=$canceled, careProviderReference=$careProviderReference, decisionReference=$decisionReference, start=$start, end=$end, cancelationDate=$cancelationDate, quantityValue=$quantityValue, quantityUnit=$quantityUnit, ioRequestReference=$ioRequestReference, responseType=$responseType, refusalJustification=$refusalJustification, verses=$verses, coverageType=$coverageType, unitNumber=$unitNumber, strength=$strength, strengthUnit=$strengthUnit, agreementAppendices=$agreementAppendices, documentId=$documentId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (timestamp != null) {
      json[r'timestamp'] = timestamp;
    }
    if (paragraph != null) {
      json[r'paragraph'] = paragraph;
    }
    if (accepted != null) {
      json[r'accepted'] = accepted;
    }
    if (inTreatment != null) {
      json[r'inTreatment'] = inTreatment;
    }
    if (canceled != null) {
      json[r'canceled'] = canceled;
    }
    if (careProviderReference != null) {
      json[r'careProviderReference'] = careProviderReference;
    }
    if (decisionReference != null) {
      json[r'decisionReference'] = decisionReference;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    if (end != null) {
      json[r'end'] = end;
    }
    if (cancelationDate != null) {
      json[r'cancelationDate'] = cancelationDate;
    }
    if (quantityValue != null) {
      json[r'quantityValue'] = quantityValue;
    }
    if (quantityUnit != null) {
      json[r'quantityUnit'] = quantityUnit;
    }
    if (ioRequestReference != null) {
      json[r'ioRequestReference'] = ioRequestReference;
    }
    if (responseType != null) {
      json[r'responseType'] = responseType;
    }
    if (refusalJustification != null) {
      json[r'refusalJustification'] = refusalJustification;
    }
    if (verses != null) {
      json[r'verses'] = verses;
    }
    if (coverageType != null) {
      json[r'coverageType'] = coverageType;
    }
    if (unitNumber != null) {
      json[r'unitNumber'] = unitNumber;
    }
    if (strength != null) {
      json[r'strength'] = strength;
    }
    if (strengthUnit != null) {
      json[r'strengthUnit'] = strengthUnit;
    }
    if (agreementAppendices != null) {
      json[r'agreementAppendices'] = agreementAppendices;
    }
    if (documentId != null) {
      json[r'documentId'] = documentId;
    }
    return json;
  }

  /// Returns a new [ParagraphAgreementDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ParagraphAgreementDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ParagraphAgreementDto(
        timestamp: mapValueOfType<int>(json, r'timestamp'),
        paragraph: mapValueOfType<String>(json, r'paragraph'),
        accepted: mapValueOfType<bool>(json, r'accepted'),
        inTreatment: mapValueOfType<bool>(json, r'inTreatment'),
        canceled: mapValueOfType<bool>(json, r'canceled'),
        careProviderReference: mapValueOfType<String>(json, r'careProviderReference'),
        decisionReference: mapValueOfType<String>(json, r'decisionReference'),
        start: mapValueOfType<int>(json, r'start'),
        end: mapValueOfType<int>(json, r'end'),
        cancelationDate: mapValueOfType<int>(json, r'cancelationDate'),
        quantityValue: mapValueOfType<double>(json, r'quantityValue'),
        quantityUnit: mapValueOfType<String>(json, r'quantityUnit'),
        ioRequestReference: mapValueOfType<String>(json, r'ioRequestReference'),
        responseType: mapValueOfType<String>(json, r'responseType'),
        refusalJustification: mapCastOfType<String, String>(json, r'refusalJustification'),
        verses: json[r'verses'] is Set
          ? (json[r'verses'] as Set).cast<int>()
          : null,
        coverageType: mapValueOfType<String>(json, r'coverageType'),
        unitNumber: mapValueOfType<double>(json, r'unitNumber'),
        strength: mapValueOfType<double>(json, r'strength'),
        strengthUnit: mapValueOfType<String>(json, r'strengthUnit'),
        agreementAppendices: AgreementAppendixDto.listFromJson(json[r'agreementAppendices']),
        documentId: mapValueOfType<String>(json, r'documentId'),
      );
    }
    return null;
  }

  static List<ParagraphAgreementDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ParagraphAgreementDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ParagraphAgreementDto>[];

  static Map<String, ParagraphAgreementDto> mapFromJson(dynamic json) {
    final map = <String, ParagraphAgreementDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ParagraphAgreementDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ParagraphAgreementDto-objects as value to a dart map
  static Map<String, List<ParagraphAgreementDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ParagraphAgreementDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ParagraphAgreementDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

