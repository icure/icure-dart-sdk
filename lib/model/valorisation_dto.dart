//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class ValorisationDto {
  /// Returns a new [ValorisationDto] instance.
  ValorisationDto({
    this.startOfValidity,
    this.endOfValidity,
    this.predicate,
    this.totalAmount,
    this.reimbursement,
    this.patientIntervention,
    this.doctorSupplement,
    this.vat,
    this.label = const {},
    this.encryptedSelf,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startOfValidity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endOfValidity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? predicate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? totalAmount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? reimbursement;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? patientIntervention;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? doctorSupplement;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? vat;

  Map<String, String> label;

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
      other is ValorisationDto &&
          other.startOfValidity == startOfValidity &&
          other.endOfValidity == endOfValidity &&
          other.predicate == predicate &&
          other.totalAmount == totalAmount &&
          other.reimbursement == reimbursement &&
          other.patientIntervention == patientIntervention &&
          other.doctorSupplement == doctorSupplement &&
          other.vat == vat &&
          other.label == label &&
          other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (startOfValidity == null ? 0 : startOfValidity!.hashCode) +
      (endOfValidity == null ? 0 : endOfValidity!.hashCode) +
      (predicate == null ? 0 : predicate!.hashCode) +
      (totalAmount == null ? 0 : totalAmount!.hashCode) +
      (reimbursement == null ? 0 : reimbursement!.hashCode) +
      (patientIntervention == null ? 0 : patientIntervention!.hashCode) +
      (doctorSupplement == null ? 0 : doctorSupplement!.hashCode) +
      (vat == null ? 0 : vat!.hashCode) +
      (label.hashCode) +
      (encryptedSelf == null ? 0 : encryptedSelf!.hashCode);

  @override
  String toString() =>
      'ValorisationDto[startOfValidity=$startOfValidity, endOfValidity=$endOfValidity, predicate=$predicate, totalAmount=$totalAmount, reimbursement=$reimbursement, patientIntervention=$patientIntervention, doctorSupplement=$doctorSupplement, vat=$vat, label=$label, encryptedSelf=$encryptedSelf]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (startOfValidity != null) {
      json[r'startOfValidity'] = startOfValidity;
    }
    if (endOfValidity != null) {
      json[r'endOfValidity'] = endOfValidity;
    }
    if (predicate != null) {
      json[r'predicate'] = predicate;
    }
    if (totalAmount != null) {
      json[r'totalAmount'] = totalAmount;
    }
    if (reimbursement != null) {
      json[r'reimbursement'] = reimbursement;
    }
    if (patientIntervention != null) {
      json[r'patientIntervention'] = patientIntervention;
    }
    if (doctorSupplement != null) {
      json[r'doctorSupplement'] = doctorSupplement;
    }
    if (vat != null) {
      json[r'vat'] = vat;
    }
    json[r'label'] = label;
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [ValorisationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValorisationDto? fromJson(dynamic value) {
    if (value is ValorisationDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ValorisationDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ValorisationDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValorisationDto(
        startOfValidity: mapValueOfType<int>(json, r'startOfValidity'),
        endOfValidity: mapValueOfType<int>(json, r'endOfValidity'),
        predicate: mapValueOfType<String>(json, r'predicate'),
        totalAmount: mapValueOfType<double>(json, r'totalAmount'),
        reimbursement: mapValueOfType<double>(json, r'reimbursement'),
        patientIntervention: mapValueOfType<double>(json, r'patientIntervention'),
        doctorSupplement: mapValueOfType<double>(json, r'doctorSupplement'),
        vat: mapValueOfType<double>(json, r'vat'),
        label: mapCastOfType<String, String>(json, r'label') ?? const {},
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<ValorisationDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ValorisationDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValorisationDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValorisationDto> mapFromJson(dynamic json) {
    final map = <String, ValorisationDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValorisationDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValorisationDto-objects as value to a dart map
  static Map<String, List<ValorisationDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ValorisationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValorisationDto.listFromJson(
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
  static const requiredKeys = <String>{};
}
