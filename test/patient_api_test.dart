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


/// tests for PatientApi
void main() {
  final instance = PatientApi();

  group('tests for PatientApi', () {
    // Get count of patients for a specific HcParty or for the current HcParty 
    //
    // Returns the count of patients
    //
    //Future<ContentDto> countOfPatients(String hcPartyId) async
    test('test countOfPatients', () async {
      // TODO
    });

    // Create a patient
    //
    // Name, last name, date of birth, and gender are required. After creation of the patient and obtaining the ID, you need to create an initial delegation.
    //
    //Future<PatientDto> createPatient(PatientDto patientDto) async
    test('test createPatient', () async {
      // TODO
    });

    // Create patients in bulk
    //
    // Returns the id and _rev of created patients
    //
    //Future<List<IdWithRevDto>> createPatients(List<PatientDto> patientDto) async
    test('test createPatients', () async {
      // TODO
    });

    // Delete patients.
    //
    // Response is an array containing the ID of deleted patient..
    //
    //Future<List<DocIdentifier>> deletePatients(ListOfIdsDto listOfIdsDto) async
    test('test deletePatients', () async {
      // TODO
    });

    // Filter patients for the current user (HcParty) 
    //
    // Returns a list of patients along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
    //
    //Future<PaginatedListPatientDto> filterPatientsBy(FilterChainPatient filterChainPatient, { String startKey, String startDocumentId, int limit, int skip, String sort, bool desc }) async
    test('test filterPatientsBy', () async {
      // TODO
    });

    // Find deleted patients
    //
    // Returns a list of deleted patients, within the specified time period, if any.
    //
    //Future<PaginatedListPatientDto> findDeletedPatients({ int startDate, int endDate, bool desc, String startDocumentId, int limit }) async
    test('test findDeletedPatients', () async {
      // TODO
    });

    // Provides a paginated list of patients with duplicate name for an hecparty
    //
    //Future<PaginatedListPatientDto> findDuplicatesByName(String hcPartyId, { String startKey, String startDocumentId, int limit }) async
    test('test findDuplicatesByName', () async {
      // TODO
    });

    // Provides a paginated list of patients with duplicate ssin for an hecparty
    //
    //Future<PaginatedListPatientDto> findDuplicatesBySsin(String hcPartyId, { String startKey, String startDocumentId, int limit }) async
    test('test findDuplicatesBySsin', () async {
      // TODO
    });

    // Get Paginated List of Patients sorted by Access logs descending
    //
    //Future<PaginatedListPatientDto> findPatientsByAccessLogUserAfterDate(String userId, { String accessType, int startDate, String startKey, String startDocumentId, int limit }) async
    test('test findPatientsByAccessLogUserAfterDate', () async {
      // TODO
    });

    // List patients for a specific HcParty
    //
    // Returns a list of patients along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
    //
    //Future<PaginatedListPatientDto> findPatientsByHealthcareParty({ String hcPartyId, String sortField, String startKey, String startDocumentId, int limit, String sortDirection }) async
    test('test findPatientsByHealthcareParty', () async {
      // TODO
    });

    // Find patients for the current user (HcParty) 
    //
    // Returns a list of patients along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
    //
    //Future<PaginatedListPatientDto> findPatientsByNameBirthSsinAuto({ String healthcarePartyId, String filterValue, String startKey, String startDocumentId, int limit, String sortDirection }) async
    test('test findPatientsByNameBirthSsinAuto', () async {
      // TODO
    });

    // List patients by pages for a specific HcParty
    //
    // Returns a list of patients along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
    //
    //Future<PaginatedListString> findPatientsIdsByHealthcareParty(String hcPartyId, { String startKey, String startDocumentId, int limit }) async
    test('test findPatientsIdsByHealthcareParty', () async {
      // TODO
    });

    // List patients that have been modified after the provided date
    //
    // Returns a list of patients that have been modified after the provided date
    //
    //Future<PaginatedListPatientDto> findPatientsModifiedAfter(int date, { int startKey, String startDocumentId, int limit }) async
    test('test findPatientsModifiedAfter', () async {
      // TODO
    });

    // Filter patients for the current user (HcParty) 
    //
    // Returns a list of patients
    //
    //Future<List<PatientDto>> fuzzySearch({ String firstName, String lastName, int dateOfBirth }) async
    test('test fuzzySearch', () async {
      // TODO
    });

    // Get patient
    //
    // It gets patient administrative data.
    //
    //Future<PatientDto> getPatient(String patientId) async
    test('test getPatient', () async {
      // TODO
    });

    // Get the patient having the provided externalId
    //
    //Future<PatientDto> getPatientByExternalId(String externalId) async
    test('test getPatientByExternalId', () async {
      // TODO
    });

    // Get patient by identifier
    //
    // It gets patient administrative data based on the identifier (root & extension) parameters.
    //
    //Future<PatientDto> getPatientByHealthcarepartyAndIdentifier(String hcPartyId, String id, { String system }) async
    test('test getPatientByHealthcarepartyAndIdentifier', () async {
      // TODO
    });

    // Get the patient (identified by patientId) hcparty keys. Those keys are AES keys (encrypted) used to share information between HCPs and a patient.
    //
    // This endpoint is used to recover all keys that have already been created and that can be used to share information with this patient. It returns a map with the following structure: ID of the owner of the encrypted AES key -> encrypted AES key. The returned encrypted AES keys will have to be decrypted using the patient's private key.
    //
    //Future<String> getPatientHcPartyKeysForDelegate(String patientId) async
    test('test getPatientHcPartyKeysForDelegate', () async {
      // TODO
    });

    // Get patients by id
    //
    // It gets patient administrative data.
    //
    //Future<List<PatientDto>> getPatients(ListOfIdsDto listOfIdsDto) async
    test('test getPatients', () async {
      // TODO
    });

    // Find deleted patients
    //
    // Returns a list of deleted patients, by name and/or firstname prefix, if any.
    //
    //Future<List<PatientDto>> listDeletedPatientsByName({ String firstName, String lastName }) async
    test('test listDeletedPatientsByName', () async {
      // TODO
    });

    // List patients that have been merged towards another patient 
    //
    // Returns a list of patients that have been merged after the provided date
    //
    //Future<List<PatientDto>> listOfMergesAfter(int date) async
    test('test listOfMergesAfter', () async {
      // TODO
    });

    // Get ids of patients matching the provided filter for the current user (HcParty) 
    //
    //Future<List<String>> matchPatientsBy(AbstractFilterDtoPatient abstractFilterDtoPatient) async
    test('test matchPatientsBy', () async {
      // TODO
    });

    // Merge a series of patients into another patient
    //
    //Future<PatientDto> mergeInto(String toId, String fromIds) async
    test('test mergeInto', () async {
      // TODO
    });

    // Modify a patient
    //
    // No particular return value. It's just a message.
    //
    //Future<PatientDto> modifyPatient(PatientDto patientDto) async
    test('test modifyPatient', () async {
      // TODO
    });

    // Set a patient referral doctor
    //
    //Future<PatientDto> modifyPatientReferral(String patientId, String referralId, { int start, int end }) async
    test('test modifyPatientReferral', () async {
      // TODO
    });

    // Modify patients in bulk
    //
    // Returns the id and _rev of modified patients
    //
    //Future<List<IdWithRevDto>> modifyPatients(List<PatientDto> patientDto) async
    test('test modifyPatients', () async {
      // TODO
    });

    // Delegates a patients to a healthcare party
    //
    // It delegates a patient to a healthcare party (By current healthcare party). A modified patient with new delegation gets returned.
    //
    //Future<PatientDto> newPatientDelegations(String patientId, List<DelegationDto> delegationDto) async
    test('test newPatientDelegations', () async {
      // TODO
    });

    // Register a patient
    //
    // Register a new patient into the system
    //
    //Future<PatientRegistrationSuccessDto> registerPatient(String hcPartyId, String groupId, PatientDto patientDto, { String token, bool useShortToken }) async
    test('test registerPatient', () async {
      // TODO
    });

    // undelete previously deleted patients
    //
    // Response is an array containing the ID of undeleted patient..
    //
    //Future<List<DocIdentifier>> undeletePatient(String patientIds) async
    test('test undeletePatient', () async {
      // TODO
    });

  });
}
