//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ssin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dateOfBirth;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sex;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? documentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? protocol;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? complete;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? demandDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? labo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? engine;

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
    (ssin == null ? 0 : ssin!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (dateOfBirth == null ? 0 : dateOfBirth!.hashCode) +
    (sex == null ? 0 : sex!.hashCode) +
    (documentId == null ? 0 : documentId!.hashCode) +
    (protocol == null ? 0 : protocol!.hashCode) +
    (complete == null ? 0 : complete!.hashCode) +
    (demandDate == null ? 0 : demandDate!.hashCode) +
    (labo == null ? 0 : labo!.hashCode) +
    (engine == null ? 0 : engine!.hashCode) +
    (codes.hashCode) +
    (services.hashCode);

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
  static ResultInfoDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ResultInfoDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ResultInfoDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

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
        codes: CodeStubDto.listFromJson(json[r'codes'])!.toSet(),
        services: ServiceDto.listFromJson(json[r'services'])!,
      );
    }
    return null;
  }

  static List<ResultInfoDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResultInfoDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResultInfoDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResultInfoDto> mapFromJson(dynamic json) {
    final map = <String, ResultInfoDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResultInfoDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResultInfoDto-objects as value to a dart map
  static Map<String, List<ResultInfoDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ResultInfoDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResultInfoDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'codes',
    'services',
  };
}

