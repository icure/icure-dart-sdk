//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HealthElementApi {
  HealthElementApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a health element with the current user
  ///
  /// Returns an instance of created health element.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [HealthElementDto] healthElementDto (required):
  Future<Response> createHealthElementWithHttpInfo(HealthElementDto healthElementDto,) async {
    // Verify required params are set.
    if (healthElementDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: healthElementDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/helement';

    // ignore: prefer_final_locals
    Object postBody = healthElementDto;

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

  /// Create a health element with the current user
  ///
  /// Returns an instance of created health element.
  ///
  /// Parameters:
  ///
  /// * [HealthElementDto] healthElementDto (required):
  Future<HealthElementDto> createHealthElement(HealthElementDto healthElementDto,) async {
    final response = await createHealthElementWithHttpInfo(healthElementDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HealthElementDto',) as HealthElementDto;
    
    }
    return Future<HealthElementDto>.value();
  }

  /// Create a batch of healthcare elements
  ///
  /// Returns the created healthcare elements.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<HealthElementDto>] healthElementDto (required):
  Future<Response> createHealthElementsWithHttpInfo(List<HealthElementDto> healthElementDto,) async {
    // Verify required params are set.
    if (healthElementDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: healthElementDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/helement/batch';

    // ignore: prefer_final_locals
    Object postBody = healthElementDto;

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

  /// Create a batch of healthcare elements
  ///
  /// Returns the created healthcare elements.
  ///
  /// Parameters:
  ///
  /// * [List<HealthElementDto>] healthElementDto (required):
  Future<List<HealthElementDto>> createHealthElements(List<HealthElementDto> healthElementDto,) async {
    final response = await createHealthElementsWithHttpInfo(healthElementDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HealthElementDto>') as List)
        .cast<HealthElementDto>()
        .toList(growable: false);

    }
    return Future<List<HealthElementDto>>.value();
  }

  /// Delete health elements.
  ///
  /// Response is a set containing the ID's of deleted health elements.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> deleteHealthElementsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // Verify required params are set.
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/helement/delete/batch';

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

  /// Delete health elements.
  ///
  /// Response is a set containing the ID's of deleted health elements.
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>> deleteHealthElements(ListOfIdsDto listOfIdsDto,) async {
    final response = await deleteHealthElementsWithHttpInfo(listOfIdsDto,);
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

  /// Filter health elements for the current user (HcParty)
  ///
  /// Returns a list of health elements along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FilterChainHealthElement] filterChainHealthElement (required):
  ///
  /// * [String] startDocumentId:
  ///   A HealthElement document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> filterHealthElementsByWithHttpInfo(FilterChainHealthElement filterChainHealthElement, { String startDocumentId, int limit, }) async {
    // Verify required params are set.
    if (filterChainHealthElement == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: filterChainHealthElement');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/helement/filter';

    // ignore: prefer_final_locals
    Object postBody = filterChainHealthElement;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startDocumentId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
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

  /// Filter health elements for the current user (HcParty)
  ///
  /// Returns a list of health elements along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Parameters:
  ///
  /// * [FilterChainHealthElement] filterChainHealthElement (required):
  ///
  /// * [String] startDocumentId:
  ///   A HealthElement document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListHealthElementDto> filterHealthElementsBy(FilterChainHealthElement filterChainHealthElement, { String startDocumentId, int limit, }) async {
    final response = await filterHealthElementsByWithHttpInfo(filterChainHealthElement,  startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListHealthElementDto',) as PaginatedListHealthElementDto;
    
    }
    return Future<PaginatedListHealthElementDto>.value();
  }

  /// Get a health element
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] healthElementId (required):
  Future<Response> getHealthElementWithHttpInfo(String healthElementId,) async {
    // Verify required params are set.
    if (healthElementId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: healthElementId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/helement/{healthElementId}'
      .replaceAll('{healthElementId}', healthElementId);

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

  /// Get a health element
  ///
  /// Parameters:
  ///
  /// * [String] healthElementId (required):
  Future<HealthElementDto> getHealthElement(String healthElementId,) async {
    final response = await getHealthElementWithHttpInfo(healthElementId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HealthElementDto',) as HealthElementDto;
    
    }
    return Future<HealthElementDto>.value();
  }

  /// Get healthElements by batch
  ///
  /// Get a list of healthElement by ids/keys.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> getHealthElementsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // Verify required params are set.
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/helement/byIds';

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

  /// Get healthElements by batch
  ///
  /// Get a list of healthElement by ids/keys.
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<HealthElementDto>> getHealthElements(ListOfIdsDto listOfIdsDto,) async {
    final response = await getHealthElementsWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HealthElementDto>') as List)
        .cast<HealthElementDto>()
        .toList(growable: false);

    }
    return Future<List<HealthElementDto>>.value();
  }

  /// List health elements found By Healthcare Party and secret foreign keyelementIds.
  ///
  /// Keys hast to delimited by coma
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<Response> listHealthElementsByHCPartyAndPatientForeignKeysWithHttpInfo(String hcPartyId, String secretFKeys,) async {
    // Verify required params are set.
    if (hcPartyId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: hcPartyId');
    }
    if (secretFKeys == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: secretFKeys');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/helement/byHcPartySecretForeignKeys';

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

  /// List health elements found By Healthcare Party and secret foreign keyelementIds.
  ///
  /// Keys hast to delimited by coma
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<List<HealthElementDto>> listHealthElementsByHCPartyAndPatientForeignKeys(String hcPartyId, String secretFKeys,) async {
    final response = await listHealthElementsByHCPartyAndPatientForeignKeysWithHttpInfo(hcPartyId, secretFKeys,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HealthElementDto>') as List)
        .cast<HealthElementDto>()
        .toList(growable: false);

    }
    return Future<List<HealthElementDto>>.value();
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
  Future<Response> listHealthElementsDelegationsStubsByHCPartyAndPatientForeignKeysWithHttpInfo(String hcPartyId, String secretFKeys,) async {
    // Verify required params are set.
    if (hcPartyId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: hcPartyId');
    }
    if (secretFKeys == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: secretFKeys');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/helement/byHcPartySecretForeignKeys/delegations';

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
  Future<List<IcureStubDto>> listHealthElementsDelegationsStubsByHCPartyAndPatientForeignKeys(String hcPartyId, String secretFKeys,) async {
    final response = await listHealthElementsDelegationsStubsByHCPartyAndPatientForeignKeysWithHttpInfo(hcPartyId, secretFKeys,);
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

  /// Get ids of health element matching the provided filter for the current user (HcParty) 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AbstractFilterDtoHealthElement] abstractFilterDtoHealthElement (required):
  Future<Response> matchHealthElementsByWithHttpInfo(AbstractFilterDtoHealthElement abstractFilterDtoHealthElement,) async {
    // Verify required params are set.
    if (abstractFilterDtoHealthElement == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: abstractFilterDtoHealthElement');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/helement/match';

    // ignore: prefer_final_locals
    Object postBody = abstractFilterDtoHealthElement;

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

  /// Get ids of health element matching the provided filter for the current user (HcParty) 
  ///
  /// Parameters:
  ///
  /// * [AbstractFilterDtoHealthElement] abstractFilterDtoHealthElement (required):
  Future<List<String>> matchHealthElementsBy(AbstractFilterDtoHealthElement abstractFilterDtoHealthElement,) async {
    final response = await matchHealthElementsByWithHttpInfo(abstractFilterDtoHealthElement,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List)
        .cast<String>()
        .toList(growable: false);

    }
    return Future<List<String>>.value();
  }

  /// Modify a health element
  ///
  /// Returns the modified health element.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [HealthElementDto] healthElementDto (required):
  Future<Response> modifyHealthElementWithHttpInfo(HealthElementDto healthElementDto,) async {
    // Verify required params are set.
    if (healthElementDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: healthElementDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/helement';

    // ignore: prefer_final_locals
    Object postBody = healthElementDto;

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

  /// Modify a health element
  ///
  /// Returns the modified health element.
  ///
  /// Parameters:
  ///
  /// * [HealthElementDto] healthElementDto (required):
  Future<HealthElementDto> modifyHealthElement(HealthElementDto healthElementDto,) async {
    final response = await modifyHealthElementWithHttpInfo(healthElementDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HealthElementDto',) as HealthElementDto;
    
    }
    return Future<HealthElementDto>.value();
  }

  /// Modify a batch of health elements
  ///
  /// Returns the modified health elements.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<HealthElementDto>] healthElementDto (required):
  Future<Response> modifyHealthElementsWithHttpInfo(List<HealthElementDto> healthElementDto,) async {
    // Verify required params are set.
    if (healthElementDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: healthElementDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/helement/batch';

    // ignore: prefer_final_locals
    Object postBody = healthElementDto;

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

  /// Modify a batch of health elements
  ///
  /// Returns the modified health elements.
  ///
  /// Parameters:
  ///
  /// * [List<HealthElementDto>] healthElementDto (required):
  Future<List<HealthElementDto>> modifyHealthElements(List<HealthElementDto> healthElementDto,) async {
    final response = await modifyHealthElementsWithHttpInfo(healthElementDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HealthElementDto>') as List)
        .cast<HealthElementDto>()
        .toList(growable: false);

    }
    return Future<List<HealthElementDto>>.value();
  }

  /// Delegates a health element to a healthcare party
  ///
  /// It delegates a health element to a healthcare party (By current healthcare party). Returns the element with new delegations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] healthElementId (required):
  ///
  /// * [List<DelegationDto>] delegationDto (required):
  Future<Response> newHealthElementDelegationsWithHttpInfo(String healthElementId, List<DelegationDto> delegationDto,) async {
    // Verify required params are set.
    if (healthElementId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: healthElementId');
    }
    if (delegationDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: delegationDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/helement/{healthElementId}/delegate'
      .replaceAll('{healthElementId}', healthElementId);

    // ignore: prefer_final_locals
    Object postBody = delegationDto;

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

  /// Delegates a health element to a healthcare party
  ///
  /// It delegates a health element to a healthcare party (By current healthcare party). Returns the element with new delegations.
  ///
  /// Parameters:
  ///
  /// * [String] healthElementId (required):
  ///
  /// * [List<DelegationDto>] delegationDto (required):
  Future<HealthElementDto> newHealthElementDelegations(String healthElementId, List<DelegationDto> delegationDto,) async {
    final response = await newHealthElementDelegationsWithHttpInfo(healthElementId, delegationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HealthElementDto',) as HealthElementDto;
    
    }
    return Future<HealthElementDto>.value();
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
  Future<Response> setHealthElementsDelegationsWithHttpInfo(List<IcureStubDto> icureStubDto,) async {
    // Verify required params are set.
    if (icureStubDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: icureStubDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/helement/delegations';

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
  Future<List<HealthElementDto>> setHealthElementsDelegations(List<IcureStubDto> icureStubDto,) async {
    final response = await setHealthElementsDelegationsWithHttpInfo(icureStubDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HealthElementDto>') as List)
        .cast<HealthElementDto>()
        .toList(growable: false);

    }
    return Future<List<HealthElementDto>>.value();
  }
}
