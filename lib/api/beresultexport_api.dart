//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class BeresultexportApi {
  BeresultexportApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Export data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fromHcpId (required):
  ///
  /// * [String] toHcpId (required):
  ///
  /// * [String] patId (required):
  ///
  /// * [int] date (required):
  ///
  /// * [String] ref (required):
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> exportHealthOneWithHttpInfo(String fromHcpId, String toHcpId, String patId, int date, String ref, List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_result_export/hl1/{fromHcpId}/{toHcpId}/{patId}/{date}/{ref}'
      .replaceAll('{fromHcpId}', fromHcpId)
      .replaceAll('{toHcpId}', toHcpId)
      .replaceAll('{patId}', patId)
      .replaceAll('{date}', date.toString())
      .replaceAll('{ref}', ref);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/octet-stream'];


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

  /// Export data
  ///
  /// Parameters:
  ///
  /// * [String] fromHcpId (required):
  ///
  /// * [String] toHcpId (required):
  ///
  /// * [String] patId (required):
  ///
  /// * [int] date (required):
  ///
  /// * [String] ref (required):
  ///
  /// * [List<String>] requestBody (required):
  Future<MultipartFile?> exportHealthOne(String fromHcpId, String toHcpId, String patId, int date, String ref, List<String> requestBody,) async {
    final response = await exportHealthOneWithHttpInfo(fromHcpId, toHcpId, patId, date, ref, requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Export data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fromHcpId (required):
  ///
  /// * [String] toHcpId (required):
  ///
  /// * [String] patId (required):
  ///
  /// * [int] date (required):
  ///
  /// * [String] ref (required):
  ///
  /// * [List<String>] requestBody (required):
  ///
  /// * [bool] mimeType:
  Future<Response> exportKmehrReportWithHttpInfo(String fromHcpId, String toHcpId, String patId, int date, String ref, List<String> requestBody, { bool? mimeType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_result_export/kmehrreport/{fromHcpId}/{toHcpId}/{patId}/{date}/{ref}'
      .replaceAll('{fromHcpId}', fromHcpId)
      .replaceAll('{toHcpId}', toHcpId)
      .replaceAll('{patId}', patId)
      .replaceAll('{date}', date.toString())
      .replaceAll('{ref}', ref);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (mimeType != null) {
      queryParams.addAll(_queryParams('', 'mimeType', mimeType));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/octet-stream'];


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

  /// Export data
  ///
  /// Parameters:
  ///
  /// * [String] fromHcpId (required):
  ///
  /// * [String] toHcpId (required):
  ///
  /// * [String] patId (required):
  ///
  /// * [int] date (required):
  ///
  /// * [String] ref (required):
  ///
  /// * [List<String>] requestBody (required):
  ///
  /// * [bool] mimeType:
  Future<MultipartFile?> exportKmehrReport(String fromHcpId, String toHcpId, String patId, int date, String ref, List<String> requestBody, { bool? mimeType, }) async {
    final response = await exportKmehrReportWithHttpInfo(fromHcpId, toHcpId, patId, date, ref, requestBody,  mimeType: mimeType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Export data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fromHcpId (required):
  ///
  /// * [String] toHcpId (required):
  ///
  /// * [String] patId (required):
  ///
  /// * [int] date (required):
  ///
  /// * [String] ref (required):
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> exportMedidocWithHttpInfo(String fromHcpId, String toHcpId, String patId, int date, String ref, List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_result_export/medidoc/{fromHcpId}/{toHcpId}/{patId}/{date}/{ref}'
      .replaceAll('{fromHcpId}', fromHcpId)
      .replaceAll('{toHcpId}', toHcpId)
      .replaceAll('{patId}', patId)
      .replaceAll('{date}', date.toString())
      .replaceAll('{ref}', ref);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/octet-stream'];


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

  /// Export data
  ///
  /// Parameters:
  ///
  /// * [String] fromHcpId (required):
  ///
  /// * [String] toHcpId (required):
  ///
  /// * [String] patId (required):
  ///
  /// * [int] date (required):
  ///
  /// * [String] ref (required):
  ///
  /// * [List<String>] requestBody (required):
  Future<MultipartFile?> exportMedidoc(String fromHcpId, String toHcpId, String patId, int date, String ref, List<String> requestBody,) async {
    final response = await exportMedidocWithHttpInfo(fromHcpId, toHcpId, patId, date, ref, requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }
}
