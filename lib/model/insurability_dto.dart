//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class InsurabilityDto {
  /// Returns a new [InsurabilityDto] instance.
  InsurabilityDto({
    this.parameters = const {},
    this.hospitalisation,
    this.ambulatory,
    this.dental,
    this.identificationNumber,
    this.insuranceId,
    this.startDate,
    this.endDate,
    this.titularyId,
    this.encryptedSelf,
  });

  /// Insurance extra parameters.
  Map<String, String> parameters;

  /// Is hospitalization covered.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hospitalisation;

  /// Is outpatient care covered.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ambulatory;

  /// Is dental care covered.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? dental;

  /// Identification number of the patient at the insurance.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? identificationNumber;

  /// Id of the Insurance.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? insuranceId;

  /// Start date of the coverage (YYYYMMDD).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startDate;

  /// End date of the coverage (YYYYMMDD).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endDate;

  /// UUID of the contact person who is the policyholder of the insurance (when the patient is covered by the insurance of a third person).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? titularyId;

  /// The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? encryptedSelf;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InsurabilityDto &&
          other.parameters == parameters &&
          other.hospitalisation == hospitalisation &&
          other.ambulatory == ambulatory &&
          other.dental == dental &&
          other.identificationNumber == identificationNumber &&
          other.insuranceId == insuranceId &&
          other.startDate == startDate &&
          other.endDate == endDate &&
          other.titularyId == titularyId &&
          other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (parameters.hashCode) +
      (hospitalisation == null ? 0 : hospitalisation!.hashCode) +
      (ambulatory == null ? 0 : ambulatory!.hashCode) +
      (dental == null ? 0 : dental!.hashCode) +
      (identificationNumber == null ? 0 : identificationNumber!.hashCode) +
      (insuranceId == null ? 0 : insuranceId!.hashCode) +
      (startDate == null ? 0 : startDate!.hashCode) +
      (endDate == null ? 0 : endDate!.hashCode) +
      (titularyId == null ? 0 : titularyId!.hashCode) +
      (encryptedSelf == null ? 0 : encryptedSelf!.hashCode);

  @override
  String toString() =>
      'InsurabilityDto[parameters=$parameters, hospitalisation=$hospitalisation, ambulatory=$ambulatory, dental=$dental, identificationNumber=$identificationNumber, insuranceId=$insuranceId, startDate=$startDate, endDate=$endDate, titularyId=$titularyId, encryptedSelf=$encryptedSelf]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'parameters'] = parameters;
    if (hospitalisation != null) {
      json[r'hospitalisation'] = hospitalisation;
    }
    if (ambulatory != null) {
      json[r'ambulatory'] = ambulatory;
    }
    if (dental != null) {
      json[r'dental'] = dental;
    }
    if (identificationNumber != null) {
      json[r'identificationNumber'] = identificationNumber;
    }
    if (insuranceId != null) {
      json[r'insuranceId'] = insuranceId;
    }
    if (startDate != null) {
      json[r'startDate'] = startDate;
    }
    if (endDate != null) {
      json[r'endDate'] = endDate;
    }
    if (titularyId != null) {
      json[r'titularyId'] = titularyId;
    }
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [InsurabilityDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InsurabilityDto? fromJson(dynamic value) {
    if (value is InsurabilityDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InsurabilityDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InsurabilityDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InsurabilityDto(
        parameters: mapCastOfType<String, String>(json, r'parameters')!,
        hospitalisation: mapValueOfType<bool>(json, r'hospitalisation'),
        ambulatory: mapValueOfType<bool>(json, r'ambulatory'),
        dental: mapValueOfType<bool>(json, r'dental'),
        identificationNumber: mapValueOfType<String>(json, r'identificationNumber'),
        insuranceId: mapValueOfType<String>(json, r'insuranceId'),
        startDate: mapValueOfType<int>(json, r'startDate'),
        endDate: mapValueOfType<int>(json, r'endDate'),
        titularyId: mapValueOfType<String>(json, r'titularyId'),
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<InsurabilityDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <InsurabilityDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InsurabilityDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InsurabilityDto> mapFromJson(dynamic json) {
    final map = <String, InsurabilityDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InsurabilityDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InsurabilityDto-objects as value to a dart map
  static Map<String, List<InsurabilityDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<InsurabilityDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InsurabilityDto.listFromJson(
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
    'parameters',
  };
}
