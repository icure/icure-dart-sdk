//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class IcureApi {
  IcureApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get index info
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIndexingInfoWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/icure/i';

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

  /// Get index info
  Future<IndexingInfoDto> getIndexingInfo() async {
    final response = await getIndexingInfoWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IndexingInfoDto',) as IndexingInfoDto;
    
    }
    return Future<IndexingInfoDto>.value();
  }

  /// Get process info
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getProcessInfoWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/icure/p';

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

  /// Get process info
  Future<String> getProcessInfo() async {
    final response = await getProcessInfoWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return Future<String>.value();
  }

  /// Get replication info
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getReplicationInfoWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/icure/r';

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

  /// Get replication info
  Future<ReplicationInfoDto> getReplicationInfo() async {
    final response = await getReplicationInfoWithHttpInfo();
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

  /// Get replication info
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getReplicatorInfoWithHttpInfo(String id,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/icure/r/{id}'
      .replaceAll('{id}', id);

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

  /// Get replication info
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<ReplicatorDocument> getReplicatorInfo(String id,) async {
    final response = await getReplicatorInfoWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReplicatorDocument',) as ReplicatorDocument;
    
    }
    return Future<ReplicatorDocument>.value();
  }

  /// Get version
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getVersionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/icure/v';

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

  /// Get version
  Future<String> getVersion() async {
    final response = await getVersionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return Future<String>.value();
  }

  /// Check if a user exists
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> isReadyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/icure/ok';

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

  /// Check if a user exists
  Future<String> isReady() async {
    final response = await isReadyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return Future<String>.value();
  }

  /// Resolve contacts conflicts
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<Response> resolveContactsConflictsWithHttpInfo({ int limit, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/icure/conflicts/contact';

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Resolve contacts conflicts
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<List<ContactDto>> resolveContactsConflicts({ int limit, }) async {
    final response = await resolveContactsConflictsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ContactDto>') as List)
        .cast<ContactDto>()
        .toList(growable: false);

    }
    return Future<List<ContactDto>>.value();
  }

  /// resolve documents conflicts
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ids:
  ///
  /// * [int] limit:
  Future<Response> resolveDocumentsConflictsWithHttpInfo({ String ids, int limit, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/icure/conflicts/document';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ids != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'ids', ids));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }

    const authNames = <String>[r'basicSchema'];
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

  /// resolve documents conflicts
  ///
  /// Parameters:
  ///
  /// * [String] ids:
  ///
  /// * [int] limit:
  Future<List<DocumentDto>> resolveDocumentsConflicts({ String ids, int limit, }) async {
    final response = await resolveDocumentsConflictsWithHttpInfo( ids: ids, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocumentDto>') as List)
        .cast<DocumentDto>()
        .toList(growable: false);

    }
    return Future<List<DocumentDto>>.value();
  }

  /// resolve forms conflicts
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<Response> resolveFormsConflictsWithHttpInfo({ int limit, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/icure/conflicts/form';

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// resolve forms conflicts
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<List<FormDto>> resolveFormsConflicts({ int limit, }) async {
    final response = await resolveFormsConflictsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FormDto>') as List)
        .cast<FormDto>()
        .toList(growable: false);

    }
    return Future<List<FormDto>>.value();
  }

  /// resolve healthcare elements conflicts
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<Response> resolveHealthElementsConflictsWithHttpInfo({ int limit, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/icure/conflicts/healthelement';

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// resolve healthcare elements conflicts
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<List<HealthElementDto>> resolveHealthElementsConflicts({ int limit, }) async {
    final response = await resolveHealthElementsConflictsWithHttpInfo( limit: limit, );
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

  /// resolve invoices conflicts
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<Response> resolveInvoicesConflictsWithHttpInfo({ int limit, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/icure/conflicts/invoice';

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// resolve invoices conflicts
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<List<InvoiceDto>> resolveInvoicesConflicts({ int limit, }) async {
    final response = await resolveInvoicesConflictsWithHttpInfo( limit: limit, );
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

  /// resolve messages conflicts
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<Response> resolveMessagesConflictsWithHttpInfo({ int limit, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/icure/conflicts/message';

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// resolve messages conflicts
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<List<MessageDto>> resolveMessagesConflicts({ int limit, }) async {
    final response = await resolveMessagesConflictsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MessageDto>') as List)
        .cast<MessageDto>()
        .toList(growable: false);

    }
    return Future<List<MessageDto>>.value();
  }

  /// Resolve patients conflicts
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<Response> resolvePatientsConflictsWithHttpInfo({ int limit, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/icure/conflicts/patient';

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Resolve patients conflicts
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<List<PatientDto>> resolvePatientsConflicts({ int limit, }) async {
    final response = await resolvePatientsConflictsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PatientDto>') as List)
        .cast<PatientDto>()
        .toList(growable: false);

    }
    return Future<List<PatientDto>>.value();
  }

  /// Force update design doc
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] entityName (required):
  ///
  /// * [bool] warmup:
  Future<Response> updateDesignDocWithHttpInfo(String entityName, { bool warmup, }) async {
    // Verify required params are set.
    if (entityName == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: entityName');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/icure/dd/{entityName}'
      .replaceAll('{entityName}', entityName);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (warmup != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'warmup', warmup));
    }

    const authNames = <String>[r'basicSchema'];
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

  /// Force update design doc
  ///
  /// Parameters:
  ///
  /// * [String] entityName (required):
  ///
  /// * [bool] warmup:
  Future<bool> updateDesignDoc(String entityName, { bool warmup, }) async {
    final response = await updateDesignDocWithHttpInfo(entityName,  warmup: warmup, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'bool',) as bool;
    
    }
    return Future<bool>.value();
  }
}
