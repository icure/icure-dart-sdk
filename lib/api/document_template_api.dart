//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DocumentTemplateApi {
  DocumentTemplateApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a document template with the current user
  ///
  /// Returns an instance of created document template.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DocumentTemplateDto] documentTemplateDto (required):
  Future<Response> createDocumentTemplateWithHttpInfo(DocumentTemplateDto documentTemplateDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/doctemplate';

    // ignore: prefer_final_locals
    Object? postBody = documentTemplateDto;

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

  /// Create a document template with the current user
  ///
  /// Returns an instance of created document template.
  ///
  /// Parameters:
  ///
  /// * [DocumentTemplateDto] documentTemplateDto (required):
  Future<DocumentTemplateDto?> createDocumentTemplate(DocumentTemplateDto documentTemplateDto,) async {
    final response = await createDocumentTemplateWithHttpInfo(documentTemplateDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentTemplateDto',) as DocumentTemplateDto;
    
    }
    return null;
  }

  /// Deletes document templates
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> deleteDocumentTemplatesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/doctemplate/delete/batch';

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

  /// Deletes document templates
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>?> deleteDocumentTemplates(ListOfIdsDto listOfIdsDto,) async {
    final response = await deleteDocumentTemplatesWithHttpInfo(listOfIdsDto,);
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

  /// Download a the document template attachment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentTemplateId (required):
  ///
  /// * [String] attachmentId (required):
  Future<Response> getAttachmentTextWithHttpInfo(String documentTemplateId, String attachmentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/doctemplate/{documentTemplateId}/attachmentText/{attachmentId}'
      .replaceAll('{documentTemplateId}', documentTemplateId)
      .replaceAll('{attachmentId}', attachmentId);

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

  /// Download a the document template attachment
  ///
  /// Parameters:
  ///
  /// * [String] documentTemplateId (required):
  ///
  /// * [String] attachmentId (required):
  Future<MultipartFile?> getAttachmentText(String documentTemplateId, String attachmentId,) async {
    final response = await getAttachmentTextWithHttpInfo(documentTemplateId, attachmentId,);
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

  /// Gets a document template
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentTemplateId (required):
  Future<Response> getDocumentTemplateWithHttpInfo(String documentTemplateId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/doctemplate/{documentTemplateId}'
      .replaceAll('{documentTemplateId}', documentTemplateId);

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

  /// Gets a document template
  ///
  /// Parameters:
  ///
  /// * [String] documentTemplateId (required):
  Future<DocumentTemplateDto?> getDocumentTemplate(String documentTemplateId,) async {
    final response = await getDocumentTemplateWithHttpInfo(documentTemplateId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentTemplateDto',) as DocumentTemplateDto;
    
    }
    return null;
  }

  /// Download a the document template attachment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentTemplateId (required):
  ///
  /// * [String] attachmentId (required):
  Future<Response> getDocumentTemplateAttachmentWithHttpInfo(String documentTemplateId, String attachmentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/doctemplate/{documentTemplateId}/attachment/{attachmentId}'
      .replaceAll('{documentTemplateId}', documentTemplateId)
      .replaceAll('{attachmentId}', attachmentId);

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

  /// Download a the document template attachment
  ///
  /// Parameters:
  ///
  /// * [String] documentTemplateId (required):
  ///
  /// * [String] attachmentId (required):
  Future<MultipartFile?> getDocumentTemplateAttachment(String documentTemplateId, String attachmentId,) async {
    final response = await getDocumentTemplateAttachmentWithHttpInfo(documentTemplateId, attachmentId,);
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

  /// Gets all document templates for all users
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listAllDocumentTemplatesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/doctemplate/find/all';

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

  /// Gets all document templates for all users
  Future<List<DocumentTemplateDto>?> listAllDocumentTemplates() async {
    final response = await listAllDocumentTemplatesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocumentTemplateDto>') as List)
        .cast<DocumentTemplateDto>()
        .toList();

    }
    return null;
  }

  /// Gets all document templates for current user
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listDocumentTemplatesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/doctemplate';

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

  /// Gets all document templates for current user
  Future<List<DocumentTemplateDto>?> listDocumentTemplates() async {
    final response = await listDocumentTemplatesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocumentTemplateDto>') as List)
        .cast<DocumentTemplateDto>()
        .toList();

    }
    return null;
  }

  /// Gets all document templates by Type
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentTypeCode (required):
  Future<Response> listDocumentTemplatesByDocumentTypeWithHttpInfo(String documentTypeCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/doctemplate/byDocumentType/{documentTypeCode}'
      .replaceAll('{documentTypeCode}', documentTypeCode);

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

  /// Gets all document templates by Type
  ///
  /// Parameters:
  ///
  /// * [String] documentTypeCode (required):
  Future<List<DocumentTemplateDto>?> listDocumentTemplatesByDocumentType(String documentTypeCode,) async {
    final response = await listDocumentTemplatesByDocumentTypeWithHttpInfo(documentTypeCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocumentTemplateDto>') as List)
        .cast<DocumentTemplateDto>()
        .toList();

    }
    return null;
  }

  /// Gets all document templates by Type For currentUser
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentTypeCode (required):
  Future<Response> listDocumentTemplatesByDocumentTypeForCurrentUserWithHttpInfo(String documentTypeCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/doctemplate/byDocumentTypeForCurrentUser/{documentTypeCode}'
      .replaceAll('{documentTypeCode}', documentTypeCode);

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

  /// Gets all document templates by Type For currentUser
  ///
  /// Parameters:
  ///
  /// * [String] documentTypeCode (required):
  Future<List<DocumentTemplateDto>?> listDocumentTemplatesByDocumentTypeForCurrentUser(String documentTypeCode,) async {
    final response = await listDocumentTemplatesByDocumentTypeForCurrentUserWithHttpInfo(documentTypeCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocumentTemplateDto>') as List)
        .cast<DocumentTemplateDto>()
        .toList();

    }
    return null;
  }

  /// Gets all document templates
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] specialityCode (required):
  Future<Response> listDocumentTemplatesBySpecialityWithHttpInfo(String specialityCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/doctemplate/bySpecialty/{specialityCode}'
      .replaceAll('{specialityCode}', specialityCode);

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

  /// Gets all document templates
  ///
  /// Parameters:
  ///
  /// * [String] specialityCode (required):
  Future<List<DocumentTemplateDto>?> listDocumentTemplatesBySpeciality(String specialityCode,) async {
    final response = await listDocumentTemplatesBySpecialityWithHttpInfo(specialityCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocumentTemplateDto>') as List)
        .cast<DocumentTemplateDto>()
        .toList();

    }
    return null;
  }

  /// Modify a document template with the current user
  ///
  /// Returns an instance of created document template.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentTemplateId (required):
  ///
  /// * [DocumentTemplateDto] documentTemplateDto (required):
  Future<Response> modifyDocumentTemplateWithHttpInfo(String documentTemplateId, DocumentTemplateDto documentTemplateDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/doctemplate/{documentTemplateId}'
      .replaceAll('{documentTemplateId}', documentTemplateId);

    // ignore: prefer_final_locals
    Object? postBody = documentTemplateDto;

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

  /// Modify a document template with the current user
  ///
  /// Returns an instance of created document template.
  ///
  /// Parameters:
  ///
  /// * [String] documentTemplateId (required):
  ///
  /// * [DocumentTemplateDto] documentTemplateDto (required):
  Future<DocumentTemplateDto?> modifyDocumentTemplate(String documentTemplateId, DocumentTemplateDto documentTemplateDto,) async {
    final response = await modifyDocumentTemplateWithHttpInfo(documentTemplateId, documentTemplateDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentTemplateDto',) as DocumentTemplateDto;
    
    }
    return null;
  }

  /// Creates a document's attachment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentTemplateId (required):
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> setDocumentTemplateAttachmentWithHttpInfo(String documentTemplateId, List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/doctemplate/{documentTemplateId}/attachment'
      .replaceAll('{documentTemplateId}', documentTemplateId);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  /// * [String] documentTemplateId (required):
  ///
  /// * [List<String>] requestBody (required):
  Future<DocumentTemplateDto?> setDocumentTemplateAttachment(String documentTemplateId, List<String> requestBody,) async {
    final response = await setDocumentTemplateAttachmentWithHttpInfo(documentTemplateId, requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentTemplateDto',) as DocumentTemplateDto;
    
    }
    return null;
  }

  /// Creates a document's attachment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentTemplateId (required):
  ///
  /// * [ByteArrayDto] byteArrayDto (required):
  Future<Response> setDocumentTemplateAttachmentJsonWithHttpInfo(String documentTemplateId, ByteArrayDto byteArrayDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/doctemplate/{documentTemplateId}/attachmentJson'
      .replaceAll('{documentTemplateId}', documentTemplateId);

    // ignore: prefer_final_locals
    Object? postBody = byteArrayDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  /// * [String] documentTemplateId (required):
  ///
  /// * [ByteArrayDto] byteArrayDto (required):
  Future<DocumentTemplateDto?> setDocumentTemplateAttachmentJson(String documentTemplateId, ByteArrayDto byteArrayDto,) async {
    final response = await setDocumentTemplateAttachmentJsonWithHttpInfo(documentTemplateId, byteArrayDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentTemplateDto',) as DocumentTemplateDto;
    
    }
    return null;
  }
}
