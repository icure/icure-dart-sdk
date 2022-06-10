//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class DocumentApi {
  DocumentApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a document
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DocumentDto] documentDto (required):
  Future<Response> rawCreateDocumentWithHttpInfo(DocumentDto documentDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/document';

    // ignore: prefer_final_locals
    Object? postBody = documentDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Creates a document
  ///
  /// Parameters:
  ///
  /// * [DocumentDto] documentDto (required):
  Future<DocumentDto?> rawCreateDocument(DocumentDto documentDto,) async {
    final response = await rawCreateDocumentWithHttpInfo(documentDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentDto',) as DocumentDto;
    
    }
    return null;
  }

  /// Deletes a document's attachment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  Future<Response> rawDeleteAttachmentWithHttpInfo(String documentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/document/{documentId}/attachment'
        .replaceAll('{documentId}', documentId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Deletes a document's attachment
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  Future<DocumentDto?> rawDeleteAttachment(String documentId,) async {
    final response = await rawDeleteAttachmentWithHttpInfo(documentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentDto',) as DocumentDto;
    
    }
    return null;
  }

  /// Deletes documents
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> rawDeleteDocumentWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/document/delete/batch';

    // ignore: prefer_final_locals
    Object? postBody = listOfIdsDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Deletes documents
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>?> rawDeleteDocument(ListOfIdsDto listOfIdsDto,) async {
    final response = await rawDeleteDocumentWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocIdentifier>') as List)
        .cast<DocIdentifier>()
        .toList();

    }
    return null;
  }

  /// List documents with no delegation
  ///
  /// Keys must be delimited by coma
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<Response> rawFindWithoutDelegationWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/document/woDelegation';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// List documents with no delegation
  ///
  /// Keys must be delimited by coma
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<List<DocumentDto>?> rawFindWithoutDelegation({ int? limit, }) async {
    final response = await rawFindWithoutDelegationWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocumentDto>') as List)
        .cast<DocumentDto>()
        .toList();

    }
    return null;
  }

  /// Gets a document
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  Future<Response> rawGetDocumentWithHttpInfo(String documentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/document/{documentId}'.replaceAll('{documentId}', documentId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Gets a document
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  Future<DocumentDto?> rawGetDocument(String documentId,) async {
    final response = await rawGetDocumentWithHttpInfo(documentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentDto',) as DocumentDto;
    
    }
    return null;
  }

  /// Load document's attachment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] attachmentId (required):
  ///
  /// * [String] enckeys:
  ///
  /// * [String] fileName:
  Future<Response> rawGetDocumentAttachmentWithHttpInfo(String documentId, String attachmentId, { String? enckeys, String? fileName, }) async {
    // ignore: prefer_const_declarations
    final path =
        r'/rest/v1/document/{documentId}/attachment/{attachmentId}'.replaceAll('{documentId}', documentId).replaceAll('{attachmentId}', attachmentId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (enckeys != null) {
      queryParams.addAll(_queryParams('', 'enckeys', enckeys));
    }
    if (fileName != null) {
      queryParams.addAll(_queryParams('', 'fileName', fileName));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Load document's attachment
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] attachmentId (required):
  ///
  /// * [String] enckeys:
  ///
  /// * [String] fileName:
  Future<MultipartFile?> rawGetDocumentAttachment(String documentId, String attachmentId, { String? enckeys, String? fileName, }) async {
    final response = await rawGetDocumentAttachmentWithHttpInfo(documentId, attachmentId,  enckeys: enckeys, fileName: fileName, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Gets a document
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] externalUuid (required):
  Future<Response> rawGetDocumentByExternalUuidWithHttpInfo(String externalUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/document/externaluuid/{externalUuid}'.replaceAll('{externalUuid}', externalUuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Gets a document
  ///
  /// Parameters:
  ///
  /// * [String] externalUuid (required):
  Future<DocumentDto?> rawGetDocumentByExternalUuid(String externalUuid,) async {
    final response = await rawGetDocumentByExternalUuidWithHttpInfo(externalUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentDto',) as DocumentDto;
    
    }
    return null;
  }

  /// Gets a document
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> rawGetDocumentsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/document/byIds';

    // ignore: prefer_final_locals
    Object? postBody = listOfIdsDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Gets a document
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocumentDto>?> rawGetDocuments(ListOfIdsDto listOfIdsDto,) async {
    final response = await rawGetDocumentsWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocumentDto>') as List)
        .cast<DocumentDto>()
        .toList();

    }
    return null;
  }

  /// Get all documents with externalUuid
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] externalUuid (required):
  Future<Response> rawGetDocumentsByExternalUuidWithHttpInfo(String externalUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/document/externaluuid/{externalUuid}/all'
        .replaceAll('{externalUuid}', externalUuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get all documents with externalUuid
  ///
  /// Parameters:
  ///
  /// * [String] externalUuid (required):
  Future<List<DocumentDto>?> rawGetDocumentsByExternalUuid(String externalUuid,) async {
    final response = await rawGetDocumentsByExternalUuidWithHttpInfo(externalUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocumentDto>') as List)
        .cast<DocumentDto>()
        .toList();

    }
    return null;
  }

  /// List documents found By type, By Healthcare Party and secret foreign keys.
  ///
  /// Keys must be delimited by coma
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentTypeCode (required):
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<Response> rawListDocumentByTypeHCPartyMessageSecretFKeysWithHttpInfo(String documentTypeCode, String hcPartyId, String secretFKeys,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/document/byTypeHcPartySecretForeignKeys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'documentTypeCode', documentTypeCode));
    queryParams.addAll(_queryParams('', 'hcPartyId', hcPartyId));
      queryParams.addAll(_queryParams('', 'secretFKeys', secretFKeys));

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// List documents found By type, By Healthcare Party and secret foreign keys.
  ///
  /// Keys must be delimited by coma
  ///
  /// Parameters:
  ///
  /// * [String] documentTypeCode (required):
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<List<DocumentDto>?> rawListDocumentByTypeHCPartyMessageSecretFKeys(String documentTypeCode, String hcPartyId, String secretFKeys,) async {
    final response = await rawListDocumentByTypeHCPartyMessageSecretFKeysWithHttpInfo(documentTypeCode, hcPartyId, secretFKeys,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocumentDto>') as List)
        .cast<DocumentDto>()
        .toList();

    }
    return null;
  }

  /// List documents found By Healthcare Party and secret foreign keys.
  ///
  /// Keys must be delimited by coma
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<Response> rawListDocumentsByHCPartyAndPatientForeignKeysWithHttpInfo(String hcPartyId, String secretFKeys,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/document/byHcPartySecretForeignKeys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'hcPartyId', hcPartyId));
    queryParams.addAll(_queryParams('', 'secretFKeys', secretFKeys));

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// List documents found By Healthcare Party and secret foreign keys.
  ///
  /// Keys must be delimited by coma
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<List<DocumentDto>?> rawListDocumentsByHCPartyAndPatientForeignKeys(String hcPartyId, String secretFKeys,) async {
    final response = await rawListDocumentsByHCPartyAndPatientForeignKeysWithHttpInfo(hcPartyId, secretFKeys,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocumentDto>') as List)
        .cast<DocumentDto>()
        .toList();

    }
    return null;
  }

  /// Updates a document
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DocumentDto] documentDto (required):
  Future<Response> rawModifyDocumentWithHttpInfo(DocumentDto documentDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/document';

    // ignore: prefer_final_locals
    Object? postBody = documentDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Updates a document
  ///
  /// Parameters:
  ///
  /// * [DocumentDto] documentDto (required):
  Future<DocumentDto?> rawModifyDocument(DocumentDto documentDto,) async {
    final response = await rawModifyDocumentWithHttpInfo(documentDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentDto',) as DocumentDto;
    
    }
    return null;
  }

  /// Updates a batch of documents
  ///
  /// Returns the modified documents.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<DocumentDto>] documentDto (required):
  Future<Response> rawModifyDocumentsWithHttpInfo(List<DocumentDto> documentDto) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/document/batch';

    // ignore: prefer_final_locals
    Object? postBody = documentDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Updates a batch of documents
  ///
  /// Returns the modified documents.
  ///
  /// Parameters:
  ///
  /// * [List<DocumentDto>] documentDto (required):
  Future<List<DocumentDto>?> rawModifyDocuments(List<DocumentDto> documentDto) async {
    final response = await rawModifyDocumentsWithHttpInfo(documentDto);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocumentDto>') as List)
        .cast<DocumentDto>()
        .toList();

    }
    return null;
  }

  /// Creates a document's attachment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] enckeys:
  Future<Response> rawSetDocumentAttachmentWithHttpInfo(String documentId, ByteStream body, { String? enckeys, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/document/{documentId}/attachment'.replaceAll('{documentId}', documentId);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (enckeys != null) {
      queryParams.addAll(_queryParams('', 'enckeys', enckeys));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/octet-stream'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Creates a document's attachment
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] enckeys:
  Future<DocumentDto?> rawSetDocumentAttachment(String documentId, ByteStream attachment, { String? enckeys, }) async {
    final response = await rawSetDocumentAttachmentWithHttpInfo(documentId, attachment,  enckeys: enckeys, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentDto',) as DocumentDto;
    
    }
    return null;
  }

  /// Creates a document's attachment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] attachment (required):
  ///
  /// * [String] enckeys:
  Future<Response> rawSetDocumentAttachmentMultiWithHttpInfo(String documentId, MultipartFile attachment, { String? enckeys, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/document/{documentId}/attachment/multipart'.replaceAll('{documentId}', documentId);

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (enckeys != null) {
      queryParams.addAll(_queryParams('', 'enckeys', enckeys));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['multipart/form-data'];

    final mp = MultipartRequest('PUT', Uri.parse(path));
    mp.files.add(attachment);

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      mp,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Creates a document's attachment
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] attachment (required):
  ///
  /// * [String] enckeys:
  Future<DocumentDto?> rawSetDocumentAttachmentMulti(String documentId, MultipartFile attachment, { String? enckeys, }) async {
    final response = await rawSetDocumentAttachmentMultiWithHttpInfo(documentId, attachment,  enckeys: enckeys, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentDto',) as DocumentDto;
    
    }
    return null;
  }

  /// Update delegations in healthElements.
  ///
  /// Keys must be delimited by coma
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<IcureStubDto>] icureStubDto (required):
  Future<Response> rawSetDocumentsDelegationsWithHttpInfo(List<IcureStubDto> icureStubDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/document/delegations';

    // ignore: prefer_final_locals
    Object? postBody = icureStubDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Update delegations in healthElements.
  ///
  /// Keys must be delimited by coma
  ///
  /// Parameters:
  ///
  /// * [List<IcureStubDto>] icureStubDto (required):
  Future<List<IcureStubDto>?> rawSetDocumentsDelegations(List<IcureStubDto> icureStubDto,) async {
    final response = await rawSetDocumentsDelegationsWithHttpInfo(icureStubDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IcureStubDto>') as List)
        .cast<IcureStubDto>()
        .toList();

    }
    return null;
  }

  /// Creates a document's attachment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] enckeys:
  Future<Response> rawSetSafeDocumentAttachmentWithHttpInfo(String documentId, MultipartFile body, { String? enckeys, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/document/attachment';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'documentId', documentId));
    if (enckeys != null) {
      queryParams.addAll(_queryParams('', 'enckeys', enckeys));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/octet-stream'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Creates a document's attachment
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] enckeys:
  Future<DocumentDto?> rawSetSafeDocumentAttachment(String documentId, MultipartFile body, { String? enckeys, }) async {
    final response = await rawSetSafeDocumentAttachmentWithHttpInfo(documentId, body,  enckeys: enckeys, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentDto',) as DocumentDto;
    
    }
    return null;
  }
}
