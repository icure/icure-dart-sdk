//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AgendaApi {
  AgendaApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a agenda
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AgendaDto] agendaDto (required):
  Future<Response> createAgendaWithHttpInfo(AgendaDto agendaDto,) async {
    // Verify required params are set.
    if (agendaDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: agendaDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/agenda';

    // ignore: prefer_final_locals
    Object postBody = agendaDto;

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

  /// Creates a agenda
  ///
  /// Parameters:
  ///
  /// * [AgendaDto] agendaDto (required):
  Future<AgendaDto> createAgenda(AgendaDto agendaDto,) async {
    final response = await createAgendaWithHttpInfo(agendaDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgendaDto',) as AgendaDto;
    
    }
    return Future<AgendaDto>.value();
  }

  /// Deletes agendas
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> deleteAgendasWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // Verify required params are set.
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/agenda/delete/batch';

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

  /// Deletes agendas
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>> deleteAgendas(ListOfIdsDto listOfIdsDto,) async {
    final response = await deleteAgendasWithHttpInfo(listOfIdsDto,);
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

  /// Gets an agenda
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] agendaId (required):
  Future<Response> getAgendaWithHttpInfo(String agendaId,) async {
    // Verify required params are set.
    if (agendaId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: agendaId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/agenda/{agendaId}'
      .replaceAll('{agendaId}', agendaId);

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

  /// Gets an agenda
  ///
  /// Parameters:
  ///
  /// * [String] agendaId (required):
  Future<AgendaDto> getAgenda(String agendaId,) async {
    final response = await getAgendaWithHttpInfo(agendaId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgendaDto',) as AgendaDto;
    
    }
    return Future<AgendaDto>.value();
  }

  /// Gets all agendas
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAgendasWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/agenda';

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

  /// Gets all agendas
  Future<List<AgendaDto>> getAgendas() async {
    final response = await getAgendasWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AgendaDto>') as List)
        .cast<AgendaDto>()
        .toList(growable: false);

    }
    return Future<List<AgendaDto>>.value();
  }

  /// Gets all agendas for user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> getAgendasForUserWithHttpInfo(String userId,) async {
    // Verify required params are set.
    if (userId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/agenda/byUser';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'userId', userId));

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

  /// Gets all agendas for user
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<AgendaDto> getAgendasForUser(String userId,) async {
    final response = await getAgendasForUserWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgendaDto',) as AgendaDto;
    
    }
    return Future<AgendaDto>.value();
  }

  /// Gets readable agendas for user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> getReadableAgendasForUserWithHttpInfo(String userId,) async {
    // Verify required params are set.
    if (userId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/agenda/readableForUser';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'userId', userId));

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

  /// Gets readable agendas for user
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<List<AgendaDto>> getReadableAgendasForUser(String userId,) async {
    final response = await getReadableAgendasForUserWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AgendaDto>') as List)
        .cast<AgendaDto>()
        .toList(growable: false);

    }
    return Future<List<AgendaDto>>.value();
  }

  /// Modifies an agenda
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AgendaDto] agendaDto (required):
  Future<Response> modifyAgendaWithHttpInfo(AgendaDto agendaDto,) async {
    // Verify required params are set.
    if (agendaDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: agendaDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/agenda';

    // ignore: prefer_final_locals
    Object postBody = agendaDto;

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

  /// Modifies an agenda
  ///
  /// Parameters:
  ///
  /// * [AgendaDto] agendaDto (required):
  Future<AgendaDto> modifyAgenda(AgendaDto agendaDto,) async {
    final response = await modifyAgendaWithHttpInfo(agendaDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgendaDto',) as AgendaDto;
    
    }
    return Future<AgendaDto>.value();
  }
}
