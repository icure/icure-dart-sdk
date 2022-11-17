//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class ContactApi {
  ContactApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Close contacts for Healthcare Party and secret foreign keys.
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
  Future<Response> rawCloseForHCPartyPatientForeignKeysWithHttpInfo(String hcPartyId, String secretFKeys,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/byHcPartySecretForeignKeys/close';

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
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Close contacts for Healthcare Party and secret foreign keys.
  ///
  /// Keys must be delimited by coma
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<List<ContactDto>?> rawCloseForHCPartyPatientForeignKeys(String hcPartyId, String secretFKeys,) async {
    final response = await rawCloseForHCPartyPatientForeignKeysWithHttpInfo(hcPartyId, secretFKeys,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ContactDto>') as List)
        .cast<ContactDto>()
        .toList();

    }
    return null;
  }

  /// Create a contact with the current user
  ///
  /// Returns an instance of created contact.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ContactDto] contactDto (required):
  Future<Response> rawCreateContactWithHttpInfo(ContactDto contactDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact';

    // ignore: prefer_final_locals
    Object? postBody = contactDto;

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

  /// Create a contact with the current user
  ///
  /// Returns an instance of created contact.
  ///
  /// Parameters:
  ///
  /// * [ContactDto] contactDto (required):
  Future<ContactDto?> rawCreateContact(ContactDto contactDto,) async {
    final response = await rawCreateContactWithHttpInfo(contactDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContactDto',) as ContactDto;

    }
    return null;
  }

  /// Create a batch of contacts
  ///
  /// Returns the modified contacts.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<ContactDto>] contactDto (required):
  Future<Response> rawCreateContactsWithHttpInfo(List<ContactDto> contactDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/batch';

    // ignore: prefer_final_locals
    Object? postBody = contactDto;

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

  /// Create a batch of contacts
  ///
  /// Returns the modified contacts.
  ///
  /// Parameters:
  ///
  /// * [List<ContactDto>] contactDto (required):
  Future<List<ContactDto>?> rawCreateContacts(List<ContactDto> contactDto,) async {
    final response = await rawCreateContactsWithHttpInfo(contactDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ContactDto>') as List)
        .cast<ContactDto>()
        .toList();

    }
    return null;
  }

  /// Delete contacts.
  ///
  /// Response is a set containing the ID's of deleted contacts.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> rawDeleteContactsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/delete/batch';

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

  /// Delete contacts.
  ///
  /// Response is a set containing the ID's of deleted contacts.
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>?> rawDeleteContacts(ListOfIdsDto listOfIdsDto,) async {
    final response = await rawDeleteContactsWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
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

  /// List contacts for the current user (HcParty) or the given hcparty in the filter
  ///
  /// Returns a list of contacts along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FilterChain<ContactDto>] filterChainContact (required):
  ///
  /// * [String] startDocumentId:
  ///   A Contact document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> rawFilterContactsByWithHttpInfo(FilterChain<ContactDto> filterChainContact, { String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/filter';

    // ignore: prefer_final_locals
    Object? postBody = filterChainContact;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// List contacts for the current user (HcParty) or the given hcparty in the filter
  ///
  /// Returns a list of contacts along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Parameters:
  ///
  /// * [FilterChain<ContactDto>] filterChainContact (required):
  ///
  /// * [String] startDocumentId:
  ///   A Contact document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListContactDto?> rawFilterContactsBy(
    FilterChain<ContactDto> filterChainContact, {
    String? startDocumentId,
    int? limit,
  }) async {
    final response = await rawFilterContactsByWithHttpInfo(
      filterChainContact,
      startDocumentId: startDocumentId,
      limit: limit,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'PaginatedListContactDto',
      ) as PaginatedListContactDto;
    }
    return null;
  }

  /// List services for the current user (HcParty) or the given hcparty in the filter
  ///
  /// Returns a list of contacts along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FilterChain<ServiceDto>] filterChainService (required):
  ///
  /// * [String] startDocumentId:
  ///   A Contact document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> rawFilterServicesByWithHttpInfo(FilterChain<ServiceDto> filterChainService, { String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/service/filter';

    // ignore: prefer_final_locals
    Object? postBody = filterChainService;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// List services for the current user (HcParty) or the given hcparty in the filter
  ///
  /// Returns a list of contacts along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Parameters:
  ///
  /// * [FilterChain<ServiceDto>] filterChainService (required):
  ///
  /// * [String] startDocumentId:
  ///   A Contact document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListServiceDto?> rawFilterServicesBy(FilterChain<ServiceDto> filterChainService, { String? startDocumentId, int? limit,}) async {
    final response = await rawFilterServicesByWithHttpInfo(filterChainService, startDocumentId: startDocumentId, limit: limit,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListServiceDto',) as PaginatedListServiceDto;

    }
    return null;
  }

  /// List contacts by opening date parties with(out) pagination
  ///
  /// Returns a list of contacts.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startKey (required):
  ///   The contact openingDate
  ///
  /// * [int] endKey (required):
  ///   The contact max openingDate
  ///
  /// * [String] hcpartyid (required):
  ///   hcpartyid
  ///
  /// * [String] startDocumentId:
  ///   A contact party document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> rawFindContactsByOpeningDateWithHttpInfo(int startKey, int endKey, String hcpartyid, { String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/byOpeningDate';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'startKey', startKey));
    queryParams.addAll(_queryParams('', 'endKey', endKey));
    queryParams.addAll(_queryParams('', 'hcpartyid', hcpartyid));
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

  /// List contacts by opening date parties with(out) pagination
  ///
  /// Returns a list of contacts.
  ///
  /// Parameters:
  ///
  /// * [int] startKey (required):
  ///   The contact openingDate
  ///
  /// * [int] endKey (required):
  ///   The contact max openingDate
  ///
  /// * [String] hcpartyid (required):
  ///   hcpartyid
  ///
  /// * [String] startDocumentId:
  ///   A contact party document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListContactDto?> rawFindContactsByOpeningDate(
    int startKey,
    int endKey,
    String hcpartyid, {
    String? startDocumentId,
    int? limit,
  }) async {
    final response = await rawFindContactsByOpeningDateWithHttpInfo(
      startKey,
      endKey,
      hcpartyid,
      startDocumentId: startDocumentId,
      limit: limit,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'PaginatedListContactDto',
      ) as PaginatedListContactDto;
    }
    return null;
  }

  /// Get a contact
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] contactId (required):
  Future<Response> rawGetContactWithHttpInfo(String contactId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/{contactId}'
        .replaceAll('{contactId}', contactId);

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

  /// Get a contact
  ///
  /// Parameters:
  ///
  /// * [String] contactId (required):
  Future<ContactDto?> rawGetContact(String contactId,) async {
    final response = await rawGetContactWithHttpInfo(contactId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContactDto',) as ContactDto;
    }
    return null;
  }

  /// Get contacts
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> rawGetContactsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/byIds';

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

  /// Get contacts
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<ContactDto>?> rawGetContacts(
    ListOfIdsDto listOfIdsDto,
  ) async {
    final response = await rawGetContactsWithHttpInfo(
      listOfIdsDto,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ContactDto>') as List).cast<ContactDto>()
        .toList();

    }
    return null;
  }

  /// Get an empty content
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> rawGetEmptyContentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/service/content/empty';

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

  /// Get an empty content
  Future<ContentDto?> rawGetEmptyContent() async {
    final response = await rawGetEmptyContentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContentDto',) as ContentDto;

    }
    return null;
  }

  /// Get the list of all used codes frequencies in services
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] codeType (required):
  ///
  /// * [int] minOccurences (required):
  Future<Response> rawGetServiceCodesOccurencesWithHttpInfo(String codeType, int minOccurences,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/service/codes/{codeType}/{minOccurences}'
        .replaceAll('{codeType}', codeType)
        .replaceAll('{minOccurences}', minOccurences.toString());

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

  /// Get the list of all used codes frequencies in services
  ///
  /// Parameters:
  ///
  /// * [String] codeType (required):
  ///
  /// * [int] minOccurences (required):
  Future<List<LabelledOccurenceDto>?> rawGetServiceCodesOccurences(String codeType, int minOccurences,) async {
    final response = await rawGetServiceCodesOccurencesWithHttpInfo(codeType, minOccurences,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
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

  /// List services with provided ids
  ///
  /// Returns a list of services
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> rawGetServicesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/service/byIds';

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

  /// List services with provided ids
  ///
  /// Returns a list of services
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<ServiceDto>?> rawGetServices(ListOfIdsDto listOfIdsDto,) async {
    final response = await rawGetServicesWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ServiceDto>') as List)
        .cast<ServiceDto>()
        .toList();

    }
    return null;
  }

  /// List services linked to provided ids
  ///
  /// Returns a list of services
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  ///
  /// * [String] linkType:
  ///   The type of the link
  Future<Response> rawGetServicesLinkedToWithHttpInfo(ListOfIdsDto listOfIdsDto, { String? linkType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/service/linkedTo';

    // ignore: prefer_final_locals
    Object? postBody = listOfIdsDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (linkType != null) {
      queryParams.addAll(_queryParams('', 'linkType', linkType));
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

  /// List services linked to provided ids
  ///
  /// Returns a list of services
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  ///
  /// * [String] linkType:
  ///   The type of the link
  Future<List<ServiceDto>?> rawGetServicesLinkedTo(ListOfIdsDto listOfIdsDto, { String? linkType, }) async {
    final response = await rawGetServicesLinkedToWithHttpInfo(listOfIdsDto,  linkType: linkType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ServiceDto>') as List)
        .cast<ServiceDto>()
        .toList();

    }
    return null;
  }

  /// List contacts found By Healthcare Party and service Id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] serviceId (required):
  Future<Response> rawListContactByHCPartyServiceIdWithHttpInfo(String hcPartyId, String serviceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/byHcPartyServiceId';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'hcPartyId', hcPartyId));
    queryParams.addAll(_queryParams('', 'serviceId', serviceId));

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

  /// List contacts found By Healthcare Party and service Id.
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] serviceId (required):
  Future<List<ContactDto>?> rawListContactByHCPartyServiceId(String hcPartyId, String serviceId,) async {
    final response = await rawListContactByHCPartyServiceIdWithHttpInfo(hcPartyId, serviceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ContactDto>') as List)
        .cast<ContactDto>()
        .toList();

    }
    return null;
  }

  /// List contacts found By externalId.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] externalId (required):
  Future<Response> rawListContactsByExternalIdWithHttpInfo(String externalId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/byExternalId';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'externalId', externalId));

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

  /// List contacts found By externalId.
  ///
  /// Parameters:
  ///
  /// * [String] externalId (required):
  Future<List<ContactDto>?> rawListContactsByExternalId(String externalId,) async {
    final response = await rawListContactsByExternalIdWithHttpInfo(externalId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ContactDto>') as List)
        .cast<ContactDto>()
        .toList();

    }
    return null;
  }

  /// List contacts found By Healthcare Party and form Id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] formId (required):
  Future<Response> rawListContactsByHCPartyAndFormIdWithHttpInfo(String hcPartyId, String formId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/byHcPartyFormId';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'hcPartyId', hcPartyId));
    queryParams.addAll(_queryParams('', 'formId', formId));

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

  /// List contacts found By Healthcare Party and form Id.
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] formId (required):
  Future<List<ContactDto>?> rawListContactsByHCPartyAndFormId(String hcPartyId, String formId,) async {
    final response = await rawListContactsByHCPartyAndFormIdWithHttpInfo(hcPartyId, formId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ContactDto>') as List)
        .cast<ContactDto>()
        .toList();

    }
    return null;
  }

  /// List contacts found By Healthcare Party and form Id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> rawListContactsByHCPartyAndFormIdsWithHttpInfo(String hcPartyId, ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/byHcPartyFormIds';

    // ignore: prefer_final_locals
    Object? postBody = listOfIdsDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'hcPartyId', hcPartyId));

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

  /// List contacts found By Healthcare Party and form Id.
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<ContactDto>?> rawListContactsByHCPartyAndFormIds(String hcPartyId, ListOfIdsDto listOfIdsDto,) async {
    final response = await rawListContactsByHCPartyAndFormIdsWithHttpInfo(hcPartyId, listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ContactDto>') as List)
        .cast<ContactDto>()
        .toList();

    }
    return null;
  }

  /// List contacts found By Healthcare Party and Patient foreign keys.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> rawListContactsByHCPartyAndPatientForeignKeysWithHttpInfo(String hcPartyId, ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/byHcPartyPatientForeignKeys';

    // ignore: prefer_final_locals
    Object? postBody = listOfIdsDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'hcPartyId', hcPartyId));

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

  /// List contacts found By Healthcare Party and Patient foreign keys.
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<ContactDto>?> rawListContactsByHCPartyAndPatientForeignKeys(String hcPartyId, ListOfIdsDto listOfIdsDto,) async {
    final response = await rawListContactsByHCPartyAndPatientForeignKeysWithHttpInfo(hcPartyId, listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ContactDto>') as List)
        .cast<ContactDto>()
        .toList();

    }
    return null;
  }

  /// List contacts found By Healthcare Party and secret foreign keys.
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
  ///
  /// * [String] planOfActionsIds:
  ///
  /// * [bool] skipClosedContacts:
  Future<Response> rawListContactsByHCPartyAndPatientSecretFKeysWithHttpInfo(String hcPartyId, String secretFKeys, { String? planOfActionsIds, bool? skipClosedContacts, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/byHcPartySecretForeignKeys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'hcPartyId', hcPartyId));
    queryParams.addAll(_queryParams('', 'secretFKeys', secretFKeys));
    if (planOfActionsIds != null) {
      queryParams.addAll(_queryParams('', 'planOfActionsIds', planOfActionsIds));
    }
    if (skipClosedContacts != null) {
      queryParams.addAll(_queryParams('', 'skipClosedContacts', skipClosedContacts));
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

  /// List contacts found By Healthcare Party and secret foreign keys.
  ///
  /// Keys must be delimited by coma
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  ///
  /// * [String] planOfActionsIds:
  ///
  /// * [bool] skipClosedContacts:
  Future<List<ContactDto>?> rawListContactsByHCPartyAndPatientSecretFKeys(String hcPartyId, String secretFKeys, { String? planOfActionsIds, bool? skipClosedContacts, }) async {
    final response = await rawListContactsByHCPartyAndPatientSecretFKeysWithHttpInfo(hcPartyId, secretFKeys,  planOfActionsIds: planOfActionsIds, skipClosedContacts: skipClosedContacts, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ContactDto>') as List)
        .cast<ContactDto>()
        .toList();

    }
    return null;
  }

  /// List contacts found By Healthcare Party and secret foreign keys.
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
  Future<Response> rawListContactsDelegationsStubsByHCPartyAndPatientForeignKeysWithHttpInfo(String hcPartyId, String secretFKeys,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/byHcPartySecretForeignKeys/delegations';

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

  /// List contacts found By Healthcare Party and secret foreign keys.
  ///
  /// Keys must be delimited by coma
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<List<IcureStubDto>?> rawListContactsDelegationsStubsByHCPartyAndPatientForeignKeys(String hcPartyId, String secretFKeys,) async {
    final response = await rawListContactsDelegationsStubsByHCPartyAndPatientForeignKeysWithHttpInfo(hcPartyId, secretFKeys,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
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

  /// List services by related association id
  ///
  /// Returns a list of services
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] associationId (required):
  Future<Response> rawListServicesByAssociationIdWithHttpInfo(String associationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/service/associationId';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'associationId', associationId));

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

  /// List services by related association id
  ///
  /// Returns a list of services
  ///
  /// Parameters:
  ///
  /// * [String] associationId (required):
  Future<List<ServiceDto>?> rawListServicesByAssociationId(String associationId,) async {
    final response = await rawListServicesByAssociationIdWithHttpInfo(associationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ServiceDto>') as List)
        .cast<ServiceDto>()
        .toList();

    }
    return null;
  }

  /// List services linked to a health element
  ///
  /// Returns the list of services linked to the provided health element id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] healthElementId (required):
  Future<Response> rawListServicesByHealthElementIdWithHttpInfo(String healthElementId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/service/healthElementId/{healthElementId}'.replaceAll('{healthElementId}', healthElementId);

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

  /// List services linked to a health element
  ///
  /// Returns the list of services linked to the provided health element id
  ///
  /// Parameters:
  ///
  /// * [String] healthElementId (required):
  Future<List<ServiceDto>?> rawListServicesByHealthElementId(String healthElementId,) async {
    final response = await rawListServicesByHealthElementIdWithHttpInfo(healthElementId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ServiceDto>') as List)
        .cast<ServiceDto>()
        .toList();
    }
    return null;
  }

  /// Get ids of contacts matching the provided filter for the current user (HcParty)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AbstractFilterDto<ContactDto>] abstractFilterDtoContact (required):
  Future<Response> rawMatchContactsByWithHttpInfo(
    AbstractFilterDto<ContactDto> abstractFilterDtoContact,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/match';

    // ignore: prefer_final_locals
    Object? postBody = abstractFilterDtoContact;

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

  /// Get ids of contacts matching the provided filter for the current user (HcParty)
  ///
  /// Parameters:
  ///
  /// * [AbstractFilterDto<ContactDto>] abstractFilterDtoContact (required):
  Future<List<String>?> rawMatchContactsBy(
    AbstractFilterDto<ContactDto> abstractFilterDtoContact,
  ) async {
    final response = await rawMatchContactsByWithHttpInfo(
      abstractFilterDtoContact,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List).cast<String>()
        .toList();

    }
    return null;
  }

  /// Modify a contact
  ///
  /// Returns the modified contact.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ContactDto] contactDto (required):
  Future<Response> rawModifyContactWithHttpInfo(ContactDto contactDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact';

    // ignore: prefer_final_locals
    Object? postBody = contactDto;

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

  /// Modify a contact
  ///
  /// Returns the modified contact.
  ///
  /// Parameters:
  ///
  /// * [ContactDto] contactDto (required):
  Future<ContactDto?> rawModifyContact(ContactDto contactDto,) async {
    final response = await rawModifyContactWithHttpInfo(contactDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContactDto',) as ContactDto;

    }
    return null;
  }

  /// Modify a batch of contacts
  ///
  /// Returns the modified contacts.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<ContactDto>] contactDto (required):
  Future<Response> rawModifyContactsWithHttpInfo(List<ContactDto> contactDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/batch';

    // ignore: prefer_final_locals
    Object? postBody = contactDto;

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

  /// Modify a batch of contacts
  ///
  /// Returns the modified contacts.
  ///
  /// Parameters:
  ///
  /// * [List<ContactDto>] contactDto (required):
  Future<List<ContactDto>?> rawModifyContacts(List<ContactDto> contactDto,) async {
    final response = await rawModifyContactsWithHttpInfo(contactDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ContactDto>') as List).cast<ContactDto>().toList();
    }
    return null;
  }

  /// Get ids of services matching the provided filter for the current user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AbstractFilterDtoService] abstractFilterDtoService (required):
  Future<Response> rawMatchServicesByWithHttpInfo(AbstractFilterDto<ServiceDto> abstractFilterDtoService,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/service/match';

    // ignore: prefer_final_locals
    Object postBody = abstractFilterDtoService;

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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get ids of services matching the provided filter for the current user
  ///
  /// Parameters:
  ///
  /// * [AbstractFilterDtoService] abstractFilterDtoService (required):
  Future<List<String>> rawMatchServicesBy(AbstractFilterDto<ServiceDto> abstractFilterDtoService,) async {
    final response = await rawMatchServicesByWithHttpInfo(
      abstractFilterDtoService,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List).cast<String>().toList(growable: false);
    }
    return Future<List<String>>.value();
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
  Future<Response> rawModifyContactsDelegationsWithHttpInfo(List<IcureStubDto> icureStubDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/delegations';

    // ignore: prefer_final_locals
    Object? postBody = icureStubDto;

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

  /// Update delegations in healthElements.
  ///
  /// Keys must be delimited by coma
  ///
  /// Parameters:
  ///
  /// * [List<IcureStubDto>] icureStubDto (required):
  Future<List<ContactDto>?> rawModifyContactsDelegations(List<IcureStubDto> icureStubDto,) async {
    final response = await rawModifyContactsDelegationsWithHttpInfo(icureStubDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ContactDto>') as List)
        .cast<ContactDto>()
        .toList();

    }
    return null;
  }

  /// Delegates a contact to a healthcare party
  ///
  /// It delegates a contact to a healthcare party (By current healthcare party). Returns the contact with new delegations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] contactId (required):
  ///
  /// * [DelegationDto] delegationDto (required):
  Future<Response> rawNewContactDelegationsWithHttpInfo(String contactId, DelegationDto delegationDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/{contactId}/delegate'.replaceAll('{contactId}', contactId);

    // ignore: prefer_final_locals
    Object? postBody = delegationDto;

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

  /// Delegates a contact to a healthcare party
  ///
  /// It delegates a contact to a healthcare party (By current healthcare party). Returns the contact with new delegations.
  ///
  /// Parameters:
  ///
  /// * [String] contactId (required):
  ///
  /// * [DelegationDto] delegationDto (required):
  Future<ContactDto?> rawNewContactDelegations(String contactId, DelegationDto delegationDto,) async {
    final response = await rawNewContactDelegationsWithHttpInfo(contactId, delegationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContactDto',) as ContactDto;
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
  Future<Response> rawSetContactsDelegationsWithHttpInfo(List<IcureStubDto> icureStubDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/contact/delegations';

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
  Future<List<ContactDto>?> rawSetContactsDelegations(List<IcureStubDto> icureStubDto,) async {
    final response = await rawSetContactsDelegationsWithHttpInfo(icureStubDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ContactDto>') as List)
        .cast<ContactDto>()
        .toList();

    }
    return null;
  }
}
