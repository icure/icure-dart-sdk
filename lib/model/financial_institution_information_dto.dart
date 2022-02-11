//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class FinancialInstitutionInformationDto {
  /// Returns a new [FinancialInstitutionInformationDto] instance.
  FinancialInstitutionInformationDto({
    this.name,
    this.key,
    this.bankAccount,
    this.bic,
    this.proxyBankAccount,
    this.proxyBic,
    this.preferredFiiForPartners = const {},
    this.encryptedSelf,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bankAccount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bic;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? proxyBankAccount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? proxyBic;

  Set<String> preferredFiiForPartners;

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
      identical(this, other) || other is FinancialInstitutionInformationDto &&
          other.name == name &&
          other.key == key &&
          other.bankAccount == bankAccount &&
          other.bic == bic &&
          other.proxyBankAccount == proxyBankAccount &&
          other.proxyBic == proxyBic &&
          other.preferredFiiForPartners == preferredFiiForPartners &&
          other.encryptedSelf == encryptedSelf;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
  (name == null ? 0 : name!.hashCode) +
      (key == null ? 0 : key!.hashCode) +
      (bankAccount == null ? 0 : bankAccount!.hashCode) +
      (bic == null ? 0 : bic!.hashCode) +
      (proxyBankAccount == null ? 0 : proxyBankAccount!.hashCode) +
      (proxyBic == null ? 0 : proxyBic!.hashCode) +
      (preferredFiiForPartners.hashCode) +
      (encryptedSelf == null ? 0 : encryptedSelf!.hashCode);

  @override
  String toString() =>
      'FinancialInstitutionInformationDto[name=$name, key=$key, bankAccount=$bankAccount, bic=$bic, proxyBankAccount=$proxyBankAccount, proxyBic=$proxyBic, preferredFiiForPartners=$preferredFiiForPartners, encryptedSelf=$encryptedSelf]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (key != null) {
      json[r'key'] = key;
    }
    if (bankAccount != null) {
      json[r'bankAccount'] = bankAccount;
    }
    if (bic != null) {
      json[r'bic'] = bic;
    }
    if (proxyBankAccount != null) {
      json[r'proxyBankAccount'] = proxyBankAccount;
    }
    if (proxyBic != null) {
      json[r'proxyBic'] = proxyBic;
    }
    json[r'preferredFiiForPartners'] = preferredFiiForPartners.toList();
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [FinancialInstitutionInformationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FinancialInstitutionInformationDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FinancialInstitutionInformationDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FinancialInstitutionInformationDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FinancialInstitutionInformationDto(
        name: mapValueOfType<String>(json, r'name'),
        key: mapValueOfType<String>(json, r'key'),
        bankAccount: mapValueOfType<String>(json, r'bankAccount'),
        bic: mapValueOfType<String>(json, r'bic'),
        proxyBankAccount: mapValueOfType<String>(json, r'proxyBankAccount'),
        proxyBic: mapValueOfType<String>(json, r'proxyBic'),
        preferredFiiForPartners: json[r'preferredFiiForPartners'] is Set
            ? (json[r'preferredFiiForPartners'] as Set).cast<String>()
            : json[r'preferredFiiForPartners'] is List ? ((json[r'preferredFiiForPartners'] as List).toSet()).cast<String>() : const {},
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<FinancialInstitutionInformationDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FinancialInstitutionInformationDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FinancialInstitutionInformationDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FinancialInstitutionInformationDto> mapFromJson(dynamic json) {
    final map = <String, FinancialInstitutionInformationDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FinancialInstitutionInformationDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FinancialInstitutionInformationDto-objects as value to a dart map
  static Map<String, List<FinancialInstitutionInformationDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FinancialInstitutionInformationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FinancialInstitutionInformationDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'preferredFiiForPartners',
  };
}

