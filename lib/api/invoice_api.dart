//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class InvoiceApi {
  InvoiceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> appendCodesWithHttpInfo(String userId, String type, String sentMediumType, String secretFKeys, List<InvoicingCodeDto> invoicingCodeDto, { String insuranceId, String invoiceId, int gracePeriod, }) async {
    // Verify required params are set.
    if (userId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userId');
    }
    if (type == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: type');
    }
    if (sentMediumType == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: sentMediumType');
    }
    if (secretFKeys == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: secretFKeys');
    }
    if (invoicingCodeDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: invoicingCodeDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/byauthor/{userId}/append/{type}/{sentMediumType}'
      .replaceAll('{userId}', userId)
      .replaceAll('{type}', type)
      .replaceAll('{sentMediumType}', sentMediumType);

    // ignore: prefer_final_locals
    Object postBody = invoicingCodeDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'secretFKeys', secretFKeys));
    if (insuranceId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'insuranceId', insuranceId));
    }
    if (invoiceId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'invoiceId', invoiceId));
    }
    if (gracePeriod != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'gracePeriod', gracePeriod));
    }

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
  Future<List<InvoiceDto>> appendCodes(String userId, String type, String sentMediumType, String secretFKeys, List<InvoicingCodeDto> invoicingCodeDto, { String insuranceId, String invoiceId, int gracePeriod, }) async {
    final response = await appendCodesWithHttpInfo(userId, type, sentMediumType, secretFKeys, invoicingCodeDto,  insuranceId: insuranceId, invoiceId: invoiceId, gracePeriod: gracePeriod, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList(growable: false);

    }
    return Future<List<InvoiceDto>>.value();
  }

  /// Creates an invoice
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [InvoiceDto] invoiceDto (required):
  Future<Response> createInvoiceWithHttpInfo(InvoiceDto invoiceDto,) async {
    // Verify required params are set.
    if (invoiceDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: invoiceDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice';

    // ignore: prefer_final_locals
    Object postBody = invoiceDto;

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

  /// Creates an invoice
  ///
  /// Parameters:
  ///
  /// * [InvoiceDto] invoiceDto (required):
  Future<InvoiceDto> createInvoice(InvoiceDto invoiceDto,) async {
    final response = await createInvoiceWithHttpInfo(invoiceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvoiceDto',) as InvoiceDto;
    
    }
    return Future<InvoiceDto>.value();
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
  Future<Response> createInvoicesWithHttpInfo(List<InvoiceDto> invoiceDto,) async {
    // Verify required params are set.
    if (invoiceDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: invoiceDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/batch';

    // ignore: prefer_final_locals
    Object postBody = invoiceDto;

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

  /// Create a batch of invoices
  ///
  /// Returns the created invoices.
  ///
  /// Parameters:
  ///
  /// * [List<InvoiceDto>] invoiceDto (required):
  Future<List<InvoiceDto>> createInvoices(List<InvoiceDto> invoiceDto,) async {
    final response = await createInvoicesWithHttpInfo(invoiceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList(growable: false);

    }
    return Future<List<InvoiceDto>>.value();
  }

  /// Deletes an invoice
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] invoiceId (required):
  Future<Response> deleteInvoiceWithHttpInfo(String invoiceId,) async {
    // Verify required params are set.
    if (invoiceId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: invoiceId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/{invoiceId}'
      .replaceAll('{invoiceId}', invoiceId);

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

  /// Deletes an invoice
  ///
  /// Parameters:
  ///
  /// * [String] invoiceId (required):
  Future<DocIdentifier> deleteInvoice(String invoiceId,) async {
    final response = await deleteInvoiceWithHttpInfo(invoiceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocIdentifier',) as DocIdentifier;
    
    }
    return Future<DocIdentifier>.value();
  }

  /// Filter invoices for the current user (HcParty)
  ///
  /// Returns a list of invoices along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FilterChainInvoice] filterChainInvoice (required):
  Future<Response> filterInvoicesByWithHttpInfo(FilterChainInvoice filterChainInvoice,) async {
    // Verify required params are set.
    if (filterChainInvoice == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: filterChainInvoice');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/filter';

    // ignore: prefer_final_locals
    Object postBody = filterChainInvoice;

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

  /// Filter invoices for the current user (HcParty)
  ///
  /// Returns a list of invoices along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Parameters:
  ///
  /// * [FilterChainInvoice] filterChainInvoice (required):
  Future<List<InvoiceDto>> filterInvoicesBy(FilterChainInvoice filterChainInvoice,) async {
    final response = await filterInvoicesByWithHttpInfo(filterChainInvoice,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList(growable: false);

    }
    return Future<List<InvoiceDto>>.value();
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
  Future<Response> findInvoicesByAuthorWithHttpInfo(String hcPartyId, { int fromDate, int toDate, String startKey, String startDocumentId, int limit, }) async {
    // Verify required params are set.
    if (hcPartyId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: hcPartyId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/byauthor/{hcPartyId}'
      .replaceAll('{hcPartyId}', hcPartyId);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (fromDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'fromDate', fromDate));
    }
    if (toDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'toDate', toDate));
    }
    if (startKey != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'startDocumentId', startDocumentId));
    }
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
  Future<PaginatedListInvoiceDto> findInvoicesByAuthor(String hcPartyId, { int fromDate, int toDate, String startKey, String startDocumentId, int limit, }) async {
    final response = await findInvoicesByAuthorWithHttpInfo(hcPartyId,  fromDate: fromDate, toDate: toDate, startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListInvoiceDto',) as PaginatedListInvoiceDto;
    
    }
    return Future<PaginatedListInvoiceDto>.value();
  }

  /// Gets an invoice
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] invoiceId (required):
  Future<Response> getInvoiceWithHttpInfo(String invoiceId,) async {
    // Verify required params are set.
    if (invoiceId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: invoiceId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/{invoiceId}'
      .replaceAll('{invoiceId}', invoiceId);

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

  /// Gets an invoice
  ///
  /// Parameters:
  ///
  /// * [String] invoiceId (required):
  Future<InvoiceDto> getInvoice(String invoiceId,) async {
    final response = await getInvoiceWithHttpInfo(invoiceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvoiceDto',) as InvoiceDto;
    
    }
    return Future<InvoiceDto>.value();
  }

  /// Gets an invoice
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> getInvoicesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // Verify required params are set.
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/byIds';

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

  /// Gets an invoice
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<InvoiceDto>> getInvoices(ListOfIdsDto listOfIdsDto,) async {
    final response = await getInvoicesWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList(growable: false);

    }
    return Future<List<InvoiceDto>>.value();
  }

  /// Get the list of all used tarifications frequencies in invoices
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] minOccurences (required):
  Future<Response> getTarificationsCodesOccurencesWithHttpInfo(int minOccurences,) async {
    // Verify required params are set.
    if (minOccurences == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: minOccurences');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/codes/{minOccurences}'
      .replaceAll('{minOccurences}', minOccurences.toString());

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

  /// Get the list of all used tarifications frequencies in invoices
  ///
  /// Parameters:
  ///
  /// * [int] minOccurences (required):
  Future<List<LabelledOccurenceDto>> getTarificationsCodesOccurences(int minOccurences,) async {
    final response = await getTarificationsCodesOccurencesWithHttpInfo(minOccurences,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<LabelledOccurenceDto>') as List)
        .cast<LabelledOccurenceDto>()
        .toList(growable: false);

    }
    return Future<List<LabelledOccurenceDto>>.value();
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
  Future<Response> listAllHcpsByStatusWithHttpInfo(String status, ListOfIdsDto listOfIdsDto, { int from, int to, }) async {
    // Verify required params are set.
    if (status == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: status');
    }
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/allHcpsByStatus/{status}'
      .replaceAll('{status}', status);

    // ignore: prefer_final_locals
    Object postBody = listOfIdsDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (from != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'to', to));
    }

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
  Future<List<InvoiceDto>> listAllHcpsByStatus(String status, ListOfIdsDto listOfIdsDto, { int from, int to, }) async {
    final response = await listAllHcpsByStatusWithHttpInfo(status, listOfIdsDto,  from: from, to: to, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList(growable: false);

    }
    return Future<List<InvoiceDto>>.value();
  }

  /// Gets all invoices for author at date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> listInvoicesByContactIdsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // Verify required params are set.
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/byContacts';

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

  /// Gets all invoices for author at date
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<InvoiceDto>> listInvoicesByContactIds(ListOfIdsDto listOfIdsDto,) async {
    final response = await listInvoicesByContactIdsWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList(growable: false);

    }
    return Future<List<InvoiceDto>>.value();
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
  Future<Response> listInvoicesByHCPartyAndPatientForeignKeysWithHttpInfo(String hcPartyId, String secretFKeys,) async {
    // Verify required params are set.
    if (hcPartyId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: hcPartyId');
    }
    if (secretFKeys == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: secretFKeys');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/byHcPartySecretForeignKeys';

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

  /// List invoices found By Healthcare Party and secret foreign patient keys.
  ///
  /// Keys have to delimited by coma
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<List<InvoiceDto>> listInvoicesByHCPartyAndPatientForeignKeys(String hcPartyId, String secretFKeys,) async {
    final response = await listInvoicesByHCPartyAndPatientForeignKeysWithHttpInfo(hcPartyId, secretFKeys,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList(growable: false);

    }
    return Future<List<InvoiceDto>>.value();
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
  Future<Response> listInvoicesByHcPartyAndGroupIdWithHttpInfo(String hcPartyId, String groupId,) async {
    // Verify required params are set.
    if (hcPartyId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: hcPartyId');
    }
    if (groupId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: groupId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/byHcPartyGroupId/{hcPartyId}/{groupId}'
      .replaceAll('{hcPartyId}', hcPartyId)
      .replaceAll('{groupId}', groupId);

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

  /// List invoices by groupId
  ///
  /// Keys have to delimited by coma
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] groupId (required):
  Future<List<InvoiceDto>> listInvoicesByHcPartyAndGroupId(String hcPartyId, String groupId,) async {
    final response = await listInvoicesByHcPartyAndGroupIdWithHttpInfo(hcPartyId, groupId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList(growable: false);

    }
    return Future<List<InvoiceDto>>.value();
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
  Future<Response> listInvoicesByHcPartySentMediumTypeInvoiceTypeSentDateWithHttpInfo(String hcPartyId, String sentMediumType, String invoiceType, bool sent, { int from, int to, }) async {
    // Verify required params are set.
    if (hcPartyId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: hcPartyId');
    }
    if (sentMediumType == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: sentMediumType');
    }
    if (invoiceType == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: invoiceType');
    }
    if (sent == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: sent');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/byHcParty/{hcPartyId}/mediumType/{sentMediumType}/invoiceType/{invoiceType}/sent/{sent}'
      .replaceAll('{hcPartyId}', hcPartyId)
      .replaceAll('{sentMediumType}', sentMediumType)
      .replaceAll('{invoiceType}', invoiceType)
      .replaceAll('{sent}', sent.toString());

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (from != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'to', to));
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
  Future<List<InvoiceDto>> listInvoicesByHcPartySentMediumTypeInvoiceTypeSentDate(String hcPartyId, String sentMediumType, String invoiceType, bool sent, { int from, int to, }) async {
    final response = await listInvoicesByHcPartySentMediumTypeInvoiceTypeSentDateWithHttpInfo(hcPartyId, sentMediumType, invoiceType, sent,  from: from, to: to, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList(growable: false);

    }
    return Future<List<InvoiceDto>>.value();
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
  Future<Response> listInvoicesByHcpartySendingModeStatusDateWithHttpInfo(String hcPartyId, { String sendingMode, String status, int from, int to, }) async {
    // Verify required params are set.
    if (hcPartyId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: hcPartyId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/byHcpartySendingModeStatusDate/{hcPartyId}'
      .replaceAll('{hcPartyId}', hcPartyId);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sendingMode != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sendingMode', sendingMode));
    }
    if (status != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'status', status));
    }
    if (from != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'to', to));
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
  Future<List<InvoiceDto>> listInvoicesByHcpartySendingModeStatusDate(String hcPartyId, { String sendingMode, String status, int from, int to, }) async {
    final response = await listInvoicesByHcpartySendingModeStatusDateWithHttpInfo(hcPartyId,  sendingMode: sendingMode, status: status, from: from, to: to, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList(growable: false);

    }
    return Future<List<InvoiceDto>>.value();
  }

  /// Gets all invoices for author at date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] invoiceIds (required):
  Future<Response> listInvoicesByIdsWithHttpInfo(String invoiceIds,) async {
    // Verify required params are set.
    if (invoiceIds == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: invoiceIds');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/byIds/{invoiceIds}'
      .replaceAll('{invoiceIds}', invoiceIds);

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

  /// Gets all invoices for author at date
  ///
  /// Parameters:
  ///
  /// * [String] invoiceIds (required):
  Future<List<InvoiceDto>> listInvoicesByIds(String invoiceIds,) async {
    final response = await listInvoicesByIdsWithHttpInfo(invoiceIds,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList(growable: false);

    }
    return Future<List<InvoiceDto>>.value();
  }

  /// Gets all invoices for author at date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] recipientIds (required):
  Future<Response> listInvoicesByRecipientsIdsWithHttpInfo(String recipientIds,) async {
    // Verify required params are set.
    if (recipientIds == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: recipientIds');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/to/{recipientIds}'
      .replaceAll('{recipientIds}', recipientIds);

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

  /// Gets all invoices for author at date
  ///
  /// Parameters:
  ///
  /// * [String] recipientIds (required):
  Future<List<InvoiceDto>> listInvoicesByRecipientsIds(String recipientIds,) async {
    final response = await listInvoicesByRecipientsIdsWithHttpInfo(recipientIds,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList(growable: false);

    }
    return Future<List<InvoiceDto>>.value();
  }

  /// Gets all invoices for author at date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] serviceIds (required):
  Future<Response> listInvoicesByServiceIdsWithHttpInfo(String serviceIds,) async {
    // Verify required params are set.
    if (serviceIds == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: serviceIds');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/byServiceIds/{serviceIds}'
      .replaceAll('{serviceIds}', serviceIds);

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

  /// Gets all invoices for author at date
  ///
  /// Parameters:
  ///
  /// * [String] serviceIds (required):
  Future<List<InvoiceDto>> listInvoicesByServiceIds(String serviceIds,) async {
    final response = await listInvoicesByServiceIdsWithHttpInfo(serviceIds,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList(growable: false);

    }
    return Future<List<InvoiceDto>>.value();
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
  Future<Response> listInvoicesDelegationsStubsByHCPartyAndPatientForeignKeysWithHttpInfo(String hcPartyId, String secretFKeys,) async {
    // Verify required params are set.
    if (hcPartyId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: hcPartyId');
    }
    if (secretFKeys == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: secretFKeys');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/byHcPartySecretForeignKeys/delegations';

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

  /// List helement stubs found By Healthcare Party and secret foreign keys.
  ///
  /// Keys must be delimited by coma
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<List<IcureStubDto>> listInvoicesDelegationsStubsByHCPartyAndPatientForeignKeys(String hcPartyId, String secretFKeys,) async {
    final response = await listInvoicesDelegationsStubsByHCPartyAndPatientForeignKeysWithHttpInfo(hcPartyId, secretFKeys,);
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

  /// Gets all invoices for author at date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userIds:
  Future<Response> listToInsurancesWithHttpInfo({ String userIds, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/toInsurances';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (userIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'userIds', userIds));
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

  /// Gets all invoices for author at date
  ///
  /// Parameters:
  ///
  /// * [String] userIds:
  Future<List<InvoiceDto>> listToInsurances({ String userIds, }) async {
    final response = await listToInsurancesWithHttpInfo( userIds: userIds, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList(growable: false);

    }
    return Future<List<InvoiceDto>>.value();
  }

  /// Gets all invoices for author at date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userIds:
  Future<Response> listToInsurancesUnsentWithHttpInfo({ String userIds, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/toInsurances/unsent';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (userIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'userIds', userIds));
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

  /// Gets all invoices for author at date
  ///
  /// Parameters:
  ///
  /// * [String] userIds:
  Future<List<InvoiceDto>> listToInsurancesUnsent({ String userIds, }) async {
    final response = await listToInsurancesUnsentWithHttpInfo( userIds: userIds, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList(growable: false);

    }
    return Future<List<InvoiceDto>>.value();
  }

  /// Gets all invoices for author at date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId:
  Future<Response> listToPatientsWithHttpInfo({ String hcPartyId, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/toPatients';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (hcPartyId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'hcPartyId', hcPartyId));
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

  /// Gets all invoices for author at date
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId:
  Future<List<InvoiceDto>> listToPatients({ String hcPartyId, }) async {
    final response = await listToPatientsWithHttpInfo( hcPartyId: hcPartyId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList(growable: false);

    }
    return Future<List<InvoiceDto>>.value();
  }

  /// Gets all invoices for author at date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId:
  Future<Response> listToPatientsUnsentWithHttpInfo({ String hcPartyId, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/toPatients/unsent';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (hcPartyId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'hcPartyId', hcPartyId));
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

  /// Gets all invoices for author at date
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId:
  Future<List<InvoiceDto>> listToPatientsUnsent({ String hcPartyId, }) async {
    final response = await listToPatientsUnsentWithHttpInfo( hcPartyId: hcPartyId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList(growable: false);

    }
    return Future<List<InvoiceDto>>.value();
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
  Future<Response> mergeToWithHttpInfo(String invoiceId, ListOfIdsDto listOfIdsDto,) async {
    // Verify required params are set.
    if (invoiceId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: invoiceId');
    }
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/mergeTo/{invoiceId}'
      .replaceAll('{invoiceId}', invoiceId);

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

  /// Gets all invoices for author at date
  ///
  /// Parameters:
  ///
  /// * [String] invoiceId (required):
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<InvoiceDto> mergeTo(String invoiceId, ListOfIdsDto listOfIdsDto,) async {
    final response = await mergeToWithHttpInfo(invoiceId, listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvoiceDto',) as InvoiceDto;
    
    }
    return Future<InvoiceDto>.value();
  }

  /// Modifies an invoice
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [InvoiceDto] invoiceDto (required):
  Future<Response> modifyInvoiceWithHttpInfo(InvoiceDto invoiceDto,) async {
    // Verify required params are set.
    if (invoiceDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: invoiceDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice';

    // ignore: prefer_final_locals
    Object postBody = invoiceDto;

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

  /// Modifies an invoice
  ///
  /// Parameters:
  ///
  /// * [InvoiceDto] invoiceDto (required):
  Future<InvoiceDto> modifyInvoice(InvoiceDto invoiceDto,) async {
    final response = await modifyInvoiceWithHttpInfo(invoiceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvoiceDto',) as InvoiceDto;
    
    }
    return Future<InvoiceDto>.value();
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
  Future<Response> modifyInvoicesWithHttpInfo(List<InvoiceDto> invoiceDto,) async {
    // Verify required params are set.
    if (invoiceDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: invoiceDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/batch';

    // ignore: prefer_final_locals
    Object postBody = invoiceDto;

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

  /// Modify a batch of invoices
  ///
  /// Returns the modified invoices.
  ///
  /// Parameters:
  ///
  /// * [List<InvoiceDto>] invoiceDto (required):
  Future<List<InvoiceDto>> modifyInvoices(List<InvoiceDto> invoiceDto,) async {
    final response = await modifyInvoicesWithHttpInfo(invoiceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList(growable: false);

    }
    return Future<List<InvoiceDto>>.value();
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
  Future<Response> newInvoiceDelegationsWithHttpInfo(String invoiceId, List<DelegationDto> delegationDto,) async {
    // Verify required params are set.
    if (invoiceId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: invoiceId');
    }
    if (delegationDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: delegationDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/{invoiceId}/delegate'
      .replaceAll('{invoiceId}', invoiceId);

    // ignore: prefer_final_locals
    Object postBody = delegationDto;

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

  /// Adds a delegation to a invoice
  ///
  /// Parameters:
  ///
  /// * [String] invoiceId (required):
  ///
  /// * [List<DelegationDto>] delegationDto (required):
  Future<InvoiceDto> newInvoiceDelegations(String invoiceId, List<DelegationDto> delegationDto,) async {
    final response = await newInvoiceDelegationsWithHttpInfo(invoiceId, delegationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvoiceDto',) as InvoiceDto;
    
    }
    return Future<InvoiceDto>.value();
  }

  /// Modifies an invoice
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [InvoiceDto] invoiceDto (required):
  Future<Response> reassignInvoiceWithHttpInfo(InvoiceDto invoiceDto,) async {
    // Verify required params are set.
    if (invoiceDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: invoiceDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/reassign';

    // ignore: prefer_final_locals
    Object postBody = invoiceDto;

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

  /// Modifies an invoice
  ///
  /// Parameters:
  ///
  /// * [InvoiceDto] invoiceDto (required):
  Future<InvoiceDto> reassignInvoice(InvoiceDto invoiceDto,) async {
    final response = await reassignInvoiceWithHttpInfo(invoiceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvoiceDto',) as InvoiceDto;
    
    }
    return Future<InvoiceDto>.value();
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
  Future<Response> removeCodesWithHttpInfo(String userId, String serviceId, String secretFKeys, List<String> requestBody,) async {
    // Verify required params are set.
    if (userId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userId');
    }
    if (serviceId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: serviceId');
    }
    if (secretFKeys == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: secretFKeys');
    }
    if (requestBody == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: requestBody');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/byauthor/{userId}/service/{serviceId}'
      .replaceAll('{userId}', userId)
      .replaceAll('{serviceId}', serviceId);

    // ignore: prefer_final_locals
    Object postBody = requestBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'secretFKeys', secretFKeys));

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
  Future<List<InvoiceDto>> removeCodes(String userId, String serviceId, String secretFKeys, List<String> requestBody,) async {
    final response = await removeCodesWithHttpInfo(userId, serviceId, secretFKeys, requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList(growable: false);

    }
    return Future<List<InvoiceDto>>.value();
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
  Future<Response> setInvoicesDelegationsWithHttpInfo(List<IcureStubDto> icureStubDto,) async {
    // Verify required params are set.
    if (icureStubDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: icureStubDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/delegations';

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
  Future<List<IcureStubDto>> setInvoicesDelegations(List<IcureStubDto> icureStubDto,) async {
    final response = await setInvoicesDelegationsWithHttpInfo(icureStubDto,);
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
  Future<Response> validateWithHttpInfo(String invoiceId, String scheme, String forcedValue,) async {
    // Verify required params are set.
    if (invoiceId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: invoiceId');
    }
    if (scheme == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: scheme');
    }
    if (forcedValue == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: forcedValue');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/invoice/validate/{invoiceId}'
      .replaceAll('{invoiceId}', invoiceId);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'scheme', scheme));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'forcedValue', forcedValue));

    const authNames = <String>[];
    const contentTypes = <String>[];


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

  /// Gets all invoices for author at date
  ///
  /// Parameters:
  ///
  /// * [String] invoiceId (required):
  ///
  /// * [String] scheme (required):
  ///
  /// * [String] forcedValue (required):
  Future<InvoiceDto> validate(String invoiceId, String scheme, String forcedValue,) async {
    final response = await validateWithHttpInfo(invoiceId, scheme, forcedValue,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvoiceDto',) as InvoiceDto;
    
    }
    return Future<InvoiceDto>.value();
  }
}
