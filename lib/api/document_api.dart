//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DocumentApi {
  DocumentApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a document
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DocumentDto] documentDto (required):
  Future<Response> createDocumentWithHttpInfo(DocumentDto documentDto,) async {
    // Verify required params are set.
    if (documentDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: documentDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/document';

    // ignore: prefer_final_locals
    Object postBody = documentDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Creates a document
  ///
  /// Parameters:
  ///
  /// * [DocumentDto] documentDto (required):
  Future<DocumentDto> createDocument(DocumentDto documentDto,) async {
    final response = await createDocumentWithHttpInfo(documentDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentDto',) as DocumentDto;
    
    }
    return Future<DocumentDto>.value();
  }

  /// Deletes a document's attachment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  Future<Response> deleteAttachmentWithHttpInfo(String documentId,) async {
    // Verify required params are set.
    if (documentId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: documentId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/document/{documentId}/attachment'
      .replaceAll('{documentId}', documentId);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Deletes a document's attachment
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  Future<DocumentDto> deleteAttachment(String documentId,) async {
    final response = await deleteAttachmentWithHttpInfo(documentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentDto',) as DocumentDto;
    
    }
    return Future<DocumentDto>.value();
  }

  /// Deletes documents
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> deleteDocumentWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // Verify required params are set.
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/document/delete/batch';

    // ignore: prefer_final_locals
    Object postBody = listOfIdsDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Deletes documents
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>> deleteDocument(ListOfIdsDto listOfIdsDto,) async {
    final response = await deleteDocumentWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocIdentifier>') as List)
        .cast<DocIdentifier>()
        .toList(growable: false);

    }
    return Future<List<DocIdentifier>>.value();
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
  Future<Response> findWithoutDelegationWithHttpInfo({ int limit, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/document/woDelegation';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
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
  Future<List<DocumentDto>> findWithoutDelegation({ int limit, }) async {
    final response = await findWithoutDelegationWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocumentDto>') as List)
        .cast<DocumentDto>()
        .toList(growable: false);

    }
    return Future<List<DocumentDto>>.value();
  }

  /// Gets a document
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  Future<Response> getDocumentWithHttpInfo(String documentId,) async {
    // Verify required params are set.
    if (documentId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: documentId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/document/{documentId}'
      .replaceAll('{documentId}', documentId);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Gets a document
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  Future<DocumentDto> getDocument(String documentId,) async {
    final response = await getDocumentWithHttpInfo(documentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentDto',) as DocumentDto;
    
    }
    return Future<DocumentDto>.value();
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
  Future<Response> getDocumentAttachmentWithHttpInfo(String documentId, String attachmentId, { String enckeys, String fileName, }) async {
    // Verify required params are set.
    if (documentId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: documentId');
    }
    if (attachmentId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: attachmentId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/document/{documentId}/attachment/{attachmentId}'
      .replaceAll('{documentId}', documentId)
      .replaceAll('{attachmentId}', attachmentId);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (enckeys != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'enckeys', enckeys));
    }
    if (fileName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'fileName', fileName));
    }

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
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
  Future<MultipartFile> getDocumentAttachment(String documentId, String attachmentId, { String enckeys, String fileName, }) async {
    final response = await getDocumentAttachmentWithHttpInfo(documentId, attachmentId,  enckeys: enckeys, fileName: fileName, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return Future<MultipartFile>.value();
  }

  /// Gets a document
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] externalUuid (required):
  Future<Response> getDocumentByExternalUuidWithHttpInfo(String externalUuid,) async {
    // Verify required params are set.
    if (externalUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: externalUuid');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/document/externaluuid/{externalUuid}'
      .replaceAll('{externalUuid}', externalUuid);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Gets a document
  ///
  /// Parameters:
  ///
  /// * [String] externalUuid (required):
  Future<DocumentDto> getDocumentByExternalUuid(String externalUuid,) async {
    final response = await getDocumentByExternalUuidWithHttpInfo(externalUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentDto',) as DocumentDto;
    
    }
    return Future<DocumentDto>.value();
  }

  /// Gets a document
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> getDocumentsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // Verify required params are set.
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/document/byIds';

    // ignore: prefer_final_locals
    Object postBody = listOfIdsDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Gets a document
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocumentDto>> getDocuments(ListOfIdsDto listOfIdsDto,) async {
    final response = await getDocumentsWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocumentDto>') as List)
        .cast<DocumentDto>()
        .toList(growable: false);

    }
    return Future<List<DocumentDto>>.value();
  }

  /// Get all documents with externalUuid
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] externalUuid (required):
  Future<Response> getDocumentsByExternalUuidWithHttpInfo(String externalUuid,) async {
    // Verify required params are set.
    if (externalUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: externalUuid');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/document/externaluuid/{externalUuid}/all'
      .replaceAll('{externalUuid}', externalUuid);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get all documents with externalUuid
  ///
  /// Parameters:
  ///
  /// * [String] externalUuid (required):
  Future<List<DocumentDto>> getDocumentsByExternalUuid(String externalUuid,) async {
    final response = await getDocumentsByExternalUuidWithHttpInfo(externalUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocumentDto>') as List)
        .cast<DocumentDto>()
        .toList(growable: false);

    }
    return Future<List<DocumentDto>>.value();
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
  Future<Response> listDocumentByTypeHCPartyMessageSecretFKeysWithHttpInfo(String documentTypeCode, String hcPartyId, String secretFKeys,) async {
    // Verify required params are set.
    if (documentTypeCode == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: documentTypeCode');
    }
    if (hcPartyId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: hcPartyId');
    }
    if (secretFKeys == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: secretFKeys');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/document/byTypeHcPartySecretForeignKeys';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'documentTypeCode', documentTypeCode));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'hcPartyId', hcPartyId));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'secretFKeys', secretFKeys));

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
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
  Future<List<DocumentDto>> listDocumentByTypeHCPartyMessageSecretFKeys(String documentTypeCode, String hcPartyId, String secretFKeys,) async {
    final response = await listDocumentByTypeHCPartyMessageSecretFKeysWithHttpInfo(documentTypeCode, hcPartyId, secretFKeys,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocumentDto>') as List)
        .cast<DocumentDto>()
        .toList(growable: false);

    }
    return Future<List<DocumentDto>>.value();
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
  Future<Response> listDocumentsByHCPartyAndPatientForeignKeysWithHttpInfo(String hcPartyId, String secretFKeys,) async {
    // Verify required params are set.
    if (hcPartyId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: hcPartyId');
    }
    if (secretFKeys == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: secretFKeys');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/document/byHcPartySecretForeignKeys';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'hcPartyId', hcPartyId));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'secretFKeys', secretFKeys));

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
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
  Future<List<DocumentDto>> listDocumentsByHCPartyAndPatientForeignKeys(String hcPartyId, String secretFKeys,) async {
    final response = await listDocumentsByHCPartyAndPatientForeignKeysWithHttpInfo(hcPartyId, secretFKeys,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocumentDto>') as List)
        .cast<DocumentDto>()
        .toList(growable: false);

    }
    return Future<List<DocumentDto>>.value();
  }

  /// Updates a document
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DocumentDto] documentDto (required):
  Future<Response> modifyDocumentWithHttpInfo(DocumentDto documentDto,) async {
    // Verify required params are set.
    if (documentDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: documentDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/document';

    // ignore: prefer_final_locals
    Object postBody = documentDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Updates a document
  ///
  /// Parameters:
  ///
  /// * [DocumentDto] documentDto (required):
  Future<DocumentDto> modifyDocument(DocumentDto documentDto,) async {
    final response = await modifyDocumentWithHttpInfo(documentDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentDto',) as DocumentDto;
    
    }
    return Future<DocumentDto>.value();
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
  Future<Response> modifyDocumentsWithHttpInfo(List<DocumentDto> documentDto,) async {
    // Verify required params are set.
    if (documentDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: documentDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/document/batch';

    // ignore: prefer_final_locals
    Object postBody = documentDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
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
  Future<List<DocumentDto>> modifyDocuments(List<DocumentDto> documentDto,) async {
    final response = await modifyDocumentsWithHttpInfo(documentDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocumentDto>') as List)
        .cast<DocumentDto>()
        .toList(growable: false);

    }
    return Future<List<DocumentDto>>.value();
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
  Future<Response> setDocumentAttachmentWithHttpInfo(String documentId, MultipartFile body, { String enckeys, }) async {
    // Verify required params are set.
    if (documentId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: documentId');
    }
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/document/{documentId}/attachment'
      .replaceAll('{documentId}', documentId);

    // ignore: prefer_final_locals
    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (enckeys != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'enckeys', enckeys));
    }

    const authNames = <String>[];
    const contentTypes = <String>['application/octet-stream'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
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
  Future<DocumentDto> setDocumentAttachment(String documentId, MultipartFile body, { String enckeys, }) async {
    final response = await setDocumentAttachmentWithHttpInfo(documentId, body,  enckeys: enckeys, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentDto',) as DocumentDto;
    
    }
    return Future<DocumentDto>.value();
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
  Future<Response> setDocumentAttachmentMultiWithHttpInfo(String documentId, String attachment, { String enckeys, }) async {
    // Verify required params are set.
    if (documentId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: documentId');
    }
    if (attachment == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: attachment');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/document/{documentId}/attachment/multipart'
      .replaceAll('{documentId}', documentId);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (enckeys != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'enckeys', enckeys));
    }

    const authNames = <String>[];
    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('PUT', Uri.parse(path));
    if (attachment != null) {
      hasFields = true;
      mp.fields[r'attachment'] = parameterToString(attachment);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
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
  Future<DocumentDto> setDocumentAttachmentMulti(String documentId, String attachment, { String enckeys, }) async {
    final response = await setDocumentAttachmentMultiWithHttpInfo(documentId, attachment,  enckeys: enckeys, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentDto',) as DocumentDto;
    
    }
    return Future<DocumentDto>.value();
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
  Future<Response> setDocumentsDelegationsWithHttpInfo(List<IcureStubDto> icureStubDto,) async {
    // Verify required params are set.
    if (icureStubDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: icureStubDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/document/delegations';

    // ignore: prefer_final_locals
    Object postBody = icureStubDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
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
  Future<List<IcureStubDto>> setDocumentsDelegations(List<IcureStubDto> icureStubDto,) async {
    final response = await setDocumentsDelegationsWithHttpInfo(icureStubDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IcureStubDto>') as List)
        .cast<IcureStubDto>()
        .toList(growable: false);

    }
    return Future<List<IcureStubDto>>.value();
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
  Future<Response> setSafeDocumentAttachmentWithHttpInfo(String documentId, MultipartFile body, { String enckeys, }) async {
    // Verify required params are set.
    if (documentId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: documentId');
    }
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/document/attachment';

    // ignore: prefer_final_locals
    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'documentId', documentId));
    if (enckeys != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'enckeys', enckeys));
    }

    const authNames = <String>[];
    const contentTypes = <String>['application/octet-stream'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
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
  Future<DocumentDto> setSafeDocumentAttachment(String documentId, MultipartFile body, { String enckeys, }) async {
    final response = await setSafeDocumentAttachmentWithHttpInfo(documentId, body,  enckeys: enckeys, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentDto',) as DocumentDto;
    
    }
    return Future<DocumentDto>.value();
  }
}
