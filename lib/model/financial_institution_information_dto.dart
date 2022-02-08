//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

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

  String name;

  String key;

  String bankAccount;

  String bic;

  String proxyBankAccount;

  String proxyBic;

  Set<String> preferredFiiForPartners;

  /// The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
  String encryptedSelf;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FinancialInstitutionInformationDto &&
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
    (name == null ? 0 : name.hashCode) +
    (key == null ? 0 : key.hashCode) +
    (bankAccount == null ? 0 : bankAccount.hashCode) +
    (bic == null ? 0 : bic.hashCode) +
    (proxyBankAccount == null ? 0 : proxyBankAccount.hashCode) +
    (proxyBic == null ? 0 : proxyBic.hashCode) +
    (preferredFiiForPartners == null ? 0 : preferredFiiForPartners.hashCode) +
    (encryptedSelf == null ? 0 : encryptedSelf.hashCode);

  @override
  String toString() => 'FinancialInstitutionInformationDto[name=$name, key=$key, bankAccount=$bankAccount, bic=$bic, proxyBankAccount=$proxyBankAccount, proxyBic=$proxyBic, preferredFiiForPartners=$preferredFiiForPartners, encryptedSelf=$encryptedSelf]';

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
      json[r'preferredFiiForPartners'] = preferredFiiForPartners;
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    return json;
  }

  /// Returns a new [FinancialInstitutionInformationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FinancialInstitutionInformationDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FinancialInstitutionInformationDto(
        name: mapValueOfType<String>(json, r'name'),
        key: mapValueOfType<String>(json, r'key'),
        bankAccount: mapValueOfType<String>(json, r'bankAccount'),
        bic: mapValueOfType<String>(json, r'bic'),
        proxyBankAccount: mapValueOfType<String>(json, r'proxyBankAccount'),
        proxyBic: mapValueOfType<String>(json, r'proxyBic'),
        preferredFiiForPartners: json[r'preferredFiiForPartners'] is Set
          ? (json[r'preferredFiiForPartners'] as Set).cast<String>()
          : null,
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
      );
    }
    return null;
  }

  static List<FinancialInstitutionInformationDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FinancialInstitutionInformationDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FinancialInstitutionInformationDto>[];

  static Map<String, FinancialInstitutionInformationDto> mapFromJson(dynamic json) {
    final map = <String, FinancialInstitutionInformationDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FinancialInstitutionInformationDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FinancialInstitutionInformationDto-objects as value to a dart map
  static Map<String, List<FinancialInstitutionInformationDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FinancialInstitutionInformationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FinancialInstitutionInformationDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

