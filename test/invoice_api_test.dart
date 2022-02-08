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


/// tests for InvoiceApi
void main() {
  final instance = InvoiceApi();

  group('tests for InvoiceApi', () {
    // Gets all invoices for author at date
    //
    //Future<List<InvoiceDto>> appendCodes(String userId, String type, String sentMediumType, String secretFKeys, List<InvoicingCodeDto> invoicingCodeDto, { String insuranceId, String invoiceId, int gracePeriod }) async
    test('test appendCodes', () async {
      // TODO
    });

    // Creates an invoice
    //
    //Future<InvoiceDto> createInvoice(InvoiceDto invoiceDto) async
    test('test createInvoice', () async {
      // TODO
    });

    // Create a batch of invoices
    //
    // Returns the created invoices.
    //
    //Future<List<InvoiceDto>> createInvoices(List<InvoiceDto> invoiceDto) async
    test('test createInvoices', () async {
      // TODO
    });

    // Deletes an invoice
    //
    //Future<DocIdentifier> deleteInvoice(String invoiceId) async
    test('test deleteInvoice', () async {
      // TODO
    });

    // Filter invoices for the current user (HcParty)
    //
    // Returns a list of invoices along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
    //
    //Future<List<InvoiceDto>> filterInvoicesBy(FilterChainInvoice filterChainInvoice) async
    test('test filterInvoicesBy', () async {
      // TODO
    });

    // Gets all invoices for author at date
    //
    //Future<PaginatedListInvoiceDto> findInvoicesByAuthor(String hcPartyId, { int fromDate, int toDate, String startKey, String startDocumentId, int limit }) async
    test('test findInvoicesByAuthor', () async {
      // TODO
    });

    // Gets an invoice
    //
    //Future<InvoiceDto> getInvoice(String invoiceId) async
    test('test getInvoice', () async {
      // TODO
    });

    // Gets an invoice
    //
    //Future<List<InvoiceDto>> getInvoices(ListOfIdsDto listOfIdsDto) async
    test('test getInvoices', () async {
      // TODO
    });

    // Get the list of all used tarifications frequencies in invoices
    //
    //Future<List<LabelledOccurenceDto>> getTarificationsCodesOccurences(int minOccurences) async
    test('test getTarificationsCodesOccurences', () async {
      // TODO
    });

    // Gets all invoices per status
    //
    //Future<List<InvoiceDto>> listAllHcpsByStatus(String status, ListOfIdsDto listOfIdsDto, { int from, int to }) async
    test('test listAllHcpsByStatus', () async {
      // TODO
    });

    // Gets all invoices for author at date
    //
    //Future<List<InvoiceDto>> listInvoicesByContactIds(ListOfIdsDto listOfIdsDto) async
    test('test listInvoicesByContactIds', () async {
      // TODO
    });

    // List invoices found By Healthcare Party and secret foreign patient keys.
    //
    // Keys have to delimited by coma
    //
    //Future<List<InvoiceDto>> listInvoicesByHCPartyAndPatientForeignKeys(String hcPartyId, String secretFKeys) async
    test('test listInvoicesByHCPartyAndPatientForeignKeys', () async {
      // TODO
    });

    // List invoices by groupId
    //
    // Keys have to delimited by coma
    //
    //Future<List<InvoiceDto>> listInvoicesByHcPartyAndGroupId(String hcPartyId, String groupId) async
    test('test listInvoicesByHcPartyAndGroupId', () async {
      // TODO
    });

    // List invoices by type, sent or unsent
    //
    // Keys have to delimited by coma
    //
    //Future<List<InvoiceDto>> listInvoicesByHcPartySentMediumTypeInvoiceTypeSentDate(String hcPartyId, String sentMediumType, String invoiceType, bool sent, { int from, int to }) async
    test('test listInvoicesByHcPartySentMediumTypeInvoiceTypeSentDate', () async {
      // TODO
    });

    // Get all invoices by author, by sending mode, by status and by date
    //
    //Future<List<InvoiceDto>> listInvoicesByHcpartySendingModeStatusDate(String hcPartyId, { String sendingMode, String status, int from, int to }) async
    test('test listInvoicesByHcpartySendingModeStatusDate', () async {
      // TODO
    });

    // Gets all invoices for author at date
    //
    //Future<List<InvoiceDto>> listInvoicesByIds(String invoiceIds) async
    test('test listInvoicesByIds', () async {
      // TODO
    });

    // Gets all invoices for author at date
    //
    //Future<List<InvoiceDto>> listInvoicesByRecipientsIds(String recipientIds) async
    test('test listInvoicesByRecipientsIds', () async {
      // TODO
    });

    // Gets all invoices for author at date
    //
    //Future<List<InvoiceDto>> listInvoicesByServiceIds(String serviceIds) async
    test('test listInvoicesByServiceIds', () async {
      // TODO
    });

    // List helement stubs found By Healthcare Party and secret foreign keys.
    //
    // Keys must be delimited by coma
    //
    //Future<List<IcureStubDto>> listInvoicesDelegationsStubsByHCPartyAndPatientForeignKeys(String hcPartyId, String secretFKeys) async
    test('test listInvoicesDelegationsStubsByHCPartyAndPatientForeignKeys', () async {
      // TODO
    });

    // Gets all invoices for author at date
    //
    //Future<List<InvoiceDto>> listToInsurances({ String userIds }) async
    test('test listToInsurances', () async {
      // TODO
    });

    // Gets all invoices for author at date
    //
    //Future<List<InvoiceDto>> listToInsurancesUnsent({ String userIds }) async
    test('test listToInsurancesUnsent', () async {
      // TODO
    });

    // Gets all invoices for author at date
    //
    //Future<List<InvoiceDto>> listToPatients({ String hcPartyId }) async
    test('test listToPatients', () async {
      // TODO
    });

    // Gets all invoices for author at date
    //
    //Future<List<InvoiceDto>> listToPatientsUnsent({ String hcPartyId }) async
    test('test listToPatientsUnsent', () async {
      // TODO
    });

    // Gets all invoices for author at date
    //
    //Future<InvoiceDto> mergeTo(String invoiceId, ListOfIdsDto listOfIdsDto) async
    test('test mergeTo', () async {
      // TODO
    });

    // Modifies an invoice
    //
    //Future<InvoiceDto> modifyInvoice(InvoiceDto invoiceDto) async
    test('test modifyInvoice', () async {
      // TODO
    });

    // Modify a batch of invoices
    //
    // Returns the modified invoices.
    //
    //Future<List<InvoiceDto>> modifyInvoices(List<InvoiceDto> invoiceDto) async
    test('test modifyInvoices', () async {
      // TODO
    });

    // Adds a delegation to a invoice
    //
    //Future<InvoiceDto> newInvoiceDelegations(String invoiceId, List<DelegationDto> delegationDto) async
    test('test newInvoiceDelegations', () async {
      // TODO
    });

    // Modifies an invoice
    //
    //Future<InvoiceDto> reassignInvoice(InvoiceDto invoiceDto) async
    test('test reassignInvoice', () async {
      // TODO
    });

    // Remove an invoice of an user
    //
    //Future<List<InvoiceDto>> removeCodes(String userId, String serviceId, String secretFKeys, List<String> requestBody) async
    test('test removeCodes', () async {
      // TODO
    });

    // Update delegations in healthElements.
    //
    // Keys must be delimited by coma
    //
    //Future<List<IcureStubDto>> setInvoicesDelegations(List<IcureStubDto> icureStubDto) async
    test('test setInvoicesDelegations', () async {
      // TODO
    });

    // Gets all invoices for author at date
    //
    //Future<InvoiceDto> validate(String invoiceId, String scheme, String forcedValue) async
    test('test validate', () async {
      // TODO
    });

  });
}
