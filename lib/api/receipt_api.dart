//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


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
  Future<Response> rawCreateReceiptWithHttpInfo(ReceiptDto receiptDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/receipt';

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
  Future<ReceiptDto?> rawCreateReceipt(ReceiptDto receiptDto,) async {
    final response = await rawCreateReceiptWithHttpInfo(receiptDto,);
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
  Future<Response> rawDeleteReceiptsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/receipt/delete/batch';

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
  Future<List<DocIdentifier>?> rawDeleteReceipts(ListOfIdsDto listOfIdsDto,) async {
    final response = await rawDeleteReceiptsWithHttpInfo(listOfIdsDto,);
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
  Future<Response> rawGetReceiptWithHttpInfo(String receiptId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/receipt/{receiptId}'.replaceAll('{receiptId}', receiptId);

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
  Future<ReceiptDto?> rawGetReceipt(String receiptId,) async {
    final response = await rawGetReceiptWithHttpInfo(receiptId,);
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
  Future<Response> rawGetReceiptAttachmentWithHttpInfo(String receiptId, String attachmentId, String enckeys,) async {
    // ignore: prefer_const_declarations
    final path =
        r'/rest/v1/receipt/{receiptId}/attachment/{attachmentId}'.replaceAll('{receiptId}', receiptId).replaceAll('{attachmentId}', attachmentId);

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
  Future<MultipartFile?> rawGetReceiptAttachment(String receiptId, String attachmentId, String enckeys,) async {
    final response = await rawGetReceiptAttachmentWithHttpInfo(receiptId, attachmentId, enckeys,);
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
  Future<Response> rawListByReferenceWithHttpInfo(String ref,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/receipt/byRef/{ref}'.replaceAll('{ref}', ref);

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
  Future<List<ReceiptDto>?> rawListByReference(String ref,) async {
    final response = await rawListByReferenceWithHttpInfo(ref,);
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
  Future<Response> rawModifyReceiptWithHttpInfo(ReceiptDto receiptDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/receipt';

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
  Future<ReceiptDto?> rawModifyReceipt(ReceiptDto receiptDto,) async {
    final response = await rawModifyReceiptWithHttpInfo(receiptDto,);
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
  Future<Response> rawSetReceiptAttachmentWithHttpInfo(String receiptId, String blobType, MultipartFile body, { String? enckeys, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/receipt/{receiptId}/attachment/{blobType}'.replaceAll('{receiptId}', receiptId).replaceAll('{blobType}', blobType);

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
  Future<ReceiptDto?> rawSetReceiptAttachment(String receiptId, String blobType, MultipartFile body, { String? enckeys, }) async {
    final response = await rawSetReceiptAttachmentWithHttpInfo(receiptId, blobType, body,  enckeys: enckeys, );
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
