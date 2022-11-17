//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class IcureApi {
  IcureApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get index info
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIndexingInfoWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/icure/i';

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

  /// Get index info
  Future<IndexingInfoDto?> getIndexingInfo() async {
    final response = await getIndexingInfoWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IndexingInfoDto',) as IndexingInfoDto;

    }
    return null;
  }

  /// Get process info
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getProcessInfoWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/icure/p';

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

  /// Get process info
  Future<String?> getProcessInfo() async {
    final response = await getProcessInfoWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;

    }
    return null;
  }

  /// Get replication info
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getReplicationInfoWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/icure/r';

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

  /// Get replication info
  Future<ReplicationInfoDto?> getReplicationInfo() async {
    final response = await getReplicationInfoWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReplicationInfoDto',) as ReplicationInfoDto;

    }
    return null;
  }

  /// Get replication info
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getReplicatorInfoWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/icure/r/{id}'.replaceAll('{id}', id);

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

  /// Get replication info
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<ReplicatorDocument?> getReplicatorInfo(String id,) async {
    final response = await getReplicatorInfoWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReplicatorDocument',) as ReplicatorDocument;

    }
    return null;
  }

  /// Get version
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getVersionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/icure/v';

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

  /// Get version
  Future<String?> getVersion() async {
    final response = await getVersionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;

    }
    return null;
  }

  /// Check if a user exists
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> isReadyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/icure/ok';

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

  /// Check if a user exists
  Future<String?> isReady() async {
    final response = await isReadyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;

    }
    return null;
  }

  /// Resolve contacts conflicts
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<Response> resolveContactsConflictsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/icure/conflicts/contact';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Resolve contacts conflicts
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<List<ContactDto>?> resolveContactsConflicts({ int? limit, }) async {
    final response = await resolveContactsConflictsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
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

  /// resolve documents conflicts
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ids:
  ///
  /// * [int] limit:
  Future<Response> resolveDocumentsConflictsWithHttpInfo({ String? ids, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/icure/conflicts/document';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ids != null) {
      queryParams.addAll(_queryParams('', 'ids', ids));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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
      contentTypes.isEmpty ? null : contentTypes.first,
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
  Future<List<DocumentDto>?> resolveDocumentsConflicts({ String? ids, int? limit, }) async {
    final response = await resolveDocumentsConflictsWithHttpInfo( ids: ids, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocumentDto>') as List)
        .cast<DocumentDto>()
        .toList();

    }
    return null;
  }

  /// resolve forms conflicts
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<Response> resolveFormsConflictsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/icure/conflicts/form';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// resolve forms conflicts
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<List<FormDto>?> resolveFormsConflicts({ int? limit, }) async {
    final response = await resolveFormsConflictsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FormDto>') as List)
        .cast<FormDto>()
        .toList();

    }
    return null;
  }

  /// resolve healthcare elements conflicts
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<Response> resolveHealthElementsConflictsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/icure/conflicts/healthelement';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// resolve healthcare elements conflicts
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<List<HealthElementDto>?> resolveHealthElementsConflicts({ int? limit, }) async {
    final response = await resolveHealthElementsConflictsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HealthElementDto>') as List)
        .cast<HealthElementDto>()
        .toList();

    }
    return null;
  }

  /// resolve invoices conflicts
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<Response> resolveInvoicesConflictsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/icure/conflicts/invoice';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// resolve invoices conflicts
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<List<InvoiceDto>?> resolveInvoicesConflicts({ int? limit, }) async {
    final response = await resolveInvoicesConflictsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
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

  /// resolve messages conflicts
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<Response> resolveMessagesConflictsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/icure/conflicts/message';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// resolve messages conflicts
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<List<MessageDto>?> resolveMessagesConflicts({ int? limit, }) async {
    final response = await resolveMessagesConflictsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MessageDto>') as List)
        .cast<MessageDto>()
        .toList();

    }
    return null;
  }

  /// Resolve patients conflicts
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<Response> resolvePatientsConflictsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/icure/conflicts/patient';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Resolve patients conflicts
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<List<PatientDto>?> resolvePatientsConflicts({ int? limit, }) async {
    final response = await resolvePatientsConflictsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PatientDto>') as List)
        .cast<PatientDto>()
        .toList();

    }
    return null;
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
  Future<Response> updateDesignDocWithHttpInfo(String entityName, { bool? warmup, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/icure/dd/{entityName}'.replaceAll('{entityName}', entityName);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (warmup != null) {
      queryParams.addAll(_queryParams('', 'warmup', warmup));
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
      contentTypes.isEmpty ? null : contentTypes.first,
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
  Future<bool?> updateDesignDoc(String entityName, { bool? warmup, }) async {
    final response = await updateDesignDocWithHttpInfo(entityName,  warmup: warmup, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-ID"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'bool',) as bool;

    }
    return null;
  }
}
