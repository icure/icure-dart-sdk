//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GroupApi {
  GroupApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a group
  ///
  /// Create a new group and associated dbs.  The created group will be manageable by the users that belong to the same group as the one that called createGroup. Several tasks can be executed during the group creation like DB replications towards the created DBs, users creation and healthcare parties creation
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group, also used for subsequent authentication against the db (can only contain digits, letters, - and _)
  ///
  /// * [String] name (required):
  ///   The name of the group
  ///
  /// * [String] password (required):
  ///   The password of the group (can only contain digits, letters, - and _)
  ///
  /// * [DatabaseInitialisationDto] databaseInitialisationDto (required):
  ///
  /// * [String] server:
  ///   The server on which the group dbs will be created
  ///
  /// * [int] q:
  ///   The number of shards for patient and healthdata dbs : 3-8 is a recommended range of value
  ///
  /// * [int] n:
  ///   The number of replications for dbs : 3 is a recommended value
  Future<Response> createGroupWithHttpInfo(String id, String name, String password, DatabaseInitialisationDto databaseInitialisationDto, { String server, int q, int n, }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }
    if (password == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: password');
    }
    if (databaseInitialisationDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: databaseInitialisationDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/group/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody = databaseInitialisationDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'name', name));
    if (server != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'server', server));
    }
    if (q != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'q', q));
    }
    if (n != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'n', n));
    }

    headerParams[r'password'] = parameterToString(password);

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

  /// Create a group
  ///
  /// Create a new group and associated dbs.  The created group will be manageable by the users that belong to the same group as the one that called createGroup. Several tasks can be executed during the group creation like DB replications towards the created DBs, users creation and healthcare parties creation
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group, also used for subsequent authentication against the db (can only contain digits, letters, - and _)
  ///
  /// * [String] name (required):
  ///   The name of the group
  ///
  /// * [String] password (required):
  ///   The password of the group (can only contain digits, letters, - and _)
  ///
  /// * [DatabaseInitialisationDto] databaseInitialisationDto (required):
  ///
  /// * [String] server:
  ///   The server on which the group dbs will be created
  ///
  /// * [int] q:
  ///   The number of shards for patient and healthdata dbs : 3-8 is a recommended range of value
  ///
  /// * [int] n:
  ///   The number of replications for dbs : 3 is a recommended value
  Future<GroupDto> createGroup(String id, String name, String password, DatabaseInitialisationDto databaseInitialisationDto, { String server, int q, int n, }) async {
    final response = await createGroupWithHttpInfo(id, name, password, databaseInitialisationDto,  server: server, q: q, n: n, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupDto',) as GroupDto;
    
    }
    return Future<GroupDto>.value();
  }

  /// Get a group by id
  ///
  /// Get a group by id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group
  Future<Response> getGroupWithHttpInfo(String id,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/group/{id}'
      .replaceAll('{id}', id);

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

  /// Get a group by id
  ///
  /// Get a group by id
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group
  Future<GroupDto> getGroup(String id,) async {
    final response = await getGroupWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupDto',) as GroupDto;
    
    }
    return Future<GroupDto>.value();
  }

  /// Get index info
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group
  Future<Response> getReplicationInfo1WithHttpInfo(String id,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/group/{id}/r'
      .replaceAll('{id}', id);

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

  /// Get index info
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group
  Future<ReplicationInfoDto> getReplicationInfo1(String id,) async {
    final response = await getReplicationInfo1WithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReplicationInfoDto',) as ReplicationInfoDto;
    
    }
    return Future<ReplicationInfoDto>.value();
  }

  /// Init design docs
  ///
  /// Init design docs for provided group
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group
  ///
  /// * [String] clazz:
  ///   The class of the design doc
  ///
  /// * [bool] warmup:
  ///   Warmup the design doc
  Future<Response> initDesignDocsWithHttpInfo(String id, { String clazz, bool warmup, }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/group/{id}/dd'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (clazz != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'clazz', clazz));
    }
    if (warmup != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'warmup', warmup));
    }

    const authNames = <String>[];
    const contentTypes = <String>[];


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

  /// Init design docs
  ///
  /// Init design docs for provided group
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group
  ///
  /// * [String] clazz:
  ///   The class of the design doc
  ///
  /// * [bool] warmup:
  ///   Warmup the design doc
  Future<Object> initDesignDocs(String id, { String clazz, bool warmup, }) async {
    final response = await initDesignDocsWithHttpInfo(id,  clazz: clazz, warmup: warmup, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return Future<Object>.value();
  }

  /// List groups
  ///
  /// List existing groups
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listGroupsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/group';

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

  /// List groups
  ///
  /// List existing groups
  Future<List<GroupDto>> listGroups() async {
    final response = await listGroupsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GroupDto>') as List)
        .cast<GroupDto>()
        .toList(growable: false);

    }
    return Future<List<GroupDto>>.value();
  }

  /// Update group name
  ///
  /// Update existing group name
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group
  ///
  /// * [String] name (required):
  ///   The new name for the group
  Future<Response> modifyGroupNameWithHttpInfo(String id, String name,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/group/{id}/name/{name}'
      .replaceAll('{id}', id)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>[];


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

  /// Update group name
  ///
  /// Update existing group name
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group
  ///
  /// * [String] name (required):
  ///   The new name for the group
  Future<GroupDto> modifyGroupName(String id, String name,) async {
    final response = await modifyGroupNameWithHttpInfo(id, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupDto',) as GroupDto;
    
    }
    return Future<GroupDto>.value();
  }

  /// Update group properties
  ///
  /// Update existing group properties
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group
  ///
  /// * [ListOfPropertiesDto] listOfPropertiesDto (required):
  Future<Response> modifyGroupPropertiesWithHttpInfo(String id, ListOfPropertiesDto listOfPropertiesDto,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (listOfPropertiesDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfPropertiesDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/group/{id}/properties'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody = listOfPropertiesDto;

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

  /// Update group properties
  ///
  /// Update existing group properties
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group
  ///
  /// * [ListOfPropertiesDto] listOfPropertiesDto (required):
  Future<GroupDto> modifyGroupProperties(String id, ListOfPropertiesDto listOfPropertiesDto,) async {
    final response = await modifyGroupPropertiesWithHttpInfo(id, listOfPropertiesDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupDto',) as GroupDto;
    
    }
    return Future<GroupDto>.value();
  }

  /// Create a group
  ///
  /// Create a new group and associated dbs.  The created group will be manageable by the users that belong to the same group as the one that called createGroup. Several tasks can be executed during the group creation like DB replications towards the created DBs, users creation and healthcare parties creation
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RegistrationInformationDto] registrationInformationDto (required):
  Future<Response> registerNewGroupAdministratorWithHttpInfo(RegistrationInformationDto registrationInformationDto,) async {
    // Verify required params are set.
    if (registrationInformationDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: registrationInformationDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/group/register/trial';

    // ignore: prefer_final_locals
    Object postBody = registrationInformationDto;

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

  /// Create a group
  ///
  /// Create a new group and associated dbs.  The created group will be manageable by the users that belong to the same group as the one that called createGroup. Several tasks can be executed during the group creation like DB replications towards the created DBs, users creation and healthcare parties creation
  ///
  /// Parameters:
  ///
  /// * [RegistrationInformationDto] registrationInformationDto (required):
  Future<RegistrationSuccessDto> registerNewGroupAdministrator(RegistrationInformationDto registrationInformationDto,) async {
    final response = await registerNewGroupAdministratorWithHttpInfo(registrationInformationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RegistrationSuccessDto',) as RegistrationSuccessDto;
    
    }
    return Future<RegistrationSuccessDto>.value();
  }

  /// Reset storage for group
  ///
  /// Reset storage
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  ///
  /// * [int] q:
  ///   The number of shards for patient and healthdata dbs : 3-8 is a recommended range of value
  ///
  /// * [int] n:
  ///   The number of replications for dbs : 3 is a recommended value
  Future<Response> resetStorageWithHttpInfo(String id, ListOfIdsDto listOfIdsDto, { int q, int n, }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/group/{id}/reset/storage'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody = listOfIdsDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (q != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'q', q));
    }
    if (n != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'n', n));
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

  /// Reset storage for group
  ///
  /// Reset storage
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  ///
  /// * [int] q:
  ///   The number of shards for patient and healthdata dbs : 3-8 is a recommended range of value
  ///
  /// * [int] n:
  ///   The number of replications for dbs : 3 is a recommended value
  Future<Object> resetStorage(String id, ListOfIdsDto listOfIdsDto, { int q, int n, }) async {
    final response = await resetStorageWithHttpInfo(id, listOfIdsDto,  q: q, n: n, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return Future<Object>.value();
  }

  /// Set group password
  ///
  /// Update password for provided group
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group
  ///
  /// * [String] password (required):
  ///   The new password for the group (can only contain digits, letters, - and _)
  Future<Response> setGroupPasswordWithHttpInfo(String id, String password,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (password == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: password');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/group/{id}/password'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'password'] = parameterToString(password);

    const authNames = <String>[];
    const contentTypes = <String>[];


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

  /// Set group password
  ///
  /// Update password for provided group
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group
  ///
  /// * [String] password (required):
  ///   The new password for the group (can only contain digits, letters, - and _)
  Future<GroupDto> setGroupPassword(String id, String password,) async {
    final response = await setGroupPasswordWithHttpInfo(id, password,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupDto',) as GroupDto;
    
    }
    return Future<GroupDto>.value();
  }

  /// Solve conflicts for group
  ///
  /// Solve conflicts for group
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group
  ///
  /// * [int] limit:
  ///   Solve at most limit conflicts
  ///
  /// * [bool] warmup:
  ///   Warmup the design doc
  Future<Response> solveConflictsWithHttpInfo(String id, { int limit, bool warmup, }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/group/{id}/conflicts'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (warmup != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'warmup', warmup));
    }

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

  /// Solve conflicts for group
  ///
  /// Solve conflicts for group
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group
  ///
  /// * [int] limit:
  ///   Solve at most limit conflicts
  ///
  /// * [bool] warmup:
  ///   Warmup the design doc
  Future<List<IdWithRevDto>> solveConflicts(String id, { int limit, bool warmup, }) async {
    final response = await solveConflictsWithHttpInfo(id,  limit: limit, warmup: warmup, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IdWithRevDto>') as List)
        .cast<IdWithRevDto>()
        .toList(growable: false);

    }
    return Future<List<IdWithRevDto>>.value();
  }
}
