//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HealthcarePartyDto {
  /// Returns a new [HealthcarePartyDto] instance.
  HealthcarePartyDto({
    required this.id,
    this.rev,
    this.created,
    this.modified,
    this.deletionDate,
    this.name,
    this.lastName,
    this.firstName,
    this.names = const [],
    this.gender,
    this.civility,
    this.companyName,
    this.speciality,
    this.bankAccount,
    this.bic,
    this.proxyBankAccount,
    this.proxyBic,
    this.invoiceHeader,
    this.cbe,
    this.ehp,
    this.userId,
    this.parentId,
    this.convention,
    this.nihii,
    this.nihiiSpecCode,
    this.ssin,
    this.addresses = const [],
    this.languages = const [],
    this.picture,
    this.statuses = const {},
    this.statusHistory = const [],
    this.specialityCodes = const {},
    this.sendFormats = const {},
    this.notes,
    this.financialInstitutionInformation = const [],
    this.billingType,
    this.type,
    this.contactPerson,
    this.contactPersonHcpId,
    this.supervisorId,
    this.flatRateTarifications = const [],
    this.importedData = const {},
    this.options = const {},
    this.properties = const {},
    this.hcPartyKeys = const {},
    this.privateKeyShamirPartitions = const {},
    this.publicKey,
  });

  /// the Id of the healthcare party. We encourage using either a v4 UUID or a HL7 Id.
  String id;

  /// the revision of the healthcare party in the database, used for conflict management / optimistic locking.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rev;

  /// creation timestamp of the object.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

  /// last modification timestamp of the object.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? modified;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deletionDate;

  /// The full name of the healthcare party, used mainly when the healthcare party is an organization
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// the lastname (surname) of the healthcare party. This is the official lastname that should be used for official administrative purposes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  /// the firstname (name) of the healthcare party.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  /// the list of all names of the healthcare party, also containing the official full name information. Ordered by preference of use. First element is therefore the official name used for the healthcare party in the application
  List<PersonNameDto> names;

  /// the gender of the healthcare party: male, female, indeterminate, changed, changedToMale, changedToFemale, unknown
  HealthcarePartyDtoGenderEnum? gender;

  /// Mr., Ms., Pr., Dr. ...
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? civility;

  /// The name of the company this healthcare party is member of
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? companyName;

  /// Medical specialty of the healthcare party
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? speciality;

  /// Bank Account identifier of the healhtcare party, IBAN, deprecated, use financial institutions instead
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bankAccount;

  /// Bank Identifier Code, the SWIFT Address assigned to the bank, use financial institutions instead
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

  /// All details included in the invoice header
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? invoiceHeader;

  /// Identifier number for institution type if the healthcare party is an enterprise
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cbe;

  /// Identifier number for the institution if the healthcare party is an organization
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ehp;

  /// The id of the user that usually handles this healthcare party.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  /// Id of parent of the user representing the healthcare party.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? convention;

  /// National Institute for Health and Invalidity Insurance number assigned to healthcare parties (institution or person).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nihii;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nihiiSpecCode;

  /// Social security inscription number.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ssin;

  /// The list of addresses (with address type).
  List<AddressDto> addresses;

  /// The list of languages spoken by the patient ordered by fluency (alpha-2 code http://www.loc.gov/standards/iso639-2/ascii_8bits.html).
  List<String> languages;

  /// A picture usually saved in JPEG format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? picture;

  /// The healthcare party's status: 'trainee' or 'withconvention' or 'accredited'
  Set<HealthcarePartyDtoStatusesEnum> statuses;

  /// The healthcare party's status history
  List<HealthcarePartyHistoryStatusDto> statusHistory;

  /// Medical specialty of the healthcare party codified using FHIR or Kmehr codificaiton scheme
  Set<CodeStubDto> specialityCodes;

  /// The type of format for contacting the healthcare party, ex: mobile, phone, email, etc.
  Map<String, String> sendFormats;

  /// Text notes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? notes;

  /// List of financial information (Bank, bank account).
  List<FinancialInstitutionInformationDto> financialInstitutionInformation;

  /// The invoicing scheme this healthcare party adheres to : 'service fee' or 'flat rate'
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? billingType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contactPerson;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contactPersonHcpId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? supervisorId;

  List<FlatRateTarificationDto> flatRateTarifications;

  Map<String, String> importedData;

  Map<String, String> options;

  Set<PropertyStubDto> properties;

  /// For each couple of HcParties (delegator and delegate), this map contains the exchange AES key. The delegator is always this hcp, the key of the map is the id of the delegate. The AES exchange key is encrypted using RSA twice : once using this hcp public key (index 0 in the Array) and once using the other hcp public key (index 1 in the Array). For a pair of HcParties. Each HcParty always has one AES exchange key for himself.
  Map<String, List<String>> hcPartyKeys;

  /// The privateKeyShamirPartitions are used to share this hcp's private RSA key with a series of other hcParties using Shamir's algorithm. The key of the map is the hcp Id with whom this partition has been shared. The value is \"threshold⎮partition in hex\" encrypted using the the partition's holder's public RSA key
  Map<String, String> privateKeyShamirPartitions;

  /// The public key of this hcp
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publicKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HealthcarePartyDto &&
     other.id == id &&
     other.rev == rev &&
     other.created == created &&
     other.modified == modified &&
     other.deletionDate == deletionDate &&
     other.name == name &&
     other.lastName == lastName &&
     other.firstName == firstName &&
     other.names == names &&
     other.gender == gender &&
     other.civility == civility &&
     other.companyName == companyName &&
     other.speciality == speciality &&
     other.bankAccount == bankAccount &&
     other.bic == bic &&
     other.proxyBankAccount == proxyBankAccount &&
     other.proxyBic == proxyBic &&
     other.invoiceHeader == invoiceHeader &&
     other.cbe == cbe &&
     other.ehp == ehp &&
     other.userId == userId &&
     other.parentId == parentId &&
     other.convention == convention &&
     other.nihii == nihii &&
     other.nihiiSpecCode == nihiiSpecCode &&
     other.ssin == ssin &&
     other.addresses == addresses &&
     other.languages == languages &&
     other.picture == picture &&
     other.statuses == statuses &&
     other.statusHistory == statusHistory &&
     other.specialityCodes == specialityCodes &&
     other.sendFormats == sendFormats &&
     other.notes == notes &&
     other.financialInstitutionInformation == financialInstitutionInformation &&
     other.billingType == billingType &&
     other.type == type &&
     other.contactPerson == contactPerson &&
     other.contactPersonHcpId == contactPersonHcpId &&
     other.supervisorId == supervisorId &&
     other.flatRateTarifications == flatRateTarifications &&
     other.importedData == importedData &&
     other.options == options &&
     other.properties == properties &&
     other.hcPartyKeys == hcPartyKeys &&
     other.privateKeyShamirPartitions == privateKeyShamirPartitions &&
     other.publicKey == publicKey;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (rev == null ? 0 : rev!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (modified == null ? 0 : modified!.hashCode) +
    (deletionDate == null ? 0 : deletionDate!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (names.hashCode) +
    (gender == null ? 0 : gender!.hashCode) +
    (civility == null ? 0 : civility!.hashCode) +
    (companyName == null ? 0 : companyName!.hashCode) +
    (speciality == null ? 0 : speciality!.hashCode) +
    (bankAccount == null ? 0 : bankAccount!.hashCode) +
    (bic == null ? 0 : bic!.hashCode) +
    (proxyBankAccount == null ? 0 : proxyBankAccount!.hashCode) +
    (proxyBic == null ? 0 : proxyBic!.hashCode) +
    (invoiceHeader == null ? 0 : invoiceHeader!.hashCode) +
    (cbe == null ? 0 : cbe!.hashCode) +
    (ehp == null ? 0 : ehp!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (parentId == null ? 0 : parentId!.hashCode) +
    (convention == null ? 0 : convention!.hashCode) +
    (nihii == null ? 0 : nihii!.hashCode) +
    (nihiiSpecCode == null ? 0 : nihiiSpecCode!.hashCode) +
    (ssin == null ? 0 : ssin!.hashCode) +
    (addresses.hashCode) +
    (languages.hashCode) +
    (picture == null ? 0 : picture!.hashCode) +
    (statuses.hashCode) +
    (statusHistory.hashCode) +
    (specialityCodes.hashCode) +
    (sendFormats.hashCode) +
    (notes == null ? 0 : notes!.hashCode) +
    (financialInstitutionInformation.hashCode) +
    (billingType == null ? 0 : billingType!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (contactPerson == null ? 0 : contactPerson!.hashCode) +
    (contactPersonHcpId == null ? 0 : contactPersonHcpId!.hashCode) +
    (supervisorId == null ? 0 : supervisorId!.hashCode) +
    (flatRateTarifications.hashCode) +
    (importedData.hashCode) +
    (options.hashCode) +
    (properties.hashCode) +
    (hcPartyKeys.hashCode) +
    (privateKeyShamirPartitions.hashCode) +
    (publicKey == null ? 0 : publicKey!.hashCode);

  @override
  String toString() => 'HealthcarePartyDto[id=$id, rev=$rev, created=$created, modified=$modified, deletionDate=$deletionDate, name=$name, lastName=$lastName, firstName=$firstName, names=$names, gender=$gender, civility=$civility, companyName=$companyName, speciality=$speciality, bankAccount=$bankAccount, bic=$bic, proxyBankAccount=$proxyBankAccount, proxyBic=$proxyBic, invoiceHeader=$invoiceHeader, cbe=$cbe, ehp=$ehp, userId=$userId, parentId=$parentId, convention=$convention, nihii=$nihii, nihiiSpecCode=$nihiiSpecCode, ssin=$ssin, addresses=$addresses, languages=$languages, picture=$picture, statuses=$statuses, statusHistory=$statusHistory, specialityCodes=$specialityCodes, sendFormats=$sendFormats, notes=$notes, financialInstitutionInformation=$financialInstitutionInformation, billingType=$billingType, type=$type, contactPerson=$contactPerson, contactPersonHcpId=$contactPersonHcpId, supervisorId=$supervisorId, flatRateTarifications=$flatRateTarifications, importedData=$importedData, options=$options, properties=$properties, hcPartyKeys=$hcPartyKeys, privateKeyShamirPartitions=$privateKeyShamirPartitions, publicKey=$publicKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (rev != null) {
      json[r'rev'] = rev;
    }
    if (created != null) {
      json[r'created'] = created;
    }
    if (modified != null) {
      json[r'modified'] = modified;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (lastName != null) {
      json[r'lastName'] = lastName;
    }
    if (firstName != null) {
      json[r'firstName'] = firstName;
    }
      json[r'names'] = names;
    if (gender != null) {
      json[r'gender'] = gender;
    }
    if (civility != null) {
      json[r'civility'] = civility;
    }
    if (companyName != null) {
      json[r'companyName'] = companyName;
    }
    if (speciality != null) {
      json[r'speciality'] = speciality;
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
    if (invoiceHeader != null) {
      json[r'invoiceHeader'] = invoiceHeader;
    }
    if (cbe != null) {
      json[r'cbe'] = cbe;
    }
    if (ehp != null) {
      json[r'ehp'] = ehp;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    if (parentId != null) {
      json[r'parentId'] = parentId;
    }
    if (convention != null) {
      json[r'convention'] = convention;
    }
    if (nihii != null) {
      json[r'nihii'] = nihii;
    }
    if (nihiiSpecCode != null) {
      json[r'nihiiSpecCode'] = nihiiSpecCode;
    }
    if (ssin != null) {
      json[r'ssin'] = ssin;
    }
      json[r'addresses'] = addresses;
      json[r'languages'] = languages;
    if (picture != null) {
      json[r'picture'] = picture;
    }
      json[r'statuses'] = statuses;
      json[r'statusHistory'] = statusHistory;
      json[r'specialityCodes'] = specialityCodes;
      json[r'sendFormats'] = sendFormats;
    if (notes != null) {
      json[r'notes'] = notes;
    }
      json[r'financialInstitutionInformation'] = financialInstitutionInformation;
    if (billingType != null) {
      json[r'billingType'] = billingType;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (contactPerson != null) {
      json[r'contactPerson'] = contactPerson;
    }
    if (contactPersonHcpId != null) {
      json[r'contactPersonHcpId'] = contactPersonHcpId;
    }
    if (supervisorId != null) {
      json[r'supervisorId'] = supervisorId;
    }
      json[r'flatRateTarifications'] = flatRateTarifications;
      json[r'importedData'] = importedData;
      json[r'options'] = options;
      json[r'properties'] = properties;
      json[r'hcPartyKeys'] = hcPartyKeys;
      json[r'privateKeyShamirPartitions'] = privateKeyShamirPartitions;
    if (publicKey != null) {
      json[r'publicKey'] = publicKey;
    }
    return json;
  }

  /// Returns a new [HealthcarePartyDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HealthcarePartyDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HealthcarePartyDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HealthcarePartyDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HealthcarePartyDto(
        id: mapValueOfType<String>(json, r'id')!,
        rev: mapValueOfType<String>(json, r'rev'),
        created: mapValueOfType<int>(json, r'created'),
        modified: mapValueOfType<int>(json, r'modified'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        name: mapValueOfType<String>(json, r'name'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        firstName: mapValueOfType<String>(json, r'firstName'),
        names: PersonNameDto.listFromJson(json[r'names'])!,
        gender: HealthcarePartyDtoGenderEnum.fromJson(json[r'gender']),
        civility: mapValueOfType<String>(json, r'civility'),
        companyName: mapValueOfType<String>(json, r'companyName'),
        speciality: mapValueOfType<String>(json, r'speciality'),
        bankAccount: mapValueOfType<String>(json, r'bankAccount'),
        bic: mapValueOfType<String>(json, r'bic'),
        proxyBankAccount: mapValueOfType<String>(json, r'proxyBankAccount'),
        proxyBic: mapValueOfType<String>(json, r'proxyBic'),
        invoiceHeader: mapValueOfType<String>(json, r'invoiceHeader'),
        cbe: mapValueOfType<String>(json, r'cbe'),
        ehp: mapValueOfType<String>(json, r'ehp'),
        userId: mapValueOfType<String>(json, r'userId'),
        parentId: mapValueOfType<String>(json, r'parentId'),
        convention: mapValueOfType<int>(json, r'convention'),
        nihii: mapValueOfType<String>(json, r'nihii'),
        nihiiSpecCode: mapValueOfType<String>(json, r'nihiiSpecCode'),
        ssin: mapValueOfType<String>(json, r'ssin'),
        addresses: AddressDto.listFromJson(json[r'addresses'])!,
        languages: json[r'languages'] is List
            ? (json[r'languages'] as List).cast<String>()
            : const [],
        picture: mapValueOfType<String>(json, r'picture'),
        statuses: HealthcarePartyDtoStatusesEnum.listFromJson(json[r'statuses'])!.toSet(),
        statusHistory: HealthcarePartyHistoryStatusDto.listFromJson(json[r'statusHistory'])!,
        specialityCodes: CodeStubDto.listFromJson(json[r'specialityCodes'])!.toSet(),
        sendFormats: mapCastOfType<String, String>(json, r'sendFormats')!,
        notes: mapValueOfType<String>(json, r'notes'),
        financialInstitutionInformation: FinancialInstitutionInformationDto.listFromJson(json[r'financialInstitutionInformation'])!,
        billingType: mapValueOfType<String>(json, r'billingType'),
        type: mapValueOfType<String>(json, r'type'),
        contactPerson: mapValueOfType<String>(json, r'contactPerson'),
        contactPersonHcpId: mapValueOfType<String>(json, r'contactPersonHcpId'),
        supervisorId: mapValueOfType<String>(json, r'supervisorId'),
        flatRateTarifications: FlatRateTarificationDto.listFromJson(json[r'flatRateTarifications'])!,
        importedData: mapCastOfType<String, String>(json, r'importedData')!,
        options: mapCastOfType<String, String>(json, r'options')!,
        properties: PropertyStubDto.listFromJson(json[r'properties'])!.toSet(),
        hcPartyKeys: json[r'hcPartyKeys'] == null ? const {} : mapWithListOfStringsFromJson(json[r'hcPartyKeys']),
        privateKeyShamirPartitions: mapCastOfType<String, String>(json, r'privateKeyShamirPartitions')!,
        publicKey: mapValueOfType<String>(json, r'publicKey'),
      );
    }
    return null;
  }

  static List<HealthcarePartyDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HealthcarePartyDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HealthcarePartyDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HealthcarePartyDto> mapFromJson(dynamic json) {
    final map = <String, HealthcarePartyDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HealthcarePartyDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HealthcarePartyDto-objects as value to a dart map
  static Map<String, List<HealthcarePartyDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HealthcarePartyDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HealthcarePartyDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'names',
    'addresses',
    'languages',
    'statuses',
    'statusHistory',
    'specialityCodes',
    'sendFormats',
    'financialInstitutionInformation',
    'flatRateTarifications',
    'importedData',
    'options',
    'properties',
    'hcPartyKeys',
    'privateKeyShamirPartitions',
  };
}

/// the gender of the healthcare party: male, female, indeterminate, changed, changedToMale, changedToFemale, unknown
class HealthcarePartyDtoGenderEnum {
  /// Instantiate a new enum with the provided [value].
  const HealthcarePartyDtoGenderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const male = HealthcarePartyDtoGenderEnum._(r'male');
  static const female = HealthcarePartyDtoGenderEnum._(r'female');
  static const indeterminate = HealthcarePartyDtoGenderEnum._(r'indeterminate');
  static const changed = HealthcarePartyDtoGenderEnum._(r'changed');
  static const changedToMale = HealthcarePartyDtoGenderEnum._(r'changedToMale');
  static const changedToFemale = HealthcarePartyDtoGenderEnum._(r'changedToFemale');
  static const unknown = HealthcarePartyDtoGenderEnum._(r'unknown');

  /// List of all possible values in this [enum][HealthcarePartyDtoGenderEnum].
  static const values = <HealthcarePartyDtoGenderEnum>[
    male,
    female,
    indeterminate,
    changed,
    changedToMale,
    changedToFemale,
    unknown,
  ];

  static HealthcarePartyDtoGenderEnum? fromJson(dynamic value) => HealthcarePartyDtoGenderEnumTypeTransformer().decode(value);

  static List<HealthcarePartyDtoGenderEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HealthcarePartyDtoGenderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HealthcarePartyDtoGenderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HealthcarePartyDtoGenderEnum] to String,
/// and [decode] dynamic data back to [HealthcarePartyDtoGenderEnum].
class HealthcarePartyDtoGenderEnumTypeTransformer {
  factory HealthcarePartyDtoGenderEnumTypeTransformer() => _instance ??= const HealthcarePartyDtoGenderEnumTypeTransformer._();

  const HealthcarePartyDtoGenderEnumTypeTransformer._();

  String encode(HealthcarePartyDtoGenderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HealthcarePartyDtoGenderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HealthcarePartyDtoGenderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'male': return HealthcarePartyDtoGenderEnum.male;
        case r'female': return HealthcarePartyDtoGenderEnum.female;
        case r'indeterminate': return HealthcarePartyDtoGenderEnum.indeterminate;
        case r'changed': return HealthcarePartyDtoGenderEnum.changed;
        case r'changedToMale': return HealthcarePartyDtoGenderEnum.changedToMale;
        case r'changedToFemale': return HealthcarePartyDtoGenderEnum.changedToFemale;
        case r'unknown': return HealthcarePartyDtoGenderEnum.unknown;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HealthcarePartyDtoGenderEnumTypeTransformer] instance.
  static HealthcarePartyDtoGenderEnumTypeTransformer? _instance;
}


/// The healthcare party's status: 'trainee' or 'withconvention' or 'accredited'
class HealthcarePartyDtoStatusesEnum {
  /// Instantiate a new enum with the provided [value].
  const HealthcarePartyDtoStatusesEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const trainee = HealthcarePartyDtoStatusesEnum._(r'trainee');
  static const withconvention = HealthcarePartyDtoStatusesEnum._(r'withconvention');
  static const accreditated = HealthcarePartyDtoStatusesEnum._(r'accreditated');

  /// List of all possible values in this [enum][HealthcarePartyDtoStatusesEnum].
  static const values = <HealthcarePartyDtoStatusesEnum>[
    trainee,
    withconvention,
    accreditated,
  ];

  static HealthcarePartyDtoStatusesEnum? fromJson(dynamic value) => HealthcarePartyDtoStatusesEnumTypeTransformer().decode(value);

  static List<HealthcarePartyDtoStatusesEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HealthcarePartyDtoStatusesEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HealthcarePartyDtoStatusesEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HealthcarePartyDtoStatusesEnum] to String,
/// and [decode] dynamic data back to [HealthcarePartyDtoStatusesEnum].
class HealthcarePartyDtoStatusesEnumTypeTransformer {
  factory HealthcarePartyDtoStatusesEnumTypeTransformer() => _instance ??= const HealthcarePartyDtoStatusesEnumTypeTransformer._();

  const HealthcarePartyDtoStatusesEnumTypeTransformer._();

  String encode(HealthcarePartyDtoStatusesEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HealthcarePartyDtoStatusesEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HealthcarePartyDtoStatusesEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'trainee': return HealthcarePartyDtoStatusesEnum.trainee;
        case r'withconvention': return HealthcarePartyDtoStatusesEnum.withconvention;
        case r'accreditated': return HealthcarePartyDtoStatusesEnum.accreditated;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HealthcarePartyDtoStatusesEnumTypeTransformer] instance.
  static HealthcarePartyDtoStatusesEnumTypeTransformer? _instance;
}


