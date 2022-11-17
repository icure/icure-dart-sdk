//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class BeefactApi {
  BeefactApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// create batch and message
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] insuranceId (required):
  ///
  /// * [String] newMessageId (required):
  ///
  /// * [int] numericalRef (required):
  ///
  /// * [MapOfIdsDto] mapOfIdsDto (required):
  Future<Response> createBatchAndMessageWithHttpInfo(String insuranceId, String newMessageId, int numericalRef, MapOfIdsDto mapOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_efact/{insuranceId}/{newMessageId}/{numericalRef}'
        .replaceAll('{insuranceId}', insuranceId)
        .replaceAll('{newMessageId}', newMessageId)
        .replaceAll('{numericalRef}', numericalRef.toString());

    // ignore: prefer_final_locals
    Object? postBody = mapOfIdsDto;

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

  /// create batch and message
  ///
  /// Parameters:
  ///
  /// * [String] insuranceId (required):
  ///
  /// * [String] newMessageId (required):
  ///
  /// * [int] numericalRef (required):
  ///
  /// * [MapOfIdsDto] mapOfIdsDto (required):
  Future<MessageWithBatch?> createBatchAndMessage(String insuranceId, String newMessageId, int numericalRef, MapOfIdsDto mapOfIdsDto,) async {
    final response = await createBatchAndMessageWithHttpInfo(insuranceId, newMessageId, numericalRef, mapOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MessageWithBatch',) as MessageWithBatch;

    }
    return null;
  }
}
