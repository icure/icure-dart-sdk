//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResultInfoDto {
  /// Returns a new [ResultInfoDto] instance.
  ResultInfoDto({
    this.ssin,
    this.lastName,
    this.firstName,
    this.dateOfBirth,
    this.sex,
    this.documentId,
    this.protocol,
    this.complete,
    this.demandDate,
    this.labo,
    this.engine,
    this.codes = const {},
    this.services = const [],
  });

  String ssin;

  String lastName;

  String firstName;

  int dateOfBirth;

  String sex;

  String documentId;

  String protocol;

  bool complete;

  int demandDate;

  String labo;

  String engine;

  Set<CodeStubDto> codes;

  List<ServiceDto> services;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResultInfoDto &&
     other.ssin == ssin &&
     other.lastName == lastName &&
     other.firstName == firstName &&
     other.dateOfBirth == dateOfBirth &&
     other.sex == sex &&
     other.documentId == documentId &&
     other.protocol == protocol &&
     other.complete == complete &&
     other.demandDate == demandDate &&
     other.labo == labo &&
     other.engine == engine &&
     other.codes == codes &&
     other.services == services;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (ssin == null ? 0 : ssin.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (dateOfBirth == null ? 0 : dateOfBirth.hashCode) +
    (sex == null ? 0 : sex.hashCode) +
    (documentId == null ? 0 : documentId.hashCode) +
    (protocol == null ? 0 : protocol.hashCode) +
    (complete == null ? 0 : complete.hashCode) +
    (demandDate == null ? 0 : demandDate.hashCode) +
    (labo == null ? 0 : labo.hashCode) +
    (engine == null ? 0 : engine.hashCode) +
    (codes == null ? 0 : codes.hashCode) +
    (services == null ? 0 : services.hashCode);

  @override
  String toString() => 'ResultInfoDto[ssin=$ssin, lastName=$lastName, firstName=$firstName, dateOfBirth=$dateOfBirth, sex=$sex, documentId=$documentId, protocol=$protocol, complete=$complete, demandDate=$demandDate, labo=$labo, engine=$engine, codes=$codes, services=$services]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (ssin != null) {
      json[r'ssin'] = ssin;
    }
    if (lastName != null) {
      json[r'lastName'] = lastName;
    }
    if (firstName != null) {
      json[r'firstName'] = firstName;
    }
    if (dateOfBirth != null) {
      json[r'dateOfBirth'] = dateOfBirth;
    }
    if (sex != null) {
      json[r'sex'] = sex;
    }
    if (documentId != null) {
      json[r'documentId'] = documentId;
    }
    if (protocol != null) {
      json[r'protocol'] = protocol;
    }
    if (complete != null) {
      json[r'complete'] = complete;
    }
    if (demandDate != null) {
      json[r'demandDate'] = demandDate;
    }
    if (labo != null) {
      json[r'labo'] = labo;
    }
    if (engine != null) {
      json[r'engine'] = engine;
    }
      json[r'codes'] = codes;
      json[r'services'] = services;
    return json;
  }

  /// Returns a new [ResultInfoDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResultInfoDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ResultInfoDto(
        ssin: mapValueOfType<String>(json, r'ssin'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        firstName: mapValueOfType<String>(json, r'firstName'),
        dateOfBirth: mapValueOfType<int>(json, r'dateOfBirth'),
        sex: mapValueOfType<String>(json, r'sex'),
        documentId: mapValueOfType<String>(json, r'documentId'),
        protocol: mapValueOfType<String>(json, r'protocol'),
        complete: mapValueOfType<bool>(json, r'complete'),
        demandDate: mapValueOfType<int>(json, r'demandDate'),
        labo: mapValueOfType<String>(json, r'labo'),
        engine: mapValueOfType<String>(json, r'engine'),
        codes: CodeStubDto.listFromJson(json[r'codes']),
        services: ServiceDto.listFromJson(json[r'services']),
      );
    }
    return null;
  }

  static List<ResultInfoDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ResultInfoDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ResultInfoDto>[];

  static Map<String, ResultInfoDto> mapFromJson(dynamic json) {
    final map = <String, ResultInfoDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ResultInfoDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResultInfoDto-objects as value to a dart map
  static Map<String, List<ResultInfoDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResultInfoDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ResultInfoDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

