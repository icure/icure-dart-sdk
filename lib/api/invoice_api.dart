//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class InvoiceApi {
  InvoiceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Gets all invoices for author at date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [String] type (required):
  ///
  /// * [String] sentMediumType (required):
  ///
  /// * [String] secretFKeys (required):
  ///
  /// * [List<InvoicingCodeDto>] invoicingCodeDto (required):
  ///
  /// * [String] insuranceId:
  ///
  /// * [String] invoiceId:
  ///
  /// * [int] gracePeriod:
  Future<Response> appendCodesWithHttpInfo(String userId, String type, String sentMediumType, String secretFKeys, List<InvoicingCodeDto> invoicingCodeDto, { String? insuranceId, String? invoiceId, int? gracePeriod, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/byauthor/{userId}/append/{type}/{sentMediumType}'
        .replaceAll('{userId}', userId)
        .replaceAll('{type}', type)
        .replaceAll('{sentMediumType}', sentMediumType);

    // ignore: prefer_final_locals
    Object? postBody = invoicingCodeDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'secretFKeys', secretFKeys));
    if (insuranceId != null) {
      queryParams.addAll(_queryParams('', 'insuranceId', insuranceId));
    }
    if (invoiceId != null) {
      queryParams.addAll(_queryParams('', 'invoiceId', invoiceId));
    }
    if (gracePeriod != null) {
      queryParams.addAll(_queryParams('', 'gracePeriod', gracePeriod));
    }

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

  /// Gets all invoices for author at date
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [String] type (required):
  ///
  /// * [String] sentMediumType (required):
  ///
  /// * [String] secretFKeys (required):
  ///
  /// * [List<InvoicingCodeDto>] invoicingCodeDto (required):
  ///
  /// * [String] insuranceId:
  ///
  /// * [String] invoiceId:
  ///
  /// * [int] gracePeriod:
  Future<List<InvoiceDto>?> appendCodes(String userId, String type, String sentMediumType, String secretFKeys, List<InvoicingCodeDto> invoicingCodeDto, { String? insuranceId, String? invoiceId, int? gracePeriod, }) async {
    final response = await appendCodesWithHttpInfo(userId, type, sentMediumType, secretFKeys, invoicingCodeDto,  insuranceId: insuranceId, invoiceId: invoiceId, gracePeriod: gracePeriod, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList();

    }
    return null;
  }

  /// Creates an invoice
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [InvoiceDto] invoiceDto (required):
  Future<Response> rawCreateInvoiceWithHttpInfo(InvoiceDto invoiceDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice';

    // ignore: prefer_final_locals
    Object? postBody = invoiceDto;

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

  /// Creates an invoice
  ///
  /// Parameters:
  ///
  /// * [InvoiceDto] invoiceDto (required):
  Future<InvoiceDto?> rawCreateInvoice(InvoiceDto invoiceDto,) async {
    final response = await rawCreateInvoiceWithHttpInfo(invoiceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvoiceDto',) as InvoiceDto;

    }
    return null;
  }

  /// Create a batch of invoices
  ///
  /// Returns the created invoices.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<InvoiceDto>] invoiceDto (required):
  Future<Response> rawCreateInvoicesWithHttpInfo(List<InvoiceDto> invoiceDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/batch';

    // ignore: prefer_final_locals
    Object? postBody = invoiceDto;

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

  /// Create a batch of invoices
  ///
  /// Returns the created invoices.
  ///
  /// Parameters:
  ///
  /// * [List<InvoiceDto>] invoiceDto (required):
  Future<List<InvoiceDto>?> rawCreateInvoices(List<InvoiceDto> invoiceDto,) async {
    final response = await rawCreateInvoicesWithHttpInfo(invoiceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList();

    }
    return null;
  }

  /// Deletes an invoice
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] invoiceId (required):
  Future<Response> rawDeleteInvoiceWithHttpInfo(String invoiceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/{invoiceId}'.replaceAll('{invoiceId}', invoiceId);

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

  /// Deletes an invoice
  ///
  /// Parameters:
  ///
  /// * [String] invoiceId (required):
  Future<DocIdentifier?> rawDeleteInvoice(String invoiceId,) async {
    final response = await rawDeleteInvoiceWithHttpInfo(invoiceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocIdentifier',) as DocIdentifier;

    }
    return null;
  }

  /// Filter invoices for the current user (HcParty)
  ///
  /// Returns a list of invoices along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FilterChain<InvoiceDto>] filterChainInvoice (required):
  Future<Response> rawFilterInvoicesByWithHttpInfo(FilterChain<InvoiceDto> filterChainInvoice,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/filter';

    // ignore: prefer_final_locals
    Object? postBody = filterChainInvoice;

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

  /// Filter invoices for the current user (HcParty)
  ///
  /// Returns a list of invoices along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Parameters:
  ///
  /// * [FilterChain<InvoiceDto>] filterChainInvoice (required):
  Future<List<InvoiceDto>?> rawFilterInvoicesBy(FilterChain<InvoiceDto> filterChainInvoice,) async {
    final response = await rawFilterInvoicesByWithHttpInfo(filterChainInvoice,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList();

    }
    return null;
  }

  /// Gets all invoices for author at date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [int] fromDate:
  ///
  /// * [int] toDate:
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> rawFindInvoicesByAuthorWithHttpInfo(String hcPartyId, { int? fromDate, int? toDate, String? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/byauthor/{hcPartyId}'.replaceAll('{hcPartyId}', hcPartyId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (fromDate != null) {
      queryParams.addAll(_queryParams('', 'fromDate', fromDate));
    }
    if (toDate != null) {
      queryParams.addAll(_queryParams('', 'toDate', toDate));
    }
    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
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

  /// Gets all invoices for author at date
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [int] fromDate:
  ///
  /// * [int] toDate:
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListInvoiceDto?> rawFindInvoicesByAuthor(String hcPartyId, { int? fromDate, int? toDate, String? startKey, String? startDocumentId, int? limit, }) async {
    final response = await rawFindInvoicesByAuthorWithHttpInfo(hcPartyId,  fromDate: fromDate, toDate: toDate, startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListInvoiceDto',) as PaginatedListInvoiceDto;

    }
    return null;
  }

  /// Gets an invoice
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] invoiceId (required):
  Future<Response> rawGetInvoiceWithHttpInfo(String invoiceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/{invoiceId}'.replaceAll('{invoiceId}', invoiceId);

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

  /// Gets an invoice
  ///
  /// Parameters:
  ///
  /// * [String] invoiceId (required):
  Future<InvoiceDto?> rawGetInvoice(String invoiceId,) async {
    final response = await rawGetInvoiceWithHttpInfo(invoiceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvoiceDto',) as InvoiceDto;

    }
    return null;
  }

  /// Gets an invoice
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> rawGetInvoicesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/byIds';

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

  /// Gets an invoice
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<InvoiceDto>?> rawGetInvoices(ListOfIdsDto listOfIdsDto,) async {
    final response = await rawGetInvoicesWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList();

    }
    return null;
  }

  /// Get the list of all used tarifications frequencies in invoices
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] minOccurences (required):
  Future<Response> rawGetTarificationsCodesOccurencesWithHttpInfo(int minOccurences,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/codes/{minOccurences}'.replaceAll('{minOccurences}', minOccurences.toString());

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

  /// Get the list of all used tarifications frequencies in invoices
  ///
  /// Parameters:
  ///
  /// * [int] minOccurences (required):
  Future<List<LabelledOccurenceDto>?> rawGetTarificationsCodesOccurences(int minOccurences,) async {
    final response = await rawGetTarificationsCodesOccurencesWithHttpInfo(minOccurences,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<LabelledOccurenceDto>') as List)
        .cast<LabelledOccurenceDto>()
        .toList();

    }
    return null;
  }

  /// Gets all invoices per status
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] status (required):
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  ///
  /// * [int] from:
  ///
  /// * [int] to:
  Future<Response> rawListAllHcpsByStatusWithHttpInfo(String status, ListOfIdsDto listOfIdsDto, { int? from, int? to, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/allHcpsByStatus/{status}'.replaceAll('{status}', status);

    // ignore: prefer_final_locals
    Object? postBody = listOfIdsDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
    }

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

  /// Gets all invoices per status
  ///
  /// Parameters:
  ///
  /// * [String] status (required):
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  ///
  /// * [int] from:
  ///
  /// * [int] to:
  Future<List<InvoiceDto>?> rawListAllHcpsByStatus(String status, ListOfIdsDto listOfIdsDto, { int? from, int? to, }) async {
    final response = await rawListAllHcpsByStatusWithHttpInfo(status, listOfIdsDto,  from: from, to: to, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList();

    }
    return null;
  }

  /// Gets all invoices for author at date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> rawListInvoicesByContactIdsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/byContacts';

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

  /// Gets all invoices for author at date
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<InvoiceDto>?> rawListInvoicesByContactIds(ListOfIdsDto listOfIdsDto,) async {
    final response = await rawListInvoicesByContactIdsWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList();

    }
    return null;
  }

  /// List invoices found By Healthcare Party and secret foreign patient keys.
  ///
  /// Keys have to delimited by coma
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<Response> rawListInvoicesByHCPartyAndPatientForeignKeysWithHttpInfo(String hcPartyId, String secretFKeys,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/byHcPartySecretForeignKeys';

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

  /// List invoices found By Healthcare Party and secret foreign patient keys.
  ///
  /// Keys have to delimited by coma
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<List<InvoiceDto>?> rawListInvoicesByHCPartyAndPatientForeignKeys(String hcPartyId, String secretFKeys,) async {
    final response = await rawListInvoicesByHCPartyAndPatientForeignKeysWithHttpInfo(hcPartyId, secretFKeys,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList();

    }
    return null;
  }

  /// List invoices by groupId
  ///
  /// Keys have to delimited by coma
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] groupId (required):
  Future<Response> rawListInvoicesByHcPartyAndGroupIdWithHttpInfo(String hcPartyId, String groupId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/byHcPartyGroupId/{hcPartyId}/{groupId}'.replaceAll('{hcPartyId}', hcPartyId).replaceAll('{groupId}', groupId);

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

  /// List invoices by groupId
  ///
  /// Keys have to delimited by coma
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] groupId (required):
  Future<List<InvoiceDto>?> rawListInvoicesByHcPartyAndGroupId(String hcPartyId, String groupId,) async {
    final response = await rawListInvoicesByHcPartyAndGroupIdWithHttpInfo(hcPartyId, groupId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList();

    }
    return null;
  }

  /// List invoices by type, sent or unsent
  ///
  /// Keys have to delimited by coma
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] sentMediumType (required):
  ///
  /// * [String] invoiceType (required):
  ///
  /// * [bool] sent (required):
  ///
  /// * [int] from:
  ///
  /// * [int] to:
  Future<Response> rawListInvoicesByHcPartySentMediumTypeInvoiceTypeSentDateWithHttpInfo(String hcPartyId, String sentMediumType, String invoiceType, bool sent, { int? from, int? to, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/byHcParty/{hcPartyId}/mediumType/{sentMediumType}/invoiceType/{invoiceType}/sent/{sent}'
        .replaceAll('{hcPartyId}', hcPartyId)
        .replaceAll('{sentMediumType}', sentMediumType)
        .replaceAll('{invoiceType}', invoiceType)
        .replaceAll('{sent}', sent.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
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

  /// List invoices by type, sent or unsent
  ///
  /// Keys have to delimited by coma
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] sentMediumType (required):
  ///
  /// * [String] invoiceType (required):
  ///
  /// * [bool] sent (required):
  ///
  /// * [int] from:
  ///
  /// * [int] to:
  Future<List<InvoiceDto>?> rawListInvoicesByHcPartySentMediumTypeInvoiceTypeSentDate(String hcPartyId, String sentMediumType, String invoiceType, bool sent, { int? from, int? to, }) async {
    final response = await rawListInvoicesByHcPartySentMediumTypeInvoiceTypeSentDateWithHttpInfo(hcPartyId, sentMediumType, invoiceType, sent,  from: from, to: to, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList();

    }
    return null;
  }

  /// Get all invoices by author, by sending mode, by status and by date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] sendingMode:
  ///
  /// * [String] status:
  ///
  /// * [int] from:
  ///
  /// * [int] to:
  Future<Response> rawListInvoicesByHcpartySendingModeStatusDateWithHttpInfo(String hcPartyId, { String? sendingMode, String? status, int? from, int? to, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/byHcpartySendingModeStatusDate/{hcPartyId}'
        .replaceAll('{hcPartyId}', hcPartyId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sendingMode != null) {
      queryParams.addAll(_queryParams('', 'sendingMode', sendingMode));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
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

  /// Get all invoices by author, by sending mode, by status and by date
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] sendingMode:
  ///
  /// * [String] status:
  ///
  /// * [int] from:
  ///
  /// * [int] to:
  Future<List<InvoiceDto>?> rawListInvoicesByHcpartySendingModeStatusDate(String hcPartyId, { String? sendingMode, String? status, int? from, int? to, }) async {
    final response = await rawListInvoicesByHcpartySendingModeStatusDateWithHttpInfo(hcPartyId,  sendingMode: sendingMode, status: status, from: from, to: to, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList();

    }
    return null;
  }

  /// Gets all invoices for author at date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] invoiceIds (required):
  Future<Response> rawListInvoicesByIdsWithHttpInfo(String invoiceIds,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/byIds/{invoiceIds}'.replaceAll('{invoiceIds}', invoiceIds);

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

  /// Gets all invoices for author at date
  ///
  /// Parameters:
  ///
  /// * [String] invoiceIds (required):
  Future<List<InvoiceDto>?> rawListInvoicesByIds(String invoiceIds,) async {
    final response = await rawListInvoicesByIdsWithHttpInfo(invoiceIds,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList();

    }
    return null;
  }

  /// Gets all invoices for author at date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] recipientIds (required):
  Future<Response> rawListInvoicesByRecipientsIdsWithHttpInfo(String recipientIds,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/to/{recipientIds}'.replaceAll('{recipientIds}', recipientIds);

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

  /// Gets all invoices for author at date
  ///
  /// Parameters:
  ///
  /// * [String] recipientIds (required):
  Future<List<InvoiceDto>?> rawListInvoicesByRecipientsIds(String recipientIds,) async {
    final response = await rawListInvoicesByRecipientsIdsWithHttpInfo(recipientIds,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList();

    }
    return null;
  }

  /// Gets all invoices for author at date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] serviceIds (required):
  Future<Response> rawListInvoicesByServiceIdsWithHttpInfo(String serviceIds,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/byServiceIds/{serviceIds}'.replaceAll('{serviceIds}', serviceIds);

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

  /// Gets all invoices for author at date
  ///
  /// Parameters:
  ///
  /// * [String] serviceIds (required):
  Future<List<InvoiceDto>?> rawListInvoicesByServiceIds(String serviceIds,) async {
    final response = await rawListInvoicesByServiceIdsWithHttpInfo(serviceIds,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList();

    }
    return null;
  }

  /// List helement stubs found By Healthcare Party and secret foreign keys.
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
  Future<Response> rawListInvoicesDelegationsStubsByHCPartyAndPatientForeignKeysWithHttpInfo(String hcPartyId, String secretFKeys,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/byHcPartySecretForeignKeys/delegations';

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

  /// List helement stubs found By Healthcare Party and secret foreign keys.
  ///
  /// Keys must be delimited by coma
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<List<IcureStubDto>?> rawListInvoicesDelegationsStubsByHCPartyAndPatientForeignKeys(String hcPartyId, String secretFKeys,) async {
    final response = await rawListInvoicesDelegationsStubsByHCPartyAndPatientForeignKeysWithHttpInfo(hcPartyId, secretFKeys,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
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

  /// Gets all invoices for author at date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userIds:
  Future<Response> rawListToInsurancesWithHttpInfo({ String? userIds, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/toInsurances';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (userIds != null) {
      queryParams.addAll(_queryParams('', 'userIds', userIds));
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

  /// Gets all invoices for author at date
  ///
  /// Parameters:
  ///
  /// * [String] userIds:
  Future<List<InvoiceDto>?> rawListToInsurances({ String? userIds, }) async {
    final response = await rawListToInsurancesWithHttpInfo( userIds: userIds, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList();

    }
    return null;
  }

  /// Gets all invoices for author at date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userIds:
  Future<Response> rawListToInsurancesUnsentWithHttpInfo({ String? userIds, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/toInsurances/unsent';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (userIds != null) {
      queryParams.addAll(_queryParams('', 'userIds', userIds));
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

  /// Gets all invoices for author at date
  ///
  /// Parameters:
  ///
  /// * [String] userIds:
  Future<List<InvoiceDto>?> rawListToInsurancesUnsent({ String? userIds, }) async {
    final response = await rawListToInsurancesUnsentWithHttpInfo( userIds: userIds, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList();

    }
    return null;
  }

  /// Gets all invoices for author at date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId:
  Future<Response> rawListToPatientsWithHttpInfo({ String? hcPartyId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/toPatients';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (hcPartyId != null) {
      queryParams.addAll(_queryParams('', 'hcPartyId', hcPartyId));
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

  /// Gets all invoices for author at date
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId:
  Future<List<InvoiceDto>?> rawListToPatients({ String? hcPartyId, }) async {
    final response = await rawListToPatientsWithHttpInfo( hcPartyId: hcPartyId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList();

    }
    return null;
  }

  /// Gets all invoices for author at date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId:
  Future<Response> rawListToPatientsUnsentWithHttpInfo({ String? hcPartyId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/toPatients/unsent';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (hcPartyId != null) {
      queryParams.addAll(_queryParams('', 'hcPartyId', hcPartyId));
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

  /// Gets all invoices for author at date
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId:
  Future<List<InvoiceDto>?> rawListToPatientsUnsent({ String? hcPartyId, }) async {
    final response = await rawListToPatientsUnsentWithHttpInfo( hcPartyId: hcPartyId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList();

    }
    return null;
  }

  /// Gets all invoices for author at date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] invoiceId (required):
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> rawMergeToWithHttpInfo(String invoiceId, ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/mergeTo/{invoiceId}'.replaceAll('{invoiceId}', invoiceId);

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

  /// Gets all invoices for author at date
  ///
  /// Parameters:
  ///
  /// * [String] invoiceId (required):
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<InvoiceDto?> rawMergeTo(String invoiceId, ListOfIdsDto listOfIdsDto,) async {
    final response = await rawMergeToWithHttpInfo(invoiceId, listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvoiceDto',) as InvoiceDto;

    }
    return null;
  }

  /// Modifies an invoice
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [InvoiceDto] invoiceDto (required):
  Future<Response> rawModifyInvoiceWithHttpInfo(InvoiceDto invoiceDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice';

    // ignore: prefer_final_locals
    Object? postBody = invoiceDto;

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

  /// Modifies an invoice
  ///
  /// Parameters:
  ///
  /// * [InvoiceDto] invoiceDto (required):
  Future<InvoiceDto?> rawModifyInvoice(InvoiceDto invoiceDto,) async {
    final response = await rawModifyInvoiceWithHttpInfo(invoiceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvoiceDto',) as InvoiceDto;

    }
    return null;
  }

  /// Modify a batch of invoices
  ///
  /// Returns the modified invoices.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<InvoiceDto>] invoiceDto (required):
  Future<Response> rawModifyInvoicesWithHttpInfo(List<InvoiceDto> invoiceDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/batch';

    // ignore: prefer_final_locals
    Object? postBody = invoiceDto;

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

  /// Modify a batch of invoices
  ///
  /// Returns the modified invoices.
  ///
  /// Parameters:
  ///
  /// * [List<InvoiceDto>] invoiceDto (required):
  Future<List<InvoiceDto>?> rawModifyInvoices(List<InvoiceDto> invoiceDto,) async {
    final response = await rawModifyInvoicesWithHttpInfo(invoiceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList();

    }
    return null;
  }

  /// Adds a delegation to a invoice
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] invoiceId (required):
  ///
  /// * [List<DelegationDto>] delegationDto (required):
  Future<Response> rawNewInvoiceDelegationsWithHttpInfo(String invoiceId, List<DelegationDto> delegationDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/{invoiceId}/delegate'.replaceAll('{invoiceId}', invoiceId);

    // ignore: prefer_final_locals
    Object? postBody = delegationDto;

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

  /// Adds a delegation to a invoice
  ///
  /// Parameters:
  ///
  /// * [String] invoiceId (required):
  ///
  /// * [List<DelegationDto>] delegationDto (required):
  Future<InvoiceDto?> rawNewInvoiceDelegations(String invoiceId, List<DelegationDto> delegationDto,) async {
    final response = await rawNewInvoiceDelegationsWithHttpInfo(invoiceId, delegationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvoiceDto',) as InvoiceDto;

    }
    return null;
  }

  /// Modifies an invoice
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [InvoiceDto] invoiceDto (required):
  Future<Response> rawReassignInvoiceWithHttpInfo(InvoiceDto invoiceDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/reassign';

    // ignore: prefer_final_locals
    Object? postBody = invoiceDto;

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

  /// Modifies an invoice
  ///
  /// Parameters:
  ///
  /// * [InvoiceDto] invoiceDto (required):
  Future<InvoiceDto?> rawReassignInvoice(InvoiceDto invoiceDto,) async {
    final response = await rawReassignInvoiceWithHttpInfo(invoiceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvoiceDto',) as InvoiceDto;

    }
    return null;
  }

  /// Remove an invoice of an user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [String] serviceId (required):
  ///
  /// * [String] secretFKeys (required):
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> rawRemoveCodesWithHttpInfo(String userId, String serviceId, String secretFKeys, List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/byauthor/{userId}/service/{serviceId}'.replaceAll('{userId}', userId).replaceAll('{serviceId}', serviceId);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'secretFKeys', secretFKeys));

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

  /// Remove an invoice of an user
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [String] serviceId (required):
  ///
  /// * [String] secretFKeys (required):
  ///
  /// * [List<String>] requestBody (required):
  Future<List<InvoiceDto>?> rawRemoveCodes(String userId, String serviceId, String secretFKeys, List<String> requestBody,) async {
    final response = await rawRemoveCodesWithHttpInfo(userId, serviceId, secretFKeys, requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList();

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
  Future<Response> rawSetInvoicesDelegationsWithHttpInfo(List<IcureStubDto> icureStubDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/delegations';

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
  Future<List<IcureStubDto>?> rawSetInvoicesDelegations(List<IcureStubDto> icureStubDto,) async {
    final response = await rawSetInvoicesDelegationsWithHttpInfo(icureStubDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
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

  /// Gets all invoices for author at date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] invoiceId (required):
  ///
  /// * [String] scheme (required):
  ///
  /// * [String] forcedValue (required):
  Future<Response> rawValidateWithHttpInfo(String invoiceId, String scheme, String forcedValue,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/invoice/validate/{invoiceId}'.replaceAll('{invoiceId}', invoiceId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'scheme', scheme));
      queryParams.addAll(_queryParams('', 'forcedValue', forcedValue));

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


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

  /// Gets all invoices for author at date
  ///
  /// Parameters:
  ///
  /// * [String] invoiceId (required):
  ///
  /// * [String] scheme (required):
  ///
  /// * [String] forcedValue (required):
  Future<InvoiceDto?> rawValidate(String invoiceId, String scheme, String forcedValue,) async {
    final response = await rawValidateWithHttpInfo(invoiceId, scheme, forcedValue,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvoiceDto',) as InvoiceDto;

    }
    return null;
  }
}
