//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class BeresultimportApi {
  BeresultimportApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_result_import/canhandle/{id}'
        .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'enckeys', enckeys));

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

  /// Can we handle this document
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] enckeys (required):
  Future<bool?> canHandle(String id, String enckeys,) async {
    final response = await canHandleWithHttpInfo(id, enckeys,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'bool',) as bool;

    }
    return null;
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
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_result_import/import/{documentId}/{hcpId}/{language}'
        .replaceAll('{documentId}', documentId)
        .replaceAll('{hcpId}', hcpId)
        .replaceAll('{language}', language);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'protocolIds', protocolIds));
      queryParams.addAll(_queryParams('', 'formIds', formIds));
      queryParams.addAll(_queryParams('', 'planOfActionId', planOfActionId));
      queryParams.addAll(_queryParams('', 'enckeys', enckeys));
      queryParams.addAll(_queryParams('', 'ctc', ctc));

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
  Future<ContactDto?> doImport(String documentId, String hcpId, String language, String protocolIds, String formIds, String planOfActionId, String enckeys, ContactDto ctc,) async {
    final response = await doImportWithHttpInfo(documentId, hcpId, language, protocolIds, formIds, planOfActionId, enckeys, ctc,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContactDto',) as ContactDto;

    }
    return null;
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
  Future<Response> getInfosWithHttpInfo(String id, String language, String enckeys, { bool? full, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_result_import/infos/{id}'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'language', language));
      queryParams.addAll(_queryParams('', 'enckeys', enckeys));
    if (full != null) {
      queryParams.addAll(_queryParams('', 'full', full));
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
  Future<List<ResultInfoDto>?> getInfos(String id, String language, String enckeys, { bool? full, }) async {
    final response = await getInfosWithHttpInfo(id, language, enckeys,  full: full, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["x-request-id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ResultInfoDto>') as List)
        .cast<ResultInfoDto>()
        .toList();

    }
    return null;
  }
}
