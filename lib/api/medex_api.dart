//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class MedexApi {
  MedexApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Generate a Medex XML String
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MedexInfoDto] medexInfoDto (required):
  Future<Response> generateMedexWithHttpInfo(MedexInfoDto medexInfoDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/medex/generate';

    // ignore: prefer_final_locals
    Object? postBody = medexInfoDto;

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

  /// Generate a Medex XML String
  ///
  /// Parameters:
  ///
  /// * [MedexInfoDto] medexInfoDto (required):
  Future<String?> generateMedex(MedexInfoDto medexInfoDto,) async {
    final response = await generateMedexWithHttpInfo(medexInfoDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }
}
