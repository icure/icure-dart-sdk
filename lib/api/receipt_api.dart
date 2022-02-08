//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ReceiptApi {
  ReceiptApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a receipt
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ReceiptDto] receiptDto (required):
  Future<Response> createReceiptWithHttpInfo(ReceiptDto receiptDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/receipt';

    // ignore: prefer_final_locals
    Object? postBody = receiptDto;

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

  /// Creates a receipt
  ///
  /// Parameters:
  ///
  /// * [ReceiptDto] receiptDto (required):
  Future<ReceiptDto?> createReceipt(ReceiptDto receiptDto,) async {
    final response = await createReceiptWithHttpInfo(receiptDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReceiptDto',) as ReceiptDto;
    
    }
    return null;
  }

  /// Deletes receipts
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> deleteReceiptsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/receipt/delete/batch';

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

  /// Deletes receipts
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>?> deleteReceipts(ListOfIdsDto listOfIdsDto,) async {
    final response = await deleteReceiptsWithHttpInfo(listOfIdsDto,);
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

  /// Gets a receipt
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] receiptId (required):
  Future<Response> getReceiptWithHttpInfo(String receiptId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/receipt/{receiptId}'
      .replaceAll('{receiptId}', receiptId);

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

  /// Gets a receipt
  ///
  /// Parameters:
  ///
  /// * [String] receiptId (required):
  Future<ReceiptDto?> getReceipt(String receiptId,) async {
    final response = await getReceiptWithHttpInfo(receiptId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReceiptDto',) as ReceiptDto;
    
    }
    return null;
  }

  /// Get an attachment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] receiptId (required):
  ///
  /// * [String] attachmentId (required):
  ///
  /// * [String] enckeys (required):
  Future<Response> getReceiptAttachmentWithHttpInfo(String receiptId, String attachmentId, String enckeys,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/receipt/{receiptId}/attachment/{attachmentId}'
      .replaceAll('{receiptId}', receiptId)
      .replaceAll('{attachmentId}', attachmentId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'enckeys', enckeys));

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

  /// Get an attachment
  ///
  /// Parameters:
  ///
  /// * [String] receiptId (required):
  ///
  /// * [String] attachmentId (required):
  ///
  /// * [String] enckeys (required):
  Future<MultipartFile?> getReceiptAttachment(String receiptId, String attachmentId, String enckeys,) async {
    final response = await getReceiptAttachmentWithHttpInfo(receiptId, attachmentId, enckeys,);
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

  /// Gets a receipt
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ref (required):
  Future<Response> listByReferenceWithHttpInfo(String ref,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/receipt/byRef/{ref}'
      .replaceAll('{ref}', ref);

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

  /// Gets a receipt
  ///
  /// Parameters:
  ///
  /// * [String] ref (required):
  Future<List<ReceiptDto>?> listByReference(String ref,) async {
    final response = await listByReferenceWithHttpInfo(ref,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ReceiptDto>') as List)
        .cast<ReceiptDto>()
        .toList();

    }
    return null;
  }

  /// Updates a receipt
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ReceiptDto] receiptDto (required):
  Future<Response> modifyReceiptWithHttpInfo(ReceiptDto receiptDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/receipt';

    // ignore: prefer_final_locals
    Object? postBody = receiptDto;

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

  /// Updates a receipt
  ///
  /// Parameters:
  ///
  /// * [ReceiptDto] receiptDto (required):
  Future<ReceiptDto?> modifyReceipt(ReceiptDto receiptDto,) async {
    final response = await modifyReceiptWithHttpInfo(receiptDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReceiptDto',) as ReceiptDto;
    
    }
    return null;
  }

  /// Creates a receipt's attachment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] receiptId (required):
  ///
  /// * [String] blobType (required):
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] enckeys:
  Future<Response> setReceiptAttachmentWithHttpInfo(String receiptId, String blobType, MultipartFile body, { String? enckeys, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/receipt/{receiptId}/attachment/{blobType}'
      .replaceAll('{receiptId}', receiptId)
      .replaceAll('{blobType}', blobType);

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

  /// Creates a receipt's attachment
  ///
  /// Parameters:
  ///
  /// * [String] receiptId (required):
  ///
  /// * [String] blobType (required):
  ///
  /// * [MultipartFile] body (required):
  ///
  /// * [String] enckeys:
  Future<ReceiptDto?> setReceiptAttachment(String receiptId, String blobType, MultipartFile body, { String? enckeys, }) async {
    final response = await setReceiptAttachmentWithHttpInfo(receiptId, blobType, body,  enckeys: enckeys, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReceiptDto',) as ReceiptDto;
    
    }
    return null;
  }
}
