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


/// tests for DocumentApi
void main() {
  final instance = DocumentApi();

  group('tests for DocumentApi', () {
    // Creates a document
    //
    //Future<DocumentDto> createDocument(DocumentDto documentDto) async
    test('test createDocument', () async {
      // TODO
    });

    // Deletes a document's attachment
    //
    //Future<DocumentDto> deleteAttachment(String documentId) async
    test('test deleteAttachment', () async {
      // TODO
    });

    // Deletes documents
    //
    //Future<List<DocIdentifier>> deleteDocument(ListOfIdsDto listOfIdsDto) async
    test('test deleteDocument', () async {
      // TODO
    });

    // List documents with no delegation
    //
    // Keys must be delimited by coma
    //
    //Future<List<DocumentDto>> findWithoutDelegation({ int limit }) async
    test('test findWithoutDelegation', () async {
      // TODO
    });

    // Gets a document
    //
    //Future<DocumentDto> getDocument(String documentId) async
    test('test getDocument', () async {
      // TODO
    });

    // Load document's attachment
    //
    //Future<MultipartFile> getDocumentAttachment(String documentId, String attachmentId, { String enckeys, String fileName }) async
    test('test getDocumentAttachment', () async {
      // TODO
    });

    // Gets a document
    //
    //Future<DocumentDto> getDocumentByExternalUuid(String externalUuid) async
    test('test getDocumentByExternalUuid', () async {
      // TODO
    });

    // Gets a document
    //
    //Future<List<DocumentDto>> getDocuments(ListOfIdsDto listOfIdsDto) async
    test('test getDocuments', () async {
      // TODO
    });

    // Get all documents with externalUuid
    //
    //Future<List<DocumentDto>> getDocumentsByExternalUuid(String externalUuid) async
    test('test getDocumentsByExternalUuid', () async {
      // TODO
    });

    // List documents found By type, By Healthcare Party and secret foreign keys.
    //
    // Keys must be delimited by coma
    //
    //Future<List<DocumentDto>> listDocumentByTypeHCPartyMessageSecretFKeys(String documentTypeCode, String hcPartyId, String secretFKeys) async
    test('test listDocumentByTypeHCPartyMessageSecretFKeys', () async {
      // TODO
    });

    // List documents found By Healthcare Party and secret foreign keys.
    //
    // Keys must be delimited by coma
    //
    //Future<List<DocumentDto>> listDocumentsByHCPartyAndPatientForeignKeys(String hcPartyId, String secretFKeys) async
    test('test listDocumentsByHCPartyAndPatientForeignKeys', () async {
      // TODO
    });

    // Updates a document
    //
    //Future<DocumentDto> modifyDocument(DocumentDto documentDto) async
    test('test modifyDocument', () async {
      // TODO
    });

    // Updates a batch of documents
    //
    // Returns the modified documents.
    //
    //Future<List<DocumentDto>> modifyDocuments(List<DocumentDto> documentDto) async
    test('test modifyDocuments', () async {
      // TODO
    });

    // Creates a document's attachment
    //
    //Future<DocumentDto> setDocumentAttachment(String documentId, MultipartFile body, { String enckeys }) async
    test('test setDocumentAttachment', () async {
      // TODO
    });

    // Creates a document's attachment
    //
    //Future<DocumentDto> setDocumentAttachmentMulti(String documentId, String attachment, { String enckeys }) async
    test('test setDocumentAttachmentMulti', () async {
      // TODO
    });

    // Update delegations in healthElements.
    //
    // Keys must be delimited by coma
    //
    //Future<List<IcureStubDto>> setDocumentsDelegations(List<IcureStubDto> icureStubDto) async
    test('test setDocumentsDelegations', () async {
      // TODO
    });

    // Creates a document's attachment
    //
    //Future<DocumentDto> setSafeDocumentAttachment(String documentId, MultipartFile body, { String enckeys }) async
    test('test setSafeDocumentAttachment', () async {
      // TODO
    });

  });
}
