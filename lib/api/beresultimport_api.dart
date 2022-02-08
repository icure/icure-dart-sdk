//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BeresultimportApi {
  BeresultimportApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Can we handle this document
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] enckeys (required):
  Future<Response> canHandleWithHttpInfo(String id, String enckeys,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (enckeys == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: enckeys');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_result_import/canhandle/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'enckeys', enckeys));

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

  /// Can we handle this document
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] enckeys (required):
  Future<bool> canHandle(String id, String enckeys,) async {
    final response = await canHandleWithHttpInfo(id, enckeys,);
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

  /// import document
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] hcpId (required):
  ///
  /// * [String] language (required):
  ///
  /// * [String] protocolIds (required):
  ///
  /// * [String] formIds (required):
  ///
  /// * [String] planOfActionId (required):
  ///
  /// * [String] enckeys (required):
  ///
  /// * [ContactDto] ctc (required):
  Future<Response> doImportWithHttpInfo(String documentId, String hcpId, String language, String protocolIds, String formIds, String planOfActionId, String enckeys, ContactDto ctc,) async {
    // Verify required params are set.
    if (documentId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: documentId');
    }
    if (hcpId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: hcpId');
    }
    if (language == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: language');
    }
    if (protocolIds == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: protocolIds');
    }
    if (formIds == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: formIds');
    }
    if (planOfActionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: planOfActionId');
    }
    if (enckeys == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: enckeys');
    }
    if (ctc == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: ctc');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_result_import/import/{documentId}/{hcpId}/{language}'
      .replaceAll('{documentId}', documentId)
      .replaceAll('{hcpId}', hcpId)
      .replaceAll('{language}', language);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'protocolIds', protocolIds));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'formIds', formIds));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'planOfActionId', planOfActionId));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'enckeys', enckeys));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'ctc', ctc));

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

  /// import document
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] hcpId (required):
  ///
  /// * [String] language (required):
  ///
  /// * [String] protocolIds (required):
  ///
  /// * [String] formIds (required):
  ///
  /// * [String] planOfActionId (required):
  ///
  /// * [String] enckeys (required):
  ///
  /// * [ContactDto] ctc (required):
  Future<ContactDto> doImport(String documentId, String hcpId, String language, String protocolIds, String formIds, String planOfActionId, String enckeys, ContactDto ctc,) async {
    final response = await doImportWithHttpInfo(documentId, hcpId, language, protocolIds, formIds, planOfActionId, enckeys, ctc,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContactDto',) as ContactDto;
    
    }
    return Future<ContactDto>.value();
  }

  /// Extract general infos from document
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] language (required):
  ///
  /// * [String] enckeys (required):
  ///
  /// * [bool] full:
  Future<Response> getInfosWithHttpInfo(String id, String language, String enckeys, { bool full, }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (language == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: language');
    }
    if (enckeys == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: enckeys');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_result_import/infos/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'language', language));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'enckeys', enckeys));
    if (full != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'full', full));
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

  /// Extract general infos from document
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] language (required):
  ///
  /// * [String] enckeys (required):
  ///
  /// * [bool] full:
  Future<List<ResultInfoDto>> getInfos(String id, String language, String enckeys, { bool full, }) async {
    final response = await getInfosWithHttpInfo(id, language, enckeys,  full: full, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ResultInfoDto>') as List)
        .cast<ResultInfoDto>()
        .toList(growable: false);

    }
    return Future<List<ResultInfoDto>>.value();
  }
}
