//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MedicalLocationApi {
  MedicalLocationApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a medical location
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MedicalLocationDto] medicalLocationDto (required):
  Future<Response> createMedicalLocationWithHttpInfo(MedicalLocationDto medicalLocationDto,) async {
    // Verify required params are set.
    if (medicalLocationDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: medicalLocationDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/medicallocation';

    // ignore: prefer_final_locals
    Object postBody = medicalLocationDto;

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

  /// Creates a medical location
  ///
  /// Parameters:
  ///
  /// * [MedicalLocationDto] medicalLocationDto (required):
  Future<MedicalLocationDto> createMedicalLocation(MedicalLocationDto medicalLocationDto,) async {
    final response = await createMedicalLocationWithHttpInfo(medicalLocationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MedicalLocationDto',) as MedicalLocationDto;
    
    }
    return Future<MedicalLocationDto>.value();
  }

  /// Deletes medical locations
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> deleteMedicalLocationsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // Verify required params are set.
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/medicallocation/delete/batch';

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

  /// Deletes medical locations
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>> deleteMedicalLocations(ListOfIdsDto listOfIdsDto,) async {
    final response = await deleteMedicalLocationsWithHttpInfo(listOfIdsDto,);
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

  /// Gets a medical location
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] locationId (required):
  Future<Response> getMedicalLocationWithHttpInfo(String locationId,) async {
    // Verify required params are set.
    if (locationId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: locationId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/medicallocation/{locationId}'
      .replaceAll('{locationId}', locationId);

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

  /// Gets a medical location
  ///
  /// Parameters:
  ///
  /// * [String] locationId (required):
  Future<MedicalLocationDto> getMedicalLocation(String locationId,) async {
    final response = await getMedicalLocationWithHttpInfo(locationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MedicalLocationDto',) as MedicalLocationDto;
    
    }
    return Future<MedicalLocationDto>.value();
  }

  /// Gets all medical locations
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMedicalLocationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/medicallocation';

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

  /// Gets all medical locations
  Future<List<MedicalLocationDto>> getMedicalLocations() async {
    final response = await getMedicalLocationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MedicalLocationDto>') as List)
        .cast<MedicalLocationDto>()
        .toList(growable: false);

    }
    return Future<List<MedicalLocationDto>>.value();
  }

  /// Modifies a medical location
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MedicalLocationDto] medicalLocationDto (required):
  Future<Response> modifyMedicalLocationWithHttpInfo(MedicalLocationDto medicalLocationDto,) async {
    // Verify required params are set.
    if (medicalLocationDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: medicalLocationDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/medicallocation';

    // ignore: prefer_final_locals
    Object postBody = medicalLocationDto;

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

  /// Modifies a medical location
  ///
  /// Parameters:
  ///
  /// * [MedicalLocationDto] medicalLocationDto (required):
  Future<MedicalLocationDto> modifyMedicalLocation(MedicalLocationDto medicalLocationDto,) async {
    final response = await modifyMedicalLocationWithHttpInfo(medicalLocationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MedicalLocationDto',) as MedicalLocationDto;
    
    }
    return Future<MedicalLocationDto>.value();
  }
}
