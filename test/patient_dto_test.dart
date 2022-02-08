//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for PatientDto
void main() {
  final instance = PatientDto();

  group('test PatientDto', () {
    // the Id of the patient. We encourage using either a v4 UUID or a HL7 Id.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // List<IdentifierDto> identifier (default value: const [])
    test('to test the property `identifier`', () async {
      // TODO
    });

    // the revision of the patient in the database, used for conflict management / optimistic locking.
    // String rev
    test('to test the property `rev`', () async {
      // TODO
    });

    // The timestamp (unix epoch in ms) of creation of this entity, will be filled automatically if missing. Not enforced by the application server.
    // int created
    test('to test the property `created`', () async {
      // TODO
    });

    // The date (unix epoch in ms) of the latest modification of this entity, will be filled automatically if missing. Not enforced by the application server.
    // int modified
    test('to test the property `modified`', () async {
      // TODO
    });

    // The id of the User that has created this entity, will be filled automatically if missing. Not enforced by the application server.
    // String author
    test('to test the property `author`', () async {
      // TODO
    });

    // The id of the HealthcareParty that is responsible for this entity, will be filled automatically if missing. Not enforced by the application server.
    // String responsible
    test('to test the property `responsible`', () async {
      // TODO
    });

    // A tag is an item from a codification system that qualifies an entity as being member of a certain class, whatever the value it might have taken. If the tag qualifies the content of a field, it means that whatever the content of the field, the tag will always apply. For example, the label of a field is qualified using a tag. LOINC is a codification system typically used for tags.
    // Set<CodeStubDto> tags (default value: const {})
    test('to test the property `tags`', () async {
      // TODO
    });

    // A code is an item from a codification system that qualifies the content of this entity. SNOMED-CT, ICPC-2 or ICD-10 codifications systems can be used for codes
    // Set<CodeStubDto> codes (default value: const {})
    test('to test the property `codes`', () async {
      // TODO
    });

    // Soft delete (unix epoch in ms) timestamp of the object.
    // int endOfLife
    test('to test the property `endOfLife`', () async {
      // TODO
    });

    // hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
    // int deletionDate
    test('to test the property `deletionDate`', () async {
      // TODO
    });

    // the firstname (name) of the patient.
    // String firstName
    test('to test the property `firstName`', () async {
      // TODO
    });

    // the lastname (surname) of the patient. This is the official lastname that should be used for official administrative purposes.
    // String lastName
    test('to test the property `lastName`', () async {
      // TODO
    });

    // the list of all names of the patient, also containing the official full name information. Ordered by preference of use. First element is therefore the official name used for the patient in the application
    // List<PersonNameDto> names (default value: const [])
    test('to test the property `names`', () async {
      // TODO
    });

    // the name of the company this patient is member of.
    // String companyName
    test('to test the property `companyName`', () async {
      // TODO
    });

    // the list of languages spoken by the patient ordered by fluency (alpha-2 code http://www.loc.gov/standards/iso639-2/ascii_8bits.html).
    // List<String> languages (default value: const [])
    test('to test the property `languages`', () async {
      // TODO
    });

    // the list of addresses (with address type).
    // List<AddressDto> addresses (default value: const [])
    test('to test the property `addresses`', () async {
      // TODO
    });

    // Mr., Ms., Pr., Dr. ...
    // String civility
    test('to test the property `civility`', () async {
      // TODO
    });

    // the gender of the patient: male, female, indeterminate, changed, changedToMale, changedToFemale, unknown
    // String gender
    test('to test the property `gender`', () async {
      // TODO
    });

    // the birth sex of the patient: male, female, indeterminate, unknown
    // String birthSex
    test('to test the property `birthSex`', () async {
      // TODO
    });

    // The id of the patient this patient has been merged with.
    // String mergeToPatientId
    test('to test the property `mergeToPatientId`', () async {
      // TODO
    });

    // The ids of the patients that have been merged inside this patient.
    // Set<String> mergedIds (default value: const {})
    test('to test the property `mergedIds`', () async {
      // TODO
    });

    // An alias of the person, nickname, ...
    // String alias
    test('to test the property `alias`', () async {
      // TODO
    });

    // Is the patient active (boolean).
    // bool active (default value: true)
    test('to test the property `active`', () async {
      // TODO
    });

    // When not active, the reason for deactivation.
    // String deactivationReason (default value: 'DeactivationReason.none')
    test('to test the property `deactivationReason`', () async {
      // TODO
    });

    // Social security inscription number.
    // String ssin
    test('to test the property `ssin`', () async {
      // TODO
    });

    // Lastname at birth (can be different of the current name), depending on the country, must be used to design the patient .
    // String maidenName
    test('to test the property `maidenName`', () async {
      // TODO
    });

    // Lastname of the spouse for a married woman, depending on the country, can be used to design the patient.
    // String spouseName
    test('to test the property `spouseName`', () async {
      // TODO
    });

    // Lastname of the partner, should not be used to design the patient.
    // String partnerName
    test('to test the property `partnerName`', () async {
      // TODO
    });

    // any of `single`, `in_couple`, `married`, `separated`, `divorced`, `divorcing`, `widowed`, `widower`, `complicated`, `unknown`, `contract`, `other`.
    // String personalStatus
    test('to test the property `personalStatus`', () async {
      // TODO
    });

    // The birthdate encoded as a fuzzy date on 8 positions (YYYYMMDD) MM and/or DD can be set to 00 if unknown (19740000 is a valid date).
    // int dateOfBirth
    test('to test the property `dateOfBirth`', () async {
      // TODO
    });

    // The date of death encoded as a fuzzy date on 8 positions (YYYYMMDD) MM and/or DD can be set to 00 if unknown (19740000 is a valid date).
    // int dateOfDeath
    test('to test the property `dateOfDeath`', () async {
      // TODO
    });

    // Timestamp of the latest validation of the eID of the person..
    // int timestampOfLatestEidReading
    test('to test the property `timestampOfLatestEidReading`', () async {
      // TODO
    });

    // The place of birth.
    // String placeOfBirth
    test('to test the property `placeOfBirth`', () async {
      // TODO
    });

    // The place of death.
    // String placeOfDeath
    test('to test the property `placeOfDeath`', () async {
      // TODO
    });

    // Is the patient deceased.
    // bool deceased
    test('to test the property `deceased`', () async {
      // TODO
    });

    // The level of education (college degree, undergraduate, phd).
    // String education
    test('to test the property `education`', () async {
      // TODO
    });

    // The current professional activity.
    // String profession
    test('to test the property `profession`', () async {
      // TODO
    });

    // A text note (can be confidential, encrypted by default).
    // String note
    test('to test the property `note`', () async {
      // TODO
    });

    // An administrative note, not confidential.
    // String administrativeNote
    test('to test the property `administrativeNote`', () async {
      // TODO
    });

    // The nationality of the patient.
    // String nationality
    test('to test the property `nationality`', () async {
      // TODO
    });

    // The race of the patient.
    // String race
    test('to test the property `race`', () async {
      // TODO
    });

    // The ethnicity of the patient.
    // String ethnicity
    test('to test the property `ethnicity`', () async {
      // TODO
    });

    // The id of the user that usually handles this patient.
    // String preferredUserId
    test('to test the property `preferredUserId`', () async {
      // TODO
    });

    // A picture usually saved in JPEG format.
    // String picture
    test('to test the property `picture`', () async {
      // TODO
    });

    // An external (from another source) id with no guarantee or requirement for unicity .
    // String externalId
    test('to test the property `externalId`', () async {
      // TODO
    });

    // List of insurance coverages (of class Insurability, see below).
    // List<InsurabilityDto> insurabilities (default value: const [])
    test('to test the property `insurabilities`', () async {
      // TODO
    });

    // List of partners, or persons of contact (of class Partnership, see below).
    // List<PartnershipDto> partnerships (default value: const [])
    test('to test the property `partnerships`', () async {
      // TODO
    });

    // Links (usually for therapeutic reasons) between this patient and healthcare parties (of class PatientHealthcareParty).
    // List<PatientHealthCarePartyDto> patientHealthCareParties (default value: const [])
    test('to test the property `patientHealthCareParties`', () async {
      // TODO
    });

    // Financial information (Bank, bank account) used to reimburse the patient.
    // List<FinancialInstitutionInformationDto> financialInstitutionInformation (default value: const [])
    test('to test the property `financialInstitutionInformation`', () async {
      // TODO
    });

    // Contracts between the patient and the healthcare entity.
    // List<MedicalHouseContractDto> medicalHouseContracts (default value: const [])
    test('to test the property `medicalHouseContracts`', () async {
      // TODO
    });

    // Codified list of professions exercised by this patient.
    // List<CodeStubDto> patientProfessions (default value: const [])
    test('to test the property `patientProfessions`', () async {
      // TODO
    });

    // Extra parameters
    // Map<String, List<String>> parameters (default value: const {})
    test('to test the property `parameters`', () async {
      // TODO
    });

    // Extra properties
    // Set<PropertyStubDto> properties (default value: const {})
    test('to test the property `properties`', () async {
      // TODO
    });

    // For each couple of HcParties (delegator and delegate), this map contains the exchange AES key. The delegator is always this hcp, the key of the map is the id of the delegate. The AES exchange key is encrypted using RSA twice : once using this hcp public key (index 0 in the Array) and once using the other hcp public key (index 1 in the Array). For a pair of HcParties. Each HcParty always has one AES exchange key for himself.
    // Map<String, List<String>> hcPartyKeys (default value: const {})
    test('to test the property `hcPartyKeys`', () async {
      // TODO
    });

    // The privateKeyShamirPartitions are used to share this hcp's private RSA key with a series of other hcParties using Shamir's algorithm. The key of the map is the hcp Id with whom this partition has been shared. The value is \"threshold⎮partition in hex\" encrypted using the the partition's holder's public RSA key
    // Map<String, String> privateKeyShamirPartitions (default value: const {})
    test('to test the property `privateKeyShamirPartitions`', () async {
      // TODO
    });

    // The public key of this hcp
    // String publicKey
    test('to test the property `publicKey`', () async {
      // TODO
    });

    // The secretForeignKeys are filled at the to many end of a one to many relationship (for example inside Contact for the Patient -> Contacts relationship). Used when we want to find all contacts for a specific patient. These keys are in clear. You can have several to partition the medical document space.
    // Set<String> secretForeignKeys (default value: const {})
    test('to test the property `secretForeignKeys`', () async {
      // TODO
    });

    // The secretForeignKeys are filled at the to many end of a one to many relationship (for example inside Contact for the Patient -> Contacts relationship). Used when we want to find the patient for a specific contact. These keys are the encrypted id (using the hcParty key for the delegate) that can be found in clear inside the patient. ids encrypted using the hcParty keys.
    // Map<String, Set<DelegationDto>> cryptedForeignKeys (default value: const {})
    test('to test the property `cryptedForeignKeys`', () async {
      // TODO
    });

    // When a document is created, the responsible generates a cryptographically random master key (never to be used for something else than referencing from other entities). He/she encrypts it using his own AES exchange key and stores it as a delegation. The responsible is thus always in the delegations as well
    // Map<String, Set<DelegationDto>> delegations (default value: const {})
    test('to test the property `delegations`', () async {
      // TODO
    });

    // When a document needs to be encrypted, the responsible generates a cryptographically random master key (different from the delegation key, never to appear in clear anywhere in the db. He/she encrypts it using his own AES exchange key and stores it as a delegation
    // Map<String, Set<DelegationDto>> encryptionKeys (default value: const {})
    test('to test the property `encryptionKeys`', () async {
      // TODO
    });

    // The base64 encoded data of this object, formatted as JSON and encrypted in AES using the random master key from encryptionKeys.
    // String encryptedSelf
    test('to test the property `encryptedSelf`', () async {
      // TODO
    });

    // The id of the medical location where this entity was created.
    // String medicalLocationId
    test('to test the property `medicalLocationId`', () async {
      // TODO
    });

    // Set<String> nonDuplicateIds (default value: const {})
    test('to test the property `nonDuplicateIds`', () async {
      // TODO
    });

    // Set<String> encryptedAdministrativesDocuments (default value: const {})
    test('to test the property `encryptedAdministrativesDocuments`', () async {
      // TODO
    });

    // String comment
    test('to test the property `comment`', () async {
      // TODO
    });

    // String warning
    test('to test the property `warning`', () async {
      // TODO
    });

    // CodeStubDto fatherBirthCountry
    test('to test the property `fatherBirthCountry`', () async {
      // TODO
    });

    // CodeStubDto birthCountry
    test('to test the property `birthCountry`', () async {
      // TODO
    });

    // CodeStubDto nativeCountry
    test('to test the property `nativeCountry`', () async {
      // TODO
    });

    // CodeStubDto socialStatus
    test('to test the property `socialStatus`', () async {
      // TODO
    });

    // CodeStubDto mainSourceOfIncome
    test('to test the property `mainSourceOfIncome`', () async {
      // TODO
    });

    // List<SchoolingInfoDto> schoolingInfos (default value: const [])
    test('to test the property `schoolingInfos`', () async {
      // TODO
    });

    // List<EmploymentInfoDto> employementInfos (default value: const [])
    test('to test the property `employementInfos`', () async {
      // TODO
    });


  });

}
