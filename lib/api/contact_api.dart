//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


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
  Future<Response> closeForHCPartyPatientForeignKeysWithHttpInfo(String hcPartyId, String secretFKeys,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/byHcPartySecretForeignKeys/close';

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
  Future<List<ContactDto>?> closeForHCPartyPatientForeignKeys(String hcPartyId, String secretFKeys,) async {
    final response = await closeForHCPartyPatientForeignKeysWithHttpInfo(hcPartyId, secretFKeys,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> createContactWithHttpInfo(ContactDto contactDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact';

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
    final response = await createContactWithHttpInfo(contactDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> createContactsWithHttpInfo(List<ContactDto> contactDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/batch';

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
    final response = await createContactsWithHttpInfo(contactDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> deleteContactsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/delete/batch';

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
  Future<List<DocIdentifier>?> deleteContacts(ListOfIdsDto listOfIdsDto,) async {
    final response = await deleteContactsWithHttpInfo(listOfIdsDto,);
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

  /// List contacts for the current user (HcParty) or the given hcparty in the filter
  ///
  /// Returns a list of contacts along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FilterChainContact] filterChainContact (required):
  ///
  /// * [String] startDocumentId:
  ///   A Contact document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> filterContactsByWithHttpInfo(FilterChainContact filterChainContact, { String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/filter';

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
  /// * [FilterChainContact] filterChainContact (required):
  ///
  /// * [String] startDocumentId:
  ///   A Contact document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListContactDto?> rawFilterContactsBy(
    FilterChainContact filterChainContact, {
    String? startDocumentId,
    int? limit,
  }) async {
    final response = await filterContactsByWithHttpInfo(
      filterChainContact,
      startDocumentId: startDocumentId,
      limit: limit,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  /// * [FilterChainService] filterChainService (required):
  ///
  /// * [String] startDocumentId:
  ///   A Contact document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> filterServicesByWithHttpInfo(FilterChainService filterChainService, { String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/service/filter';

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
  /// * [FilterChainService] filterChainService (required):
  ///
  /// * [String] startDocumentId:
  ///   A Contact document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListServiceDto?> rawFilterServicesBy(FilterChainService filterChainService, { String? startDocumentId, int? limit,}) async {
    final response = await filterServicesByWithHttpInfo(filterChainService, startDocumentId: startDocumentId, limit: limit,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> findContactsByOpeningDateWithHttpInfo(int startKey, int endKey, String hcpartyid, { String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/byOpeningDate';

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
    final response = await findContactsByOpeningDateWithHttpInfo(
      startKey,
      endKey,
      hcpartyid,
      startDocumentId: startDocumentId,
      limit: limit,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> getContactWithHttpInfo(String contactId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/{contactId}'
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
  Future<ContactDto?> getContact(String contactId,) async {
    final response = await getContactWithHttpInfo(contactId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> getContactsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/byIds';

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
    final response = await getContactsWithHttpInfo(
      listOfIdsDto,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> getEmptyContentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/service/content/empty';

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
  Future<ContentDto?> getEmptyContent() async {
    final response = await getEmptyContentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> getServiceCodesOccurencesWithHttpInfo(String codeType, int minOccurences,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/service/codes/{codeType}/{minOccurences}'
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
  Future<List<LabelledOccurenceDto>?> getServiceCodesOccurences(String codeType, int minOccurences,) async {
    final response = await getServiceCodesOccurencesWithHttpInfo(codeType, minOccurences,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> getServicesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/service';

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
  Future<List<ServiceDto>?> getServices(ListOfIdsDto listOfIdsDto,) async {
    final response = await getServicesWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> getServicesLinkedToWithHttpInfo(ListOfIdsDto listOfIdsDto, { String? linkType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/service/linkedTo';

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
  Future<List<ServiceDto>?> getServicesLinkedTo(ListOfIdsDto listOfIdsDto, { String? linkType, }) async {
    final response = await getServicesLinkedToWithHttpInfo(listOfIdsDto,  linkType: linkType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> listContactByHCPartyServiceIdWithHttpInfo(String hcPartyId, String serviceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/byHcPartyServiceId';

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
  Future<List<ContactDto>?> listContactByHCPartyServiceId(String hcPartyId, String serviceId,) async {
    final response = await listContactByHCPartyServiceIdWithHttpInfo(hcPartyId, serviceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> listContactsByExternalIdWithHttpInfo(String externalId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/byExternalId';

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
  Future<List<ContactDto>?> listContactsByExternalId(String externalId,) async {
    final response = await listContactsByExternalIdWithHttpInfo(externalId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> listContactsByHCPartyAndFormIdWithHttpInfo(String hcPartyId, String formId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/byHcPartyFormId';

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
  Future<List<ContactDto>?> listContactsByHCPartyAndFormId(String hcPartyId, String formId,) async {
    final response = await listContactsByHCPartyAndFormIdWithHttpInfo(hcPartyId, formId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> listContactsByHCPartyAndFormIdsWithHttpInfo(String hcPartyId, ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/byHcPartyFormIds';

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
  Future<List<ContactDto>?> listContactsByHCPartyAndFormIds(String hcPartyId, ListOfIdsDto listOfIdsDto,) async {
    final response = await listContactsByHCPartyAndFormIdsWithHttpInfo(hcPartyId, listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> listContactsByHCPartyAndPatientForeignKeysWithHttpInfo(String hcPartyId, ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/byHcPartyPatientForeignKeys';

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
  Future<List<ContactDto>?> listContactsByHCPartyAndPatientForeignKeys(String hcPartyId, ListOfIdsDto listOfIdsDto,) async {
    final response = await listContactsByHCPartyAndPatientForeignKeysWithHttpInfo(hcPartyId, listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> listContactsByHCPartyAndPatientSecretFKeysWithHttpInfo(String hcPartyId, String secretFKeys, { String? planOfActionsIds, bool? skipClosedContacts, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/byHcPartySecretForeignKeys';

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
  Future<List<ContactDto>?> listContactsByHCPartyAndPatientSecretFKeys(String hcPartyId, String secretFKeys, { String? planOfActionsIds, bool? skipClosedContacts, }) async {
    final response = await listContactsByHCPartyAndPatientSecretFKeysWithHttpInfo(hcPartyId, secretFKeys,  planOfActionsIds: planOfActionsIds, skipClosedContacts: skipClosedContacts, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> listContactsDelegationsStubsByHCPartyAndPatientForeignKeysWithHttpInfo(String hcPartyId, String secretFKeys,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/byHcPartySecretForeignKeys/delegations';

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
  Future<List<IcureStubDto>?> listContactsDelegationsStubsByHCPartyAndPatientForeignKeys(String hcPartyId, String secretFKeys,) async {
    final response = await listContactsDelegationsStubsByHCPartyAndPatientForeignKeysWithHttpInfo(hcPartyId, secretFKeys,);
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

  /// List services by related association id
  ///
  /// Returns a list of services
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] associationId (required):
  Future<Response> listServicesByAssociationIdWithHttpInfo(String associationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/service/associationId';

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
  Future<List<ServiceDto>?> listServicesByAssociationId(String associationId,) async {
    final response = await listServicesByAssociationIdWithHttpInfo(associationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> listServicesByHealthElementIdWithHttpInfo(String healthElementId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/service/healthElementId/{healthElementId}'
      .replaceAll('{healthElementId}', healthElementId);

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
  Future<List<ServiceDto>?> listServicesByHealthElementId(String healthElementId,) async {
    final response = await listServicesByHealthElementIdWithHttpInfo(healthElementId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> matchContactsByWithHttpInfo(
    AbstractFilterDto<ContactDto> abstractFilterDtoContact,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/match';

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
  Future<List<String>?> matchContactsBy(
    AbstractFilterDto<ContactDto> abstractFilterDtoContact,
  ) async {
    final response = await matchContactsByWithHttpInfo(
      abstractFilterDtoContact,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> modifyContactWithHttpInfo(ContactDto contactDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact';

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
    final response = await modifyContactWithHttpInfo(contactDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> modifyContactsWithHttpInfo(List<ContactDto> contactDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/batch';

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
    final response = await modifyContactsWithHttpInfo(contactDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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

  /// Update delegations in healthElements.
  ///
  /// Keys must be delimited by coma
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<IcureStubDto>] icureStubDto (required):
  Future<Response> modifyContactsDelegationsWithHttpInfo(List<IcureStubDto> icureStubDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/delegations';

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
  Future<List<ContactDto>?> modifyContactsDelegations(List<IcureStubDto> icureStubDto,) async {
    final response = await modifyContactsDelegationsWithHttpInfo(icureStubDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> newContactDelegationsWithHttpInfo(String contactId, DelegationDto delegationDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/{contactId}/delegate'
      .replaceAll('{contactId}', contactId);

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
  Future<ContactDto?> newContactDelegations(String contactId, DelegationDto delegationDto,) async {
    final response = await newContactDelegationsWithHttpInfo(contactId, delegationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> setContactsDelegationsWithHttpInfo(List<IcureStubDto> icureStubDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/contact/delegations';

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
  Future<List<ContactDto>?> setContactsDelegations(List<IcureStubDto> icureStubDto,) async {
    final response = await setContactsDelegationsWithHttpInfo(icureStubDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
