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

// tests for HealthcarePartyDto
void main() {
  final instance = HealthcarePartyDto();

  group('test HealthcarePartyDto', () {
    // the Id of the healthcare party. We encourage using either a v4 UUID or a HL7 Id.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // the revision of the healthcare party in the database, used for conflict management / optimistic locking.
    // String rev
    test('to test the property `rev`', () async {
      // TODO
    });

    // creation timestamp of the object.
    // int created
    test('to test the property `created`', () async {
      // TODO
    });

    // last modification timestamp of the object.
    // int modified
    test('to test the property `modified`', () async {
      // TODO
    });

    // hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called.
    // int deletionDate
    test('to test the property `deletionDate`', () async {
      // TODO
    });

    // The full name of the healthcare party, used mainly when the healthcare party is an organization
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // the lastname (surname) of the healthcare party. This is the official lastname that should be used for official administrative purposes.
    // String lastName
    test('to test the property `lastName`', () async {
      // TODO
    });

    // the firstname (name) of the healthcare party.
    // String firstName
    test('to test the property `firstName`', () async {
      // TODO
    });

    // the list of all names of the healthcare party, also containing the official full name information. Ordered by preference of use. First element is therefore the official name used for the healthcare party in the application
    // List<PersonNameDto> names (default value: const [])
    test('to test the property `names`', () async {
      // TODO
    });

    // the gender of the healthcare party: male, female, indeterminate, changed, changedToMale, changedToFemale, unknown
    // String gender
    test('to test the property `gender`', () async {
      // TODO
    });

    // Mr., Ms., Pr., Dr. ...
    // String civility
    test('to test the property `civility`', () async {
      // TODO
    });

    // The name of the company this healthcare party is member of
    // String companyName
    test('to test the property `companyName`', () async {
      // TODO
    });

    // Medical specialty of the healthcare party
    // String speciality
    test('to test the property `speciality`', () async {
      // TODO
    });

    // Bank Account identifier of the healhtcare party, IBAN, deprecated, use financial institutions instead
    // String bankAccount
    test('to test the property `bankAccount`', () async {
      // TODO
    });

    // Bank Identifier Code, the SWIFT Address assigned to the bank, use financial institutions instead
    // String bic
    test('to test the property `bic`', () async {
      // TODO
    });

    // String proxyBankAccount
    test('to test the property `proxyBankAccount`', () async {
      // TODO
    });

    // String proxyBic
    test('to test the property `proxyBic`', () async {
      // TODO
    });

    // All details included in the invoice header
    // String invoiceHeader
    test('to test the property `invoiceHeader`', () async {
      // TODO
    });

    // Identifier number for institution type if the healthcare party is an enterprise
    // String cbe
    test('to test the property `cbe`', () async {
      // TODO
    });

    // Identifier number for the institution if the healthcare party is an organization
    // String ehp
    test('to test the property `ehp`', () async {
      // TODO
    });

    // The id of the user that usually handles this healthcare party.
    // String userId
    test('to test the property `userId`', () async {
      // TODO
    });

    // Id of parent of the user representing the healthcare party.
    // String parentId
    test('to test the property `parentId`', () async {
      // TODO
    });

    // int convention
    test('to test the property `convention`', () async {
      // TODO
    });

    // National Institute for Health and Invalidity Insurance number assigned to healthcare parties (institution or person).
    // String nihii
    test('to test the property `nihii`', () async {
      // TODO
    });

    // String nihiiSpecCode
    test('to test the property `nihiiSpecCode`', () async {
      // TODO
    });

    // Social security inscription number.
    // String ssin
    test('to test the property `ssin`', () async {
      // TODO
    });

    // The list of addresses (with address type).
    // List<AddressDto> addresses (default value: const [])
    test('to test the property `addresses`', () async {
      // TODO
    });

    // The list of languages spoken by the patient ordered by fluency (alpha-2 code http://www.loc.gov/standards/iso639-2/ascii_8bits.html).
    // List<String> languages (default value: const [])
    test('to test the property `languages`', () async {
      // TODO
    });

    // A picture usually saved in JPEG format.
    // String picture
    test('to test the property `picture`', () async {
      // TODO
    });

    // The healthcare party's status: 'trainee' or 'withconvention' or 'accredited'
    // Set<String> statuses (default value: const {})
    test('to test the property `statuses`', () async {
      // TODO
    });

    // The healthcare party's status history
    // List<HealthcarePartyHistoryStatusDto> statusHistory (default value: const [])
    test('to test the property `statusHistory`', () async {
      // TODO
    });

    // Medical specialty of the healthcare party codified using FHIR or Kmehr codificaiton scheme
    // Set<CodeStubDto> specialityCodes (default value: const {})
    test('to test the property `specialityCodes`', () async {
      // TODO
    });

    // The type of format for contacting the healthcare party, ex: mobile, phone, email, etc.
    // Map<String, String> sendFormats (default value: const {})
    test('to test the property `sendFormats`', () async {
      // TODO
    });

    // Text notes.
    // String notes
    test('to test the property `notes`', () async {
      // TODO
    });

    // List of financial information (Bank, bank account).
    // List<FinancialInstitutionInformationDto> financialInstitutionInformation (default value: const [])
    test('to test the property `financialInstitutionInformation`', () async {
      // TODO
    });

    // The invoicing scheme this healthcare party adheres to : 'service fee' or 'flat rate'
    // String billingType
    test('to test the property `billingType`', () async {
      // TODO
    });

    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // String contactPerson
    test('to test the property `contactPerson`', () async {
      // TODO
    });

    // String contactPersonHcpId
    test('to test the property `contactPersonHcpId`', () async {
      // TODO
    });

    // String supervisorId
    test('to test the property `supervisorId`', () async {
      // TODO
    });

    // List<FlatRateTarificationDto> flatRateTarifications (default value: const [])
    test('to test the property `flatRateTarifications`', () async {
      // TODO
    });

    // Map<String, String> importedData (default value: const {})
    test('to test the property `importedData`', () async {
      // TODO
    });

    // Map<String, String> options (default value: const {})
    test('to test the property `options`', () async {
      // TODO
    });

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


  });

}
