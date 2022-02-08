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


/// tests for MessageApi
void main() {
  final instance = MessageApi();

  group('tests for MessageApi', () {
    // Creates a message
    //
    //Future<MessageDto> createMessage(MessageDto messageDto) async
    test('test createMessage', () async {
      // TODO
    });

    // Deletes a message delegation
    //
    //Future<MessageDto> deleteDelegation(String messageId, String delegateId) async
    test('test deleteDelegation', () async {
      // TODO
    });

    // Deletes multiple messages
    //
    //Future<List<DocIdentifier>> deleteMessages(ListOfIdsDto listOfIdsDto) async
    test('test deleteMessages', () async {
      // TODO
    });

    // Get all messages (paginated) for current HC Party
    //
    //Future<PaginatedListMessageDto> findMessages({ String startKey, String startDocumentId, int limit }) async
    test('test findMessages', () async {
      // TODO
    });

    // Get all messages (paginated) for current HC Party and provided from address
    //
    //Future<PaginatedListMessageDto> findMessagesByFromAddress({ String fromAddress, String startKey, String startDocumentId, int limit, String hcpId }) async
    test('test findMessagesByFromAddress', () async {
      // TODO
    });

    // List messages found By Healthcare Party and secret foreign keys.
    //
    // Keys must be delimited by coma
    //
    //Future<List<MessageDto>> findMessagesByHCPartyPatientForeignKeys(String secretFKeys) async
    test('test findMessagesByHCPartyPatientForeignKeys', () async {
      // TODO
    });

    // Get all messages (paginated) for current HC Party and provided to address
    //
    //Future<PaginatedListMessageDto> findMessagesByToAddress({ String toAddress, String startKey, String startDocumentId, int limit, bool reverse, String hcpId }) async
    test('test findMessagesByToAddress', () async {
      // TODO
    });

    // Get all messages (paginated) for current HC Party and provided transportGuid
    //
    //Future<PaginatedListMessageDto> findMessagesByTransportGuid({ String transportGuid, bool received, String startKey, String startDocumentId, int limit, String hcpId }) async
    test('test findMessagesByTransportGuid', () async {
      // TODO
    });

    // Get all messages starting by a prefix between two date
    //
    //Future<PaginatedListMessageDto> findMessagesByTransportGuidSentDate({ String transportGuid, int from, int to, String startKey, String startDocumentId, int limit, String hcpId }) async
    test('test findMessagesByTransportGuidSentDate', () async {
      // TODO
    });

    // Get children messages of provided message
    //
    //Future<List<MessageDto>> getChildrenMessages(String messageId) async
    test('test getChildrenMessages', () async {
      // TODO
    });

    // Gets a message
    //
    //Future<MessageDto> getMessage(String messageId) async
    test('test getMessage', () async {
      // TODO
    });

    // Get children messages of provided message
    //
    //Future<List<MessageDto>> getMessagesChildren(ListOfIdsDto listOfIdsDto) async
    test('test getMessagesChildren', () async {
      // TODO
    });

    // Get children messages of provided message
    //
    //Future<List<MessageDto>> listMessagesByInvoices(ListOfIdsDto listOfIdsDto) async
    test('test listMessagesByInvoices', () async {
      // TODO
    });

    // Get all messages for current HC Party and provided transportGuids
    //
    //Future<List<MessageDto>> listMessagesByTransportGuids(String hcpId, ListOfIdsDto listOfIdsDto) async
    test('test listMessagesByTransportGuids', () async {
      // TODO
    });

    // Updates a message
    //
    //Future<MessageDto> modifyMessage(MessageDto messageDto) async
    test('test modifyMessage', () async {
      // TODO
    });

    // Adds a delegation to a message
    //
    //Future<IcureStubDto> newMessageDelegations(String messageId, List<DelegationDto> delegationDto) async
    test('test newMessageDelegations', () async {
      // TODO
    });

    // Set read status for given list of messages
    //
    //Future<List<MessageDto>> setMessagesReadStatus(MessagesReadStatusUpdate messagesReadStatusUpdate) async
    test('test setMessagesReadStatus', () async {
      // TODO
    });

    // Set status bits for given list of messages
    //
    //Future<List<MessageDto>> setMessagesStatusBits(int status, ListOfIdsDto listOfIdsDto) async
    test('test setMessagesStatusBits', () async {
      // TODO
    });

  });
}
