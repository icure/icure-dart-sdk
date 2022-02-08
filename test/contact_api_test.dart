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


/// tests for ContactApi
void main() {
  final instance = ContactApi();

  group('tests for ContactApi', () {
    // Close contacts for Healthcare Party and secret foreign keys.
    //
    // Keys must be delimited by coma
    //
    //Future<List<ContactDto>> closeForHCPartyPatientForeignKeys(String hcPartyId, String secretFKeys) async
    test('test closeForHCPartyPatientForeignKeys', () async {
      // TODO
    });

    // Create a contact with the current user
    //
    // Returns an instance of created contact.
    //
    //Future<ContactDto> createContact(ContactDto contactDto) async
    test('test createContact', () async {
      // TODO
    });

    // Create a batch of contacts
    //
    // Returns the modified contacts.
    //
    //Future<List<ContactDto>> createContacts(List<ContactDto> contactDto) async
    test('test createContacts', () async {
      // TODO
    });

    // Delete contacts.
    //
    // Response is a set containing the ID's of deleted contacts.
    //
    //Future<List<DocIdentifier>> deleteContacts(ListOfIdsDto listOfIdsDto) async
    test('test deleteContacts', () async {
      // TODO
    });

    // List contacts for the current user (HcParty) or the given hcparty in the filter 
    //
    // Returns a list of contacts along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
    //
    //Future<PaginatedListContactDto> filterContactsBy(FilterChainContact filterChainContact, { String startDocumentId, int limit }) async
    test('test filterContactsBy', () async {
      // TODO
    });

    // List services for the current user (HcParty) or the given hcparty in the filter 
    //
    // Returns a list of contacts along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
    //
    //Future<PaginatedListServiceDto> filterServicesBy(FilterChainService filterChainService, { String startDocumentId, int limit }) async
    test('test filterServicesBy', () async {
      // TODO
    });

    // List contacts by opening date parties with(out) pagination
    //
    // Returns a list of contacts.
    //
    //Future<PaginatedListContactDto> findContactsByOpeningDate(int startKey, int endKey, String hcpartyid, { String startDocumentId, int limit }) async
    test('test findContactsByOpeningDate', () async {
      // TODO
    });

    // Get a contact
    //
    //Future<ContactDto> getContact(String contactId) async
    test('test getContact', () async {
      // TODO
    });

    // Get contacts
    //
    //Future<List<ContactDto>> getContacts(ListOfIdsDto listOfIdsDto) async
    test('test getContacts', () async {
      // TODO
    });

    // Get an empty content
    //
    //Future<ContentDto> getEmptyContent() async
    test('test getEmptyContent', () async {
      // TODO
    });

    // Get the list of all used codes frequencies in services
    //
    //Future<List<LabelledOccurenceDto>> getServiceCodesOccurences(String codeType, int minOccurences) async
    test('test getServiceCodesOccurences', () async {
      // TODO
    });

    // List services with provided ids 
    //
    // Returns a list of services
    //
    //Future<List<ServiceDto>> getServices(ListOfIdsDto listOfIdsDto) async
    test('test getServices', () async {
      // TODO
    });

    // List services linked to provided ids 
    //
    // Returns a list of services
    //
    //Future<List<ServiceDto>> getServicesLinkedTo(ListOfIdsDto listOfIdsDto, { String linkType }) async
    test('test getServicesLinkedTo', () async {
      // TODO
    });

    // List contacts found By Healthcare Party and service Id.
    //
    //Future<List<ContactDto>> listContactByHCPartyServiceId(String hcPartyId, String serviceId) async
    test('test listContactByHCPartyServiceId', () async {
      // TODO
    });

    // List contacts found By externalId.
    //
    //Future<List<ContactDto>> listContactsByExternalId(String externalId) async
    test('test listContactsByExternalId', () async {
      // TODO
    });

    // List contacts found By Healthcare Party and form Id.
    //
    //Future<List<ContactDto>> listContactsByHCPartyAndFormId(String hcPartyId, String formId) async
    test('test listContactsByHCPartyAndFormId', () async {
      // TODO
    });

    // List contacts found By Healthcare Party and form Id.
    //
    //Future<List<ContactDto>> listContactsByHCPartyAndFormIds(String hcPartyId, ListOfIdsDto listOfIdsDto) async
    test('test listContactsByHCPartyAndFormIds', () async {
      // TODO
    });

    // List contacts found By Healthcare Party and Patient foreign keys.
    //
    //Future<List<ContactDto>> listContactsByHCPartyAndPatientForeignKeys(String hcPartyId, ListOfIdsDto listOfIdsDto) async
    test('test listContactsByHCPartyAndPatientForeignKeys', () async {
      // TODO
    });

    // List contacts found By Healthcare Party and secret foreign keys.
    //
    // Keys must be delimited by coma
    //
    //Future<List<ContactDto>> listContactsByHCPartyAndPatientSecretFKeys(String hcPartyId, String secretFKeys, { String planOfActionsIds, bool skipClosedContacts }) async
    test('test listContactsByHCPartyAndPatientSecretFKeys', () async {
      // TODO
    });

    // List contacts found By Healthcare Party and secret foreign keys.
    //
    // Keys must be delimited by coma
    //
    //Future<List<IcureStubDto>> listContactsDelegationsStubsByHCPartyAndPatientForeignKeys(String hcPartyId, String secretFKeys) async
    test('test listContactsDelegationsStubsByHCPartyAndPatientForeignKeys', () async {
      // TODO
    });

    // List services by related association id
    //
    // Returns a list of services
    //
    //Future<List<ServiceDto>> listServicesByAssociationId(String associationId) async
    test('test listServicesByAssociationId', () async {
      // TODO
    });

    // List services linked to a health element
    //
    // Returns the list of services linked to the provided health element id
    //
    //Future<List<ServiceDto>> listServicesByHealthElementId(String healthElementId) async
    test('test listServicesByHealthElementId', () async {
      // TODO
    });

    // Get ids of contacts matching the provided filter for the current user (HcParty) 
    //
    //Future<List<String>> matchContactsBy(AbstractFilterDtoContact abstractFilterDtoContact) async
    test('test matchContactsBy', () async {
      // TODO
    });

    // Modify a contact
    //
    // Returns the modified contact.
    //
    //Future<ContactDto> modifyContact(ContactDto contactDto) async
    test('test modifyContact', () async {
      // TODO
    });

    // Modify a batch of contacts
    //
    // Returns the modified contacts.
    //
    //Future<List<ContactDto>> modifyContacts(List<ContactDto> contactDto) async
    test('test modifyContacts', () async {
      // TODO
    });

    // Update delegations in healthElements.
    //
    // Keys must be delimited by coma
    //
    //Future<List<ContactDto>> modifyContactsDelegations(List<IcureStubDto> icureStubDto) async
    test('test modifyContactsDelegations', () async {
      // TODO
    });

    // Delegates a contact to a healthcare party
    //
    // It delegates a contact to a healthcare party (By current healthcare party). Returns the contact with new delegations.
    //
    //Future<ContactDto> newContactDelegations(String contactId, DelegationDto delegationDto) async
    test('test newContactDelegations', () async {
      // TODO
    });

    // Update delegations in healthElements.
    //
    // Keys must be delimited by coma
    //
    //Future<List<ContactDto>> setContactsDelegations(List<IcureStubDto> icureStubDto) async
    test('test setContactsDelegations', () async {
      // TODO
    });

  });
}
