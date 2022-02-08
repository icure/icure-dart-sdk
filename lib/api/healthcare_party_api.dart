//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HealthcarePartyApi {
  HealthcarePartyApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a healthcare party
  ///
  /// One of Name or Last name+First name, Nihii, and Public key are required.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [HealthcarePartyDto] healthcarePartyDto (required):
  Future<Response> createHealthcarePartyWithHttpInfo(HealthcarePartyDto healthcarePartyDto,) async {
    // Verify required params are set.
    if (healthcarePartyDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: healthcarePartyDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/hcparty';

    // ignore: prefer_final_locals
    Object postBody = healthcarePartyDto;

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

  /// Create a healthcare party
  ///
  /// One of Name or Last name+First name, Nihii, and Public key are required.
  ///
  /// Parameters:
  ///
  /// * [HealthcarePartyDto] healthcarePartyDto (required):
  Future<HealthcarePartyDto> createHealthcareParty(HealthcarePartyDto healthcarePartyDto,) async {
    final response = await createHealthcarePartyWithHttpInfo(healthcarePartyDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HealthcarePartyDto',) as HealthcarePartyDto;
    
    }
    return Future<HealthcarePartyDto>.value();
  }

  /// Create a healthcare party
  ///
  /// One of Name or Last name+First name, Nihii, and Public key are required.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [HealthcarePartyDto] healthcarePartyDto (required):
  Future<Response> createHealthcarePartyInGroupWithHttpInfo(String groupId, HealthcarePartyDto healthcarePartyDto,) async {
    // Verify required params are set.
    if (groupId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: groupId');
    }
    if (healthcarePartyDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: healthcarePartyDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/hcparty/inGroup/{groupId}'
      .replaceAll('{groupId}', groupId);

    // ignore: prefer_final_locals
    Object postBody = healthcarePartyDto;

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

  /// Create a healthcare party
  ///
  /// One of Name or Last name+First name, Nihii, and Public key are required.
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [HealthcarePartyDto] healthcarePartyDto (required):
  Future<HealthcarePartyDto> createHealthcarePartyInGroup(String groupId, HealthcarePartyDto healthcarePartyDto,) async {
    final response = await createHealthcarePartyInGroupWithHttpInfo(groupId, healthcarePartyDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HealthcarePartyDto',) as HealthcarePartyDto;
    
    }
    return Future<HealthcarePartyDto>.value();
  }

  /// Delete healthcare parties
  ///
  /// Deleting healthcareParties. Response is an array containing the id of deleted healthcare parties.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> deleteHealthcarePartiesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // Verify required params are set.
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/hcparty/delete/batch';

    // ignore: prefer_final_locals
    Object postBody = listOfIdsDto;

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

  /// Delete healthcare parties
  ///
  /// Deleting healthcareParties. Response is an array containing the id of deleted healthcare parties.
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>> deleteHealthcareParties(ListOfIdsDto listOfIdsDto,) async {
    final response = await deleteHealthcarePartiesWithHttpInfo(listOfIdsDto,);
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

  /// Delete a healthcare party
  ///
  /// Deleting a healthcareParty. Response is an array containing the id of deleted healthcare party.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> deleteHealthcarePartiesInGroupWithHttpInfo(String groupId, ListOfIdsDto listOfIdsDto,) async {
    // Verify required params are set.
    if (groupId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: groupId');
    }
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/hcparty/delete/batch/inGroup/{groupId}'
      .replaceAll('{groupId}', groupId);

    // ignore: prefer_final_locals
    Object postBody = listOfIdsDto;

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

  /// Delete a healthcare party
  ///
  /// Deleting a healthcareParty. Response is an array containing the id of deleted healthcare party.
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>> deleteHealthcarePartiesInGroup(String groupId, ListOfIdsDto listOfIdsDto,) async {
    final response = await deleteHealthcarePartiesInGroupWithHttpInfo(groupId, listOfIdsDto,);
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

  /// Filter healthcare parties for the current user (HcParty)
  ///
  /// Returns a list of healthcare party along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FilterChainHealthcareParty] filterChainHealthcareParty (required):
  ///
  /// * [String] startDocumentId:
  ///   A HealthcareParty document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> filterHealthPartiesByWithHttpInfo(FilterChainHealthcareParty filterChainHealthcareParty, { String startDocumentId, int limit, }) async {
    // Verify required params are set.
    if (filterChainHealthcareParty == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: filterChainHealthcareParty');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/hcparty/filter';

    // ignore: prefer_final_locals
    Object postBody = filterChainHealthcareParty;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startDocumentId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Filter healthcare parties for the current user (HcParty)
  ///
  /// Returns a list of healthcare party along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Parameters:
  ///
  /// * [FilterChainHealthcareParty] filterChainHealthcareParty (required):
  ///
  /// * [String] startDocumentId:
  ///   A HealthcareParty document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListHealthcarePartyDto> filterHealthPartiesBy(FilterChainHealthcareParty filterChainHealthcareParty, { String startDocumentId, int limit, }) async {
    final response = await filterHealthPartiesByWithHttpInfo(filterChainHealthcareParty,  startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListHealthcarePartyDto',) as PaginatedListHealthcarePartyDto;
    
    }
    return Future<PaginatedListHealthcarePartyDto>.value();
  }

  /// List healthcare parties with(out) pagination
  ///
  /// Returns a list of healthcare parties.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] startKey:
  ///   A healthcare party Last name
  ///
  /// * [String] startDocumentId:
  ///   A healthcare party document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  ///
  /// * [bool] desc:
  ///   Descending
  Future<Response> findHealthcarePartiesByWithHttpInfo({ String startKey, String startDocumentId, int limit, bool desc, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/hcparty';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startKey != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (desc != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'desc', desc));
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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// List healthcare parties with(out) pagination
  ///
  /// Returns a list of healthcare parties.
  ///
  /// Parameters:
  ///
  /// * [String] startKey:
  ///   A healthcare party Last name
  ///
  /// * [String] startDocumentId:
  ///   A healthcare party document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  ///
  /// * [bool] desc:
  ///   Descending
  Future<PaginatedListHealthcarePartyDto> findHealthcarePartiesBy({ String startKey, String startDocumentId, int limit, bool desc, }) async {
    final response = await findHealthcarePartiesByWithHttpInfo( startKey: startKey, startDocumentId: startDocumentId, limit: limit, desc: desc, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListHealthcarePartyDto',) as PaginatedListHealthcarePartyDto;
    
    }
    return Future<PaginatedListHealthcarePartyDto>.value();
  }

  /// Find healthcare parties by name with(out) pagination
  ///
  /// Returns a list of healthcare parties.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///   The Last name search value
  ///
  /// * [String] startKey:
  ///   A healthcare party Last name
  ///
  /// * [String] startDocumentId:
  ///   A healthcare party document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  ///
  /// * [bool] desc:
  ///   Descending
  Future<Response> findHealthcarePartiesByNameWithHttpInfo({ String name, String startKey, String startDocumentId, int limit, bool desc, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/hcparty/byName';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'name', name));
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
    if (desc != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'desc', desc));
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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Find healthcare parties by name with(out) pagination
  ///
  /// Returns a list of healthcare parties.
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///   The Last name search value
  ///
  /// * [String] startKey:
  ///   A healthcare party Last name
  ///
  /// * [String] startDocumentId:
  ///   A healthcare party document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  ///
  /// * [bool] desc:
  ///   Descending
  Future<PaginatedListHealthcarePartyDto> findHealthcarePartiesByName({ String name, String startKey, String startDocumentId, int limit, bool desc, }) async {
    final response = await findHealthcarePartiesByNameWithHttpInfo( name: name, startKey: startKey, startDocumentId: startDocumentId, limit: limit, desc: desc, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListHealthcarePartyDto',) as PaginatedListHealthcarePartyDto;
    
    }
    return Future<PaginatedListHealthcarePartyDto>.value();
  }

  /// Find healthcare parties by name with(out) pagination
  ///
  /// Returns a list of healthcare parties.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///   The type of the HCP (persphysician)
  ///
  /// * [String] spec (required):
  ///   The speciality of the HCP
  ///
  /// * [String] firstCode (required):
  ///   The first postCode for the HCP
  ///
  /// * [String] lastCode (required):
  ///   The last postCode for the HCP
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findHealthcarePartiesBySpecialityAndPostCodeWithHttpInfo(String type, String spec, String firstCode, String lastCode, { int limit, }) async {
    // Verify required params are set.
    if (type == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: type');
    }
    if (spec == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: spec');
    }
    if (firstCode == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: firstCode');
    }
    if (lastCode == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: lastCode');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/hcparty/bySpecialityAndPostCode/{type}/{spec}/{firstCode}/to/{lastCode}'
      .replaceAll('{type}', type)
      .replaceAll('{spec}', spec)
      .replaceAll('{firstCode}', firstCode)
      .replaceAll('{lastCode}', lastCode);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Find healthcare parties by name with(out) pagination
  ///
  /// Returns a list of healthcare parties.
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///   The type of the HCP (persphysician)
  ///
  /// * [String] spec (required):
  ///   The speciality of the HCP
  ///
  /// * [String] firstCode (required):
  ///   The first postCode for the HCP
  ///
  /// * [String] lastCode (required):
  ///   The last postCode for the HCP
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListHealthcarePartyDto> findHealthcarePartiesBySpecialityAndPostCode(String type, String spec, String firstCode, String lastCode, { int limit, }) async {
    final response = await findHealthcarePartiesBySpecialityAndPostCodeWithHttpInfo(type, spec, firstCode, lastCode,  limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListHealthcarePartyDto',) as PaginatedListHealthcarePartyDto;
    
    }
    return Future<PaginatedListHealthcarePartyDto>.value();
  }

  /// Find healthcare parties by nihii or ssin with(out) pagination
  ///
  /// Returns a list of healthcare parties.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] searchValue (required):
  ///
  /// * [String] startKey:
  ///   A healthcare party Last name
  ///
  /// * [String] startDocumentId:
  ///   A healthcare party document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  ///
  /// * [bool] desc:
  ///   Descending
  Future<Response> findHealthcarePartiesBySsinOrNihiiWithHttpInfo(String searchValue, { String startKey, String startDocumentId, int limit, bool desc, }) async {
    // Verify required params are set.
    if (searchValue == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: searchValue');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/hcparty/byNihiiOrSsin/{searchValue}'
      .replaceAll('{searchValue}', searchValue);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startKey != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (desc != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'desc', desc));
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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Find healthcare parties by nihii or ssin with(out) pagination
  ///
  /// Returns a list of healthcare parties.
  ///
  /// Parameters:
  ///
  /// * [String] searchValue (required):
  ///
  /// * [String] startKey:
  ///   A healthcare party Last name
  ///
  /// * [String] startDocumentId:
  ///   A healthcare party document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  ///
  /// * [bool] desc:
  ///   Descending
  Future<PaginatedListHealthcarePartyDto> findHealthcarePartiesBySsinOrNihii(String searchValue, { String startKey, String startDocumentId, int limit, bool desc, }) async {
    final response = await findHealthcarePartiesBySsinOrNihiiWithHttpInfo(searchValue,  startKey: startKey, startDocumentId: startDocumentId, limit: limit, desc: desc, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListHealthcarePartyDto',) as PaginatedListHealthcarePartyDto;
    
    }
    return Future<PaginatedListHealthcarePartyDto>.value();
  }

  /// Get the current healthcare party if logged in.
  ///
  /// General information about the current healthcare Party
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCurrentHealthcarePartyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/hcparty/current';

    // ignore: prefer_final_locals
    Object postBody;

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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get the current healthcare party if logged in.
  ///
  /// General information about the current healthcare Party
  Future<HealthcarePartyDto> getCurrentHealthcareParty() async {
    final response = await getCurrentHealthcarePartyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HealthcarePartyDto',) as HealthcarePartyDto;
    
    }
    return Future<HealthcarePartyDto>.value();
  }

  /// Get the HcParty encrypted AES keys indexed by owner
  ///
  /// (key, value) of the map is as follows: (ID of the owner of the encrypted AES key, encrypted AES key)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] healthcarePartyId (required):
  Future<Response> getHcPartyKeysForDelegateWithHttpInfo(String healthcarePartyId,) async {
    // Verify required params are set.
    if (healthcarePartyId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: healthcarePartyId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/hcparty/byKeys/{healthcarePartyId}'
      .replaceAll('{healthcarePartyId}', healthcarePartyId);

    // ignore: prefer_final_locals
    Object postBody;

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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get the HcParty encrypted AES keys indexed by owner
  ///
  /// (key, value) of the map is as follows: (ID of the owner of the encrypted AES key, encrypted AES key)
  ///
  /// Parameters:
  ///
  /// * [String] healthcarePartyId (required):
  Future<Map<String, String>> getHcPartyKeysForDelegate(String healthcarePartyId,) async {
    final response = await getHcPartyKeysForDelegateWithHttpInfo(healthcarePartyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return Map<String, String>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, String>'),);

    }
    return Future<Map<String, String>>.value();
  }

  /// Get healthcareParties by their IDs
  ///
  /// General information about the healthcare Party
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> getHealthcarePartiesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // Verify required params are set.
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/hcparty/byIds';

    // ignore: prefer_final_locals
    Object postBody = listOfIdsDto;

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

  /// Get healthcareParties by their IDs
  ///
  /// General information about the healthcare Party
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<HealthcarePartyDto>> getHealthcareParties(ListOfIdsDto listOfIdsDto,) async {
    final response = await getHealthcarePartiesWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HealthcarePartyDto>') as List)
        .cast<HealthcarePartyDto>()
        .toList(growable: false);

    }
    return Future<List<HealthcarePartyDto>>.value();
  }

  /// Get a healthcareParty by his ID
  ///
  /// General information about the healthcare Party
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] healthcarePartyId (required):
  Future<Response> getHealthcarePartyWithHttpInfo(String healthcarePartyId,) async {
    // Verify required params are set.
    if (healthcarePartyId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: healthcarePartyId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/hcparty/{healthcarePartyId}'
      .replaceAll('{healthcarePartyId}', healthcarePartyId);

    // ignore: prefer_final_locals
    Object postBody;

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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get a healthcareParty by his ID
  ///
  /// General information about the healthcare Party
  ///
  /// Parameters:
  ///
  /// * [String] healthcarePartyId (required):
  Future<HealthcarePartyDto> getHealthcareParty(String healthcarePartyId,) async {
    final response = await getHealthcarePartyWithHttpInfo(healthcarePartyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HealthcarePartyDto',) as HealthcarePartyDto;
    
    }
    return Future<HealthcarePartyDto>.value();
  }

  /// Get public key of a healthcare party
  ///
  /// Returns the public key of a healthcare party in Hex
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] healthcarePartyId (required):
  Future<Response> getPublicKeyWithHttpInfo(String healthcarePartyId,) async {
    // Verify required params are set.
    if (healthcarePartyId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: healthcarePartyId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/hcparty/{healthcarePartyId}/publicKey'
      .replaceAll('{healthcarePartyId}', healthcarePartyId);

    // ignore: prefer_final_locals
    Object postBody;

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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get public key of a healthcare party
  ///
  /// Returns the public key of a healthcare party in Hex
  ///
  /// Parameters:
  ///
  /// * [String] healthcarePartyId (required):
  Future<PublicKeyDto> getPublicKey(String healthcarePartyId,) async {
    final response = await getPublicKeyWithHttpInfo(healthcarePartyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PublicKeyDto',) as PublicKeyDto;
    
    }
    return Future<PublicKeyDto>.value();
  }

  /// Find healthcare parties by name with(out) pagination
  ///
  /// Returns a list of healthcare parties.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The Last name search value
  Future<Response> listHealthcarePartiesByNameWithHttpInfo(String name,) async {
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/hcparty/byNameStrict/{name}'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object postBody;

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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Find healthcare parties by name with(out) pagination
  ///
  /// Returns a list of healthcare parties.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The Last name search value
  Future<List<HealthcarePartyDto>> listHealthcarePartiesByName(String name,) async {
    final response = await listHealthcarePartiesByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HealthcarePartyDto>') as List)
        .cast<HealthcarePartyDto>()
        .toList(growable: false);

    }
    return Future<List<HealthcarePartyDto>>.value();
  }

  /// Find children of an healthcare parties
  ///
  /// Return a list of children hcp.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] parentId (required):
  Future<Response> listHealthcarePartiesByParentIdWithHttpInfo(String parentId,) async {
    // Verify required params are set.
    if (parentId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: parentId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/hcparty/{parentId}/children'
      .replaceAll('{parentId}', parentId);

    // ignore: prefer_final_locals
    Object postBody;

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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Find children of an healthcare parties
  ///
  /// Return a list of children hcp.
  ///
  /// Parameters:
  ///
  /// * [String] parentId (required):
  Future<List<HealthcarePartyDto>> listHealthcarePartiesByParentId(String parentId,) async {
    final response = await listHealthcarePartiesByParentIdWithHttpInfo(parentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HealthcarePartyDto>') as List)
        .cast<HealthcarePartyDto>()
        .toList(growable: false);

    }
    return Future<List<HealthcarePartyDto>>.value();
  }

  /// Get ids of healthcare party matching the provided filter for the current user (HcParty) 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AbstractFilterDtoHealthcareParty] abstractFilterDtoHealthcareParty (required):
  Future<Response> matchHealthcarePartiesByWithHttpInfo(AbstractFilterDtoHealthcareParty abstractFilterDtoHealthcareParty,) async {
    // Verify required params are set.
    if (abstractFilterDtoHealthcareParty == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: abstractFilterDtoHealthcareParty');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/hcparty/match';

    // ignore: prefer_final_locals
    Object postBody = abstractFilterDtoHealthcareParty;

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

  /// Get ids of healthcare party matching the provided filter for the current user (HcParty) 
  ///
  /// Parameters:
  ///
  /// * [AbstractFilterDtoHealthcareParty] abstractFilterDtoHealthcareParty (required):
  Future<List<String>> matchHealthcarePartiesBy(AbstractFilterDtoHealthcareParty abstractFilterDtoHealthcareParty,) async {
    final response = await matchHealthcarePartiesByWithHttpInfo(abstractFilterDtoHealthcareParty,);
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

  /// Modify a Healthcare Party.
  ///
  /// No particular return value. It's just a message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [HealthcarePartyDto] healthcarePartyDto (required):
  Future<Response> modifyHealthcarePartyWithHttpInfo(HealthcarePartyDto healthcarePartyDto,) async {
    // Verify required params are set.
    if (healthcarePartyDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: healthcarePartyDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/hcparty';

    // ignore: prefer_final_locals
    Object postBody = healthcarePartyDto;

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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Modify a Healthcare Party.
  ///
  /// No particular return value. It's just a message.
  ///
  /// Parameters:
  ///
  /// * [HealthcarePartyDto] healthcarePartyDto (required):
  Future<HealthcarePartyDto> modifyHealthcareParty(HealthcarePartyDto healthcarePartyDto,) async {
    final response = await modifyHealthcarePartyWithHttpInfo(healthcarePartyDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HealthcarePartyDto',) as HealthcarePartyDto;
    
    }
    return Future<HealthcarePartyDto>.value();
  }

  /// Modify a Healthcare Party.
  ///
  /// No particular return value. It's just a message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [HealthcarePartyDto] healthcarePartyDto (required):
  Future<Response> modifyHealthcarePartyInGroupWithHttpInfo(String groupId, HealthcarePartyDto healthcarePartyDto,) async {
    // Verify required params are set.
    if (groupId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: groupId');
    }
    if (healthcarePartyDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: healthcarePartyDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/hcparty/inGroup/{groupId}'
      .replaceAll('{groupId}', groupId);

    // ignore: prefer_final_locals
    Object postBody = healthcarePartyDto;

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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Modify a Healthcare Party.
  ///
  /// No particular return value. It's just a message.
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [HealthcarePartyDto] healthcarePartyDto (required):
  Future<HealthcarePartyDto> modifyHealthcarePartyInGroup(String groupId, HealthcarePartyDto healthcarePartyDto,) async {
    final response = await modifyHealthcarePartyInGroupWithHttpInfo(groupId, healthcarePartyDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HealthcarePartyDto',) as HealthcarePartyDto;
    
    }
    return Future<HealthcarePartyDto>.value();
  }
}
