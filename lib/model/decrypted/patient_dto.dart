//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class DecryptedPatientDto {
  /// Returns a new [DecryptedPatientDto] instance.
  DecryptedPatientDto({
    required this.id,
    this.identifier = const [],
    this.rev,
    this.created,
    this.modified,
    this.author,
    this.responsible,
    this.tags = const {},
    this.codes = const {},
    this.endOfLife,
    this.deletionDate,
    this.firstName,
    this.lastName,
    this.names = const [],
    this.companyName,
    this.languages = const [],
    this.addresses = const [],
    this.civility,
    this.gender,
    this.birthSex,
    this.mergeToPatientId,
    this.mergedIds = const {},
    this.alias,
    this.active = true,
    this.deactivationReason = const PatientDtoDeactivationReasonEnum._('DeactivationReason.none'),
    this.ssin,
    this.maidenName,
    this.spouseName,
    this.partnerName,
    this.personalStatus,
    this.dateOfBirth,
    this.dateOfDeath,
    this.timestampOfLatestEidReading,
    this.placeOfBirth,
    this.placeOfDeath,
    this.deceased,
    this.education,
    this.profession,
    this.note,
    this.administrativeNote,
    this.nationality,
    this.race,
    this.ethnicity,
    this.preferredUserId,
    this.picture,
    this.externalId,
    this.insurabilities = const [],
    this.partnerships = const [],
    this.patientHealthCareParties = const [],
    this.financialInstitutionInformation = const [],
    this.medicalHouseContracts = const [],
    this.patientProfessions = const [],
    this.parameters = const {},
    this.properties = const {},
    this.hcPartyKeys = const {},
    this.aesExchangeKeys = const {},
    this.transferKeys = const {},
    this.privateKeyShamirPartitions = const {},
    this.publicKey,
    this.secretForeignKeys = const {},
    this.cryptedForeignKeys = const {},
    this.delegations = const {},
    this.encryptionKeys = const {},
    this.encryptedSelf,
    this.medicalLocationId,
    this.nonDuplicateIds = const {},
    this.encryptedAdministrativesDocuments = const {},
    this.comment,
    this.warning,
    this.fatherBirthCountry,
    this.birthCountry,
    this.nativeCountry,
    this.socialStatus,
    this.mainSourceOfIncome,
    this.schoolingInfos = const [],
    this.employementInfos = const [],
  });

  /// the Id of the patient. We encourage using either a v4 UUID or a HL7 Id.
  String id;

  List<IdentifierDto> identifier;

  /// the revision of the patient in the database, used for conflict management / optimistic locking.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rev;

  /// The timestamp (unix epoch in ms) of creation of this entity, will be filled automatically if missing. Not enforced by the application server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

  /// The date (unix epoch in ms) of the latest modification of this entity, will be filled automatically if missing. Not enforced by the application server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? modified;

  /// The id of the User that has created this entity, will be filled automatically if missing. Not enforced by the application server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? author;

  /// The id of the HealthcareParty that is responsible for this entity, will be filled automatically if missing. Not enforced by the application server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? responsible;

  /// A tag is an item from a codification system that qualifies an entity as being member of a certain class, whatever the value it might have taken. If the tag qualifies the content of a field, it means that whatever the content of the field, the tag will always apply. For example, the label of a field is qualified using a tag. LOINC is a codification system typically used for tags.
  Set<CodeStubDto> tags;

  /// A code is an item from a codification system that qualifies the content of this entity. SNOMED-CT, ICPC-2 or ICD-10 codifications systems can be used for codes
  Set<CodeStubDto> codes;

  /// Soft delete (unix epoch in ms) timestamp of the object.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endOfLife;

  /// hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deletionDate;

  /// the firstname (name) of the patient.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  /// the lastname (surname) of the patient. This is the official lastname that should be used for official administrative purposes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  /// the list of all names of the patient, also containing the official full name information. Ordered by preference of use. First element is therefore the official name used for the patient in the application
  List<PersonNameDto> names;

  /// the name of the company this patient is member of.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? companyName;

  /// the list of languages spoken by the patient ordered by fluency (alpha-2 code http://www.loc.gov/standards/iso639-2/ascii_8bits.html).
  List<String> languages;

  /// the list of addresses (with address type).
  List<AddressDto> addresses;

  /// Mr., Ms., Pr., Dr. ...
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? civility;

  /// the gender of the patient: male, female, indeterminate, changed, changedToMale, changedToFemale, unknown
  PatientDtoGenderEnum? gender;

  /// the birth sex of the patient: male, female, indeterminate, unknown
  PatientDtoBirthSexEnum? birthSex;

  /// The id of the patient this patient has been merged with.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mergeToPatientId;

  /// The ids of the patients that have been merged inside this patient.
  Set<String> mergedIds;

  /// An alias of the person, nickname, ...
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? alias;

  /// Is the patient active (boolean).
  bool active;

  /// When not active, the reason for deactivation.
  PatientDtoDeactivationReasonEnum deactivationReason;

  /// Social security inscription number.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ssin;

  /// Lastname at birth (can be different of the current name), depending on the country, must be used to design the patient .
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? maidenName;

  /// Lastname of the spouse for a married woman, depending on the country, can be used to design the patient.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? spouseName;

  /// Lastname of the partner, should not be used to design the patient.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? partnerName;

  /// any of `single`, `in_couple`, `married`, `separated`, `divorced`, `divorcing`, `widowed`, `widower`, `complicated`, `unknown`, `contract`, `other`.
  PatientDtoPersonalStatusEnum? personalStatus;

  /// The birthdate encoded as a fuzzy date on 8 positions (YYYYMMDD) MM and/or DD can be set to 00 if unknown (19740000 is a valid date).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dateOfBirth;

  /// The date of death encoded as a fuzzy date on 8 positions (YYYYMMDD) MM and/or DD can be set to 00 if unknown (19740000 is a valid date).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dateOfDeath;

  /// Timestamp of the latest validation of the eID of the person..
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timestampOfLatestEidReading;

  /// The place of birth.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? placeOfBirth;

  /// The place of death.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? placeOfDeath;

  /// Is the patient deceased.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deceased;

  /// The level of education (college degree, undergraduate, phd).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? education;

  /// The current professional activity.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? profession;

  /// A text note (can be confidential, encrypted by default).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  /// An administrative note, not confidential.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? administrativeNote;

  /// The nationality of the patient.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nationality;

  /// The race of the patient.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? race;

  /// The ethnicity of the patient.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ethnicity;

  /// The id of the user that usually handles this patient.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? preferredUserId;

  /// A picture usually saved in JPEG format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? picture;

  /// An external (from another source) id with no guarantee or requirement for unicity .
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  /// List of insurance coverages (of class Insurability, see below).
  List<InsurabilityDto> insurabilities;

  /// List of partners, or persons of contact (of class Partnership, see below).
  List<PartnershipDto> partnerships;

  /// Links (usually for therapeutic reasons) between this patient and healthcare parties (of class PatientHealthcareParty).
  List<PatientHealthCarePartyDto> patientHealthCareParties;

  /// Financial information (Bank, bank account) used to reimburse the patient.
  List<FinancialInstitutionInformationDto> financialInstitutionInformation;

  /// Contracts between the patient and the healthcare entity.
  List<MedicalHouseContractDto> medicalHouseContracts;

  /// Codified list of professions exercised by this patient.
  List<CodeStubDto> patientProfessions;

  /// Extra parameters
  Map<String, List<String>> parameters;

  /// Extra properties
  Set<PropertyStubDto> properties;

  /// For each couple of HcParties (delegator and delegate), this map contains the exchange AES key. The delegator is always this hcp, the key of the map is the id of the delegate. The AES exchange key is encrypted using RSA twice : once using this hcp public key (index 0 in the Array) and once using the other hcp public key (index 1 in the Array). For a pair of HcParties. Each HcParty always has one AES exchange key for himself.
  Map<String, List<String>> hcPartyKeys;

  /// Extra AES exchange keys, usually the ones we lost access to at some point
  /// The structure is { publicKey: { delegateId: [aesExKey_for_this, aesExKey_for_delegate] } }
  Map<String, Map<String, List<String>>> aesExchangeKeys;

  /// Data owner private keys encrypted with its other public keys.
  /// This mechanism will help the data owner to re-encrypt all information with its new key, if he found back the lost one.
  /// The structure is { publicKey1: { publicKey2: privateKey2_encrypted_with_publicKey1, publicKey3: privateKey3_encrypted_with_publicKey1 } }
  Map<String, Map<String, String>> transferKeys;

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

  /// The secretForeignKeys are filled at the to many end of a one to many relationship (for example inside Contact for the Patient -> Contacts relationship). Used when we want to find all contacts for a specific patient. These keys are in clear. You can have several to partition the medical document space.
  Set<String> secretForeignKeys;

  /// The secretForeignKeys are filled at the to many end of a one to many relationship (for example inside Contact for the Patient -> Contacts relationship). Used when we want to find the patient for a specific contact. These keys are the encrypted id (using the hcParty key for the delegate) that can be found in clear inside the patient. ids encrypted using the hcParty keys.
  Map<String, Set<DelegationDto>> cryptedForeignKeys;

  /// When a document is created, the responsible generates a cryptographically random master key (never to be used for something else than referencing from other entities). He/she encrypts it using his own AES exchange key and stores it as a delegation. The responsible is thus always in the delegations as well
  Map<String, Set<DelegationDto>> delegations;

  /// When a document needs to be encrypted, the responsible generates a cryptographically random master key (different from the delegation key, never to appear in clear anywhere in the db. He/she encrypts it using his own AES exchange key and stores it as a delegation
  Map<String, Set<DelegationDto>> encryptionKeys;

  /// The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? encryptedSelf;

  /// The id of the medical location where this entity was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? medicalLocationId;

  Set<String> nonDuplicateIds;

  Set<String> encryptedAdministrativesDocuments;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? comment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? warning;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CodeStubDto? fatherBirthCountry;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CodeStubDto? birthCountry;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CodeStubDto? nativeCountry;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CodeStubDto? socialStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CodeStubDto? mainSourceOfIncome;

  List<SchoolingInfoDto> schoolingInfos;

  List<EmploymentInfoDto> employementInfos;

  @override
  bool operator ==(Object other) {
    final Function listEquals = const ListEquality().equals;
    return identical(this, other) ||
        other is DecryptedPatientDto &&
            other.id == id &&
            listEquals(other.identifier, identifier) &&
            other.rev == rev &&
            other.created == created &&
            other.modified == modified &&
            other.author == author &&
            other.responsible == responsible &&
            other.tags == tags &&
            other.codes == codes &&
            other.endOfLife == endOfLife &&
            other.deletionDate == deletionDate &&
            other.firstName == firstName &&
            other.lastName == lastName &&
            listEquals(other.names == names) &&
            other.companyName == companyName &&
            listEquals(other.languages, languages) &&
            listEquals(other.addresses, addresses) &&
            other.civility == civility &&
            other.gender == gender &&
            other.birthSex == birthSex &&
            other.mergeToPatientId == mergeToPatientId &&
            other.mergedIds == mergedIds &&
            other.alias == alias &&
            other.active == active &&
            other.deactivationReason == deactivationReason &&
            other.ssin == ssin &&
            other.maidenName == maidenName &&
            other.spouseName == spouseName &&
            other.partnerName == partnerName &&
            other.personalStatus == personalStatus &&
            other.dateOfBirth == dateOfBirth &&
            other.dateOfDeath == dateOfDeath &&
            other.timestampOfLatestEidReading == timestampOfLatestEidReading &&
            other.placeOfBirth == placeOfBirth &&
            other.placeOfDeath == placeOfDeath &&
            other.deceased == deceased &&
            other.education == education &&
            other.profession == profession &&
            other.note == note &&
            other.administrativeNote == administrativeNote &&
            other.nationality == nationality &&
            other.race == race &&
            other.ethnicity == ethnicity &&
            other.preferredUserId == preferredUserId &&
            other.picture == picture &&
            other.externalId == externalId &&
            listEquals(other.insurabilities, insurabilities) &&
            listEquals(other.partnerships, partnerships) &&
            listEquals(other.patientHealthCareParties, patientHealthCareParties) &&
            listEquals(other.financialInstitutionInformation, financialInstitutionInformation) &&
            listEquals(other.medicalHouseContracts, medicalHouseContracts) &&
            listEquals(other.patientProfessions, patientProfessions) &&
            other.parameters == parameters &&
            other.properties == properties &&
            other.hcPartyKeys == hcPartyKeys &&
            other.aesExchangeKeys == aesExchangeKeys &&
            other.transferKeys == transferKeys &&
            other.privateKeyShamirPartitions == privateKeyShamirPartitions &&
            other.publicKey == publicKey &&
            other.secretForeignKeys == secretForeignKeys &&
            other.cryptedForeignKeys == cryptedForeignKeys &&
            other.delegations == delegations &&
            other.encryptionKeys == encryptionKeys &&
            other.encryptedSelf == encryptedSelf &&
            other.medicalLocationId == medicalLocationId &&
            other.nonDuplicateIds == nonDuplicateIds &&
            other.encryptedAdministrativesDocuments == encryptedAdministrativesDocuments &&
            other.comment == comment &&
            other.warning == warning &&
            other.fatherBirthCountry == fatherBirthCountry &&
            other.birthCountry == birthCountry &&
            other.nativeCountry == nativeCountry &&
            other.socialStatus == socialStatus &&
            other.mainSourceOfIncome == mainSourceOfIncome &&
            listEquals(other.schoolingInfos, schoolingInfos) &&
            listEquals(other.employementInfos, employementInfos);
  }

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (identifier.hashCode) +
      (rev == null ? 0 : rev!.hashCode) +
      (created == null ? 0 : created!.hashCode) +
      (modified == null ? 0 : modified!.hashCode) +
      (author == null ? 0 : author!.hashCode) +
      (responsible == null ? 0 : responsible!.hashCode) +
      (tags.hashCode) +
      (codes.hashCode) +
      (endOfLife == null ? 0 : endOfLife!.hashCode) +
      (deletionDate == null ? 0 : deletionDate!.hashCode) +
      (firstName == null ? 0 : firstName!.hashCode) +
      (lastName == null ? 0 : lastName!.hashCode) +
      (names.hashCode) +
      (companyName == null ? 0 : companyName!.hashCode) +
      (languages.hashCode) +
      (addresses.hashCode) +
      (civility == null ? 0 : civility!.hashCode) +
      (gender == null ? 0 : gender!.hashCode) +
      (birthSex == null ? 0 : birthSex!.hashCode) +
      (mergeToPatientId == null ? 0 : mergeToPatientId!.hashCode) +
      (mergedIds.hashCode) +
      (alias == null ? 0 : alias!.hashCode) +
      (active.hashCode) +
      (deactivationReason.hashCode) +
      (ssin == null ? 0 : ssin!.hashCode) +
      (maidenName == null ? 0 : maidenName!.hashCode) +
      (spouseName == null ? 0 : spouseName!.hashCode) +
      (partnerName == null ? 0 : partnerName!.hashCode) +
      (personalStatus == null ? 0 : personalStatus!.hashCode) +
      (dateOfBirth == null ? 0 : dateOfBirth!.hashCode) +
      (dateOfDeath == null ? 0 : dateOfDeath!.hashCode) +
      (timestampOfLatestEidReading == null ? 0 : timestampOfLatestEidReading!.hashCode) +
      (placeOfBirth == null ? 0 : placeOfBirth!.hashCode) +
      (placeOfDeath == null ? 0 : placeOfDeath!.hashCode) +
      (deceased == null ? 0 : deceased!.hashCode) +
      (education == null ? 0 : education!.hashCode) +
      (profession == null ? 0 : profession!.hashCode) +
      (note == null ? 0 : note!.hashCode) +
      (administrativeNote == null ? 0 : administrativeNote!.hashCode) +
      (nationality == null ? 0 : nationality!.hashCode) +
      (race == null ? 0 : race!.hashCode) +
      (ethnicity == null ? 0 : ethnicity!.hashCode) +
      (preferredUserId == null ? 0 : preferredUserId!.hashCode) +
      (picture == null ? 0 : picture!.hashCode) +
      (externalId == null ? 0 : externalId!.hashCode) +
      (insurabilities.hashCode) +
      (partnerships.hashCode) +
      (patientHealthCareParties.hashCode) +
      (financialInstitutionInformation.hashCode) +
      (medicalHouseContracts.hashCode) +
      (patientProfessions.hashCode) +
      (parameters.hashCode) +
      (properties.hashCode) +
      (hcPartyKeys.hashCode) +
      (aesExchangeKeys.hashCode) +
      (transferKeys.hashCode) +
      (privateKeyShamirPartitions.hashCode) +
      (publicKey == null ? 0 : publicKey!.hashCode) +
      (secretForeignKeys.hashCode) +
      (cryptedForeignKeys.hashCode) +
      (delegations.hashCode) +
      (encryptionKeys.hashCode) +
      (encryptedSelf == null ? 0 : encryptedSelf!.hashCode) +
      (medicalLocationId == null ? 0 : medicalLocationId!.hashCode) +
      (nonDuplicateIds.hashCode) +
      (encryptedAdministrativesDocuments.hashCode) +
      (comment == null ? 0 : comment!.hashCode) +
      (warning == null ? 0 : warning!.hashCode) +
      (fatherBirthCountry == null ? 0 : fatherBirthCountry!.hashCode) +
      (birthCountry == null ? 0 : birthCountry!.hashCode) +
      (nativeCountry == null ? 0 : nativeCountry!.hashCode) +
      (socialStatus == null ? 0 : socialStatus!.hashCode) +
      (mainSourceOfIncome == null ? 0 : mainSourceOfIncome!.hashCode) +
      (schoolingInfos.hashCode) +
      (employementInfos.hashCode);

  @override
  String toString() =>
      'DecryptedPatientDto[id=$id, identifier=$identifier, rev=$rev, created=$created, modified=$modified, author=$author, responsible=$responsible, tags=$tags, codes=$codes, endOfLife=$endOfLife, deletionDate=$deletionDate, firstName=$firstName, lastName=$lastName, names=$names, companyName=$companyName, languages=$languages, addresses=$addresses, civility=$civility, gender=$gender, birthSex=$birthSex, mergeToPatientId=$mergeToPatientId, mergedIds=$mergedIds, alias=$alias, active=$active, deactivationReason=$deactivationReason, ssin=$ssin, maidenName=$maidenName, spouseName=$spouseName, partnerName=$partnerName, personalStatus=$personalStatus, dateOfBirth=$dateOfBirth, dateOfDeath=$dateOfDeath, timestampOfLatestEidReading=$timestampOfLatestEidReading, placeOfBirth=$placeOfBirth, placeOfDeath=$placeOfDeath, deceased=$deceased, education=$education, profession=$profession, note=$note, administrativeNote=$administrativeNote, nationality=$nationality, race=$race, ethnicity=$ethnicity, preferredUserId=$preferredUserId, picture=$picture, externalId=$externalId, insurabilities=$insurabilities, partnerships=$partnerships, patientHealthCareParties=$patientHealthCareParties, financialInstitutionInformation=$financialInstitutionInformation, medicalHouseContracts=$medicalHouseContracts, patientProfessions=$patientProfessions, parameters=$parameters, properties=$properties, hcPartyKeys=$hcPartyKeys, aesExchangeKeys=$aesExchangeKeys, transferKeys=$transferKeys, privateKeyShamirPartitions=$privateKeyShamirPartitions, publicKey=$publicKey, secretForeignKeys=$secretForeignKeys, cryptedForeignKeys=$cryptedForeignKeys, delegations=$delegations, encryptionKeys=$encryptionKeys, encryptedSelf=$encryptedSelf, medicalLocationId=$medicalLocationId, nonDuplicateIds=$nonDuplicateIds, encryptedAdministrativesDocuments=$encryptedAdministrativesDocuments, comment=$comment, warning=$warning, fatherBirthCountry=$fatherBirthCountry, birthCountry=$birthCountry, nativeCountry=$nativeCountry, socialStatus=$socialStatus, mainSourceOfIncome=$mainSourceOfIncome, schoolingInfos=$schoolingInfos, employementInfos=$employementInfos]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = id;
    json[r'identifier'] = identifier;
    if (rev != null) {
      json[r'rev'] = rev;
    }
    if (created != null) {
      json[r'created'] = created;
    }
    if (modified != null) {
      json[r'modified'] = modified;
    }
    if (author != null) {
      json[r'author'] = author;
    }
    if (responsible != null) {
      json[r'responsible'] = responsible;
    }
    json[r'tags'] = tags.toList();

    json[r'codes'] = codes.toList();

    if (endOfLife != null) {
      json[r'endOfLife'] = endOfLife;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
    }
    if (firstName != null) {
      json[r'firstName'] = firstName;
    }
    if (lastName != null) {
      json[r'lastName'] = lastName;
    }
    json[r'names'] = names;
    if (companyName != null) {
      json[r'companyName'] = companyName;
    }
    json[r'languages'] = languages;
    json[r'addresses'] = addresses;
    if (civility != null) {
      json[r'civility'] = civility;
    }
    if (gender != null) {
      json[r'gender'] = gender;
    }
    if (birthSex != null) {
      json[r'birthSex'] = birthSex;
    }
    if (mergeToPatientId != null) {
      json[r'mergeToPatientId'] = mergeToPatientId;
    }
    json[r'mergedIds'] = mergedIds.toList();
    if (alias != null) {
      json[r'alias'] = alias;
    }
    json[r'active'] = active;
    json[r'deactivationReason'] = deactivationReason;
    if (ssin != null) {
      json[r'ssin'] = ssin;
    }
    if (maidenName != null) {
      json[r'maidenName'] = maidenName;
    }
    if (spouseName != null) {
      json[r'spouseName'] = spouseName;
    }
    if (partnerName != null) {
      json[r'partnerName'] = partnerName;
    }
    if (personalStatus != null) {
      json[r'personalStatus'] = personalStatus;
    }
    if (dateOfBirth != null) {
      json[r'dateOfBirth'] = dateOfBirth;
    }
    if (dateOfDeath != null) {
      json[r'dateOfDeath'] = dateOfDeath;
    }
    if (timestampOfLatestEidReading != null) {
      json[r'timestampOfLatestEidReading'] = timestampOfLatestEidReading;
    }
    if (placeOfBirth != null) {
      json[r'placeOfBirth'] = placeOfBirth;
    }
    if (placeOfDeath != null) {
      json[r'placeOfDeath'] = placeOfDeath;
    }
    if (deceased != null) {
      json[r'deceased'] = deceased;
    }
    if (education != null) {
      json[r'education'] = education;
    }
    if (profession != null) {
      json[r'profession'] = profession;
    }
    if (note != null) {
      json[r'note'] = note;
    }
    if (administrativeNote != null) {
      json[r'administrativeNote'] = administrativeNote;
    }
    if (nationality != null) {
      json[r'nationality'] = nationality;
    }
    if (race != null) {
      json[r'race'] = race;
    }
    if (ethnicity != null) {
      json[r'ethnicity'] = ethnicity;
    }
    if (preferredUserId != null) {
      json[r'preferredUserId'] = preferredUserId;
    }
    if (picture != null) {
      json[r'picture'] = picture;
    }
    if (externalId != null) {
      json[r'externalId'] = externalId;
    }
    json[r'insurabilities'] = insurabilities;
    json[r'partnerships'] = partnerships;
    json[r'patientHealthCareParties'] = patientHealthCareParties;
    json[r'financialInstitutionInformation'] = financialInstitutionInformation;
    json[r'medicalHouseContracts'] = medicalHouseContracts;
    json[r'patientProfessions'] = patientProfessions;
    json[r'parameters'] = parameters;
    json[r'properties'] = properties.toList();
    json[r'hcPartyKeys'] = hcPartyKeys;
    json[r'aesExchangeKeys'] = aesExchangeKeys;
    json[r'transferKeys'] = transferKeys;
    json[r'privateKeyShamirPartitions'] = privateKeyShamirPartitions;
    if (publicKey != null) {
      json[r'publicKey'] = publicKey;
    }
    json[r'secretForeignKeys'] = secretForeignKeys.toList();
    json[r'cryptedForeignKeys'] = cryptedForeignKeys.map((k, v) => MapEntry(k, v.toList()));
    json[r'delegations'] = delegations.map((k, v) => MapEntry(k, v.toList()));
    json[r'encryptionKeys'] = encryptionKeys.map((k, v) => MapEntry(k, v.toList()));
    if (encryptedSelf != null) {
      json[r'encryptedSelf'] = encryptedSelf;
    }
    if (medicalLocationId != null) {
      json[r'medicalLocationId'] = medicalLocationId;
    }
    json[r'nonDuplicateIds'] = nonDuplicateIds.toList();
    json[r'encryptedAdministrativesDocuments'] = encryptedAdministrativesDocuments.toList();
    if (comment != null) {
      json[r'comment'] = comment;
    }
    if (warning != null) {
      json[r'warning'] = warning;
    }
    if (fatherBirthCountry != null) {
      json[r'fatherBirthCountry'] = fatherBirthCountry;
    }
    if (birthCountry != null) {
      json[r'birthCountry'] = birthCountry;
    }
    if (nativeCountry != null) {
      json[r'nativeCountry'] = nativeCountry;
    }
    if (socialStatus != null) {
      json[r'socialStatus'] = socialStatus;
    }
    if (mainSourceOfIncome != null) {
      json[r'mainSourceOfIncome'] = mainSourceOfIncome;
    }
    json[r'schoolingInfos'] = schoolingInfos;
    json[r'employementInfos'] = employementInfos;
    return json;
  }

  /// Returns a new [DecryptedPatientDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DecryptedPatientDto? fromJson(dynamic value) {
    if (value is DecryptedPatientDto) {
      return value;
    }
    if (value is Map) {
      final json = {
        "identifier": [],
        "tags": {},
        "codes": {},
        "names": [],
        "languages": [],
        "addresses": [],
        "mergedIds": {},
        "insurabilities": [],
        "partnerships": [],
        "patientHealthCareParties": [],
        "financialInstitutionInformation": [],
        "medicalHouseContracts": [],
        "patientProfessions": [],
        "parameters": {},
        "properties": {},
        "hcPartyKeys": {},
        "aesExchangeKeys": {},
        "transferKeys": {},
        "privateKeyShamirPartitions": {},
        "secretForeignKeys": {},
        "cryptedForeignKeys": {},
        "delegations": {},
        "encryptionKeys": {},
        "nonDuplicateIds": {},
        "encryptedAdministrativesDocuments": {},
        "schoolingInfos": [],
        "employementInfos": [],
        ...value.cast<String, dynamic>()
      };

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DecryptedPatientDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DecryptedPatientDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DecryptedPatientDto(
        id: mapValueOfType<String>(json, r'id')!,
        identifier: IdentifierDto.listFromJson(json[r'identifier'])!,
        rev: mapValueOfType<String>(json, r'rev'),
        created: mapValueOfType<int>(json, r'created'),
        modified: mapValueOfType<int>(json, r'modified'),
        author: mapValueOfType<String>(json, r'author'),
        responsible: mapValueOfType<String>(json, r'responsible'),
        tags: CodeStubDto.listFromJson(json[r'tags'])!.toSet(),
        codes: CodeStubDto.listFromJson(json[r'codes'])!.toSet(),
        endOfLife: mapValueOfType<int>(json, r'endOfLife'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        firstName: mapValueOfType<String>(json, r'firstName'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        names: PersonNameDto.listFromJson(json[r'names'])!,
        companyName: mapValueOfType<String>(json, r'companyName'),
        languages: json[r'languages'] is List ? (json[r'languages'] as List).cast<String>() : const [],
        addresses: AddressDto.listFromJson(json[r'addresses'])!,
        civility: mapValueOfType<String>(json, r'civility'),
        gender: PatientDtoGenderEnum.fromJson(json[r'gender']),
        birthSex: PatientDtoBirthSexEnum.fromJson(json[r'birthSex']),
        mergeToPatientId: mapValueOfType<String>(json, r'mergeToPatientId'),
        mergedIds: json[r'mergedIds'] is Set
            ? (json[r'mergedIds'] as Set).cast<String>()
            : json[r'mergedIds'] is List
                ? ((json[r'mergedIds'] as List).toSet()).cast<String>()
                : const {},
        alias: mapValueOfType<String>(json, r'alias'),
        active: mapValueOfType<bool>(json, r'active')!,
        deactivationReason: PatientDtoDeactivationReasonEnum.fromJson(json[r'deactivationReason'])!,
        ssin: mapValueOfType<String>(json, r'ssin'),
        maidenName: mapValueOfType<String>(json, r'maidenName'),
        spouseName: mapValueOfType<String>(json, r'spouseName'),
        partnerName: mapValueOfType<String>(json, r'partnerName'),
        personalStatus: PatientDtoPersonalStatusEnum.fromJson(json[r'personalStatus']),
        dateOfBirth: mapValueOfType<int>(json, r'dateOfBirth'),
        dateOfDeath: mapValueOfType<int>(json, r'dateOfDeath'),
        timestampOfLatestEidReading: mapValueOfType<int>(json, r'timestampOfLatestEidReading'),
        placeOfBirth: mapValueOfType<String>(json, r'placeOfBirth'),
        placeOfDeath: mapValueOfType<String>(json, r'placeOfDeath'),
        deceased: mapValueOfType<bool>(json, r'deceased'),
        education: mapValueOfType<String>(json, r'education'),
        profession: mapValueOfType<String>(json, r'profession'),
        note: mapValueOfType<String>(json, r'note'),
        administrativeNote: mapValueOfType<String>(json, r'administrativeNote'),
        nationality: mapValueOfType<String>(json, r'nationality'),
        race: mapValueOfType<String>(json, r'race'),
        ethnicity: mapValueOfType<String>(json, r'ethnicity'),
        preferredUserId: mapValueOfType<String>(json, r'preferredUserId'),
        picture: mapValueOfType<String>(json, r'picture'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        insurabilities: InsurabilityDto.listFromJson(json[r'insurabilities'])!,
        partnerships: PartnershipDto.listFromJson(json[r'partnerships'])!,
        patientHealthCareParties: PatientHealthCarePartyDto.listFromJson(json[r'patientHealthCareParties'])!,
        financialInstitutionInformation: FinancialInstitutionInformationDto.listFromJson(json[r'financialInstitutionInformation'])!,
        medicalHouseContracts: MedicalHouseContractDto.listFromJson(json[r'medicalHouseContracts'])!,
        patientProfessions: CodeStubDto.listFromJson(json[r'patientProfessions'])!,
        parameters: json[r'parameters'] == null ? const {} : mapWithListOfStringsFromJson(json[r'parameters']),
        properties: PropertyStubDto.listFromJson(json[r'properties'])!.toSet(),
        hcPartyKeys: json[r'hcPartyKeys'] == null ? const {} : mapWithListOfStringsFromJson(json[r'hcPartyKeys']),
        aesExchangeKeys: json[r'aesExchangeKeys'] == null ? const {} : mapOf(json[r'aesExchangeKeys'], (el) => mapWithListOfStringsFromJson(el)),
        transferKeys: json[r'transferKeys'] == null ? const {} : mapWithMapOfStringsFromJson(json[r'transferKeys']),
        privateKeyShamirPartitions: mapCastOfType<String, String>(json, r'privateKeyShamirPartitions')!,
        publicKey: mapValueOfType<String>(json, r'publicKey'),
        secretForeignKeys: json[r'secretForeignKeys'] is Set
            ? (json[r'secretForeignKeys'] as Set).cast<String>()
            : json[r'secretForeignKeys'] is List
                ? ((json[r'secretForeignKeys'] as List).toSet()).cast<String>()
                : const {},
        cryptedForeignKeys: json[r'cryptedForeignKeys'] == null ? const {} : DelegationDto.mapListFromJson(json[r'cryptedForeignKeys']),
        delegations: json[r'delegations'] == null ? const {} : DelegationDto.mapListFromJson(json[r'delegations']),
        encryptionKeys: json[r'encryptionKeys'] == null ? const {} : DelegationDto.mapListFromJson(json[r'encryptionKeys']),
        encryptedSelf: mapValueOfType<String>(json, r'encryptedSelf'),
        medicalLocationId: mapValueOfType<String>(json, r'medicalLocationId'),
        nonDuplicateIds: json[r'nonDuplicateIds'] is Set
            ? (json[r'nonDuplicateIds'] as Set).cast<String>()
            : json[r'nonDuplicateIds'] is List
                ? ((json[r'nonDuplicateIds'] as List).toSet()).cast<String>()
                : const {},
        encryptedAdministrativesDocuments:
            json[r'encryptedAdministrativesDocuments'] is Set ? (json[r'encryptedAdministrativesDocuments'] as Set).cast<String>() : const {},
        comment: mapValueOfType<String>(json, r'comment'),
        warning: mapValueOfType<String>(json, r'warning'),
        fatherBirthCountry: CodeStubDto.fromJson(json[r'fatherBirthCountry']),
        birthCountry: CodeStubDto.fromJson(json[r'birthCountry']),
        nativeCountry: CodeStubDto.fromJson(json[r'nativeCountry']),
        socialStatus: CodeStubDto.fromJson(json[r'socialStatus']),
        mainSourceOfIncome: CodeStubDto.fromJson(json[r'mainSourceOfIncome']),
        schoolingInfos: SchoolingInfoDto.listFromJson(json[r'schoolingInfos'])!,
        employementInfos: EmploymentInfoDto.listFromJson(json[r'employementInfos'])!,
      );
    }
    return null;
  }

  static List<DecryptedPatientDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DecryptedPatientDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DecryptedPatientDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DecryptedPatientDto> mapFromJson(dynamic json) {
    final map = <String, DecryptedPatientDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DecryptedPatientDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DecryptedPatientDto-objects as value to a dart map
  static Map<String, List<DecryptedPatientDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DecryptedPatientDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DecryptedPatientDto.listFromJson(
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
    'id',
    'identifier',
    'tags',
    'codes',
    'names',
    'languages',
    'addresses',
    'mergedIds',
    'active',
    'deactivationReason',
    'insurabilities',
    'partnerships',
    'patientHealthCareParties',
    'financialInstitutionInformation',
    'medicalHouseContracts',
    'patientProfessions',
    'parameters',
    'properties',
    'hcPartyKeys',
    'aesExchangeKeys',
    'transferKeys',
    'privateKeyShamirPartitions',
    'secretForeignKeys',
    'cryptedForeignKeys',
    'delegations',
    'encryptionKeys',
    'nonDuplicateIds',
    'encryptedAdministrativesDocuments',
    'schoolingInfos',
    'employementInfos',
  };
}
