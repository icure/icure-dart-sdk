//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class InsuranceApi {
  InsuranceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates an insurance
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [InsuranceDto] insuranceDto (required):
  Future<Response> createInsuranceWithHttpInfo(InsuranceDto insuranceDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/insurance';

    // ignore: prefer_final_locals
    Object? postBody = insuranceDto;

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

  /// Creates an insurance
  ///
  /// Parameters:
  ///
  /// * [InsuranceDto] insuranceDto (required):
  Future<InsuranceDto?> createInsurance(InsuranceDto insuranceDto,) async {
    final response = await createInsuranceWithHttpInfo(insuranceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InsuranceDto',) as InsuranceDto;
    
    }
    return null;
  }

  /// Deletes an insurance
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] insuranceId (required):
  Future<Response> deleteInsuranceWithHttpInfo(String insuranceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/insurance/{insuranceId}'
      .replaceAll('{insuranceId}', insuranceId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Deletes an insurance
  ///
  /// Parameters:
  ///
  /// * [String] insuranceId (required):
  Future<DocIdentifier?> deleteInsurance(String insuranceId,) async {
    final response = await deleteInsuranceWithHttpInfo(insuranceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocIdentifier',) as DocIdentifier;
    
    }
    return null;
  }

  /// Gets an insurance
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] insuranceId (required):
  Future<Response> getInsuranceWithHttpInfo(String insuranceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/insurance/{insuranceId}'
      .replaceAll('{insuranceId}', insuranceId);

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

  /// Gets an insurance
  ///
  /// Parameters:
  ///
  /// * [String] insuranceId (required):
  Future<InsuranceDto?> getInsurance(String insuranceId,) async {
    final response = await getInsuranceWithHttpInfo(insuranceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InsuranceDto',) as InsuranceDto;
    
    }
    return null;
  }

  /// Gets insurances by id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> getInsurancesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/insurance/byIds';

    // ignore: prefer_final_locals
    Object? postBody = listOfIdsDto;

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

  /// Gets insurances by id
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<InsuranceDto>?> getInsurances(ListOfIdsDto listOfIdsDto,) async {
    final response = await getInsurancesWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InsuranceDto>') as List)
        .cast<InsuranceDto>()
        .toList();

    }
    return null;
  }

  /// Gets an insurance
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] insuranceCode (required):
  Future<Response> listInsurancesByCodeWithHttpInfo(String insuranceCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/insurance/byCode/{insuranceCode}'
      .replaceAll('{insuranceCode}', insuranceCode);

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

  /// Gets an insurance
  ///
  /// Parameters:
  ///
  /// * [String] insuranceCode (required):
  Future<List<InsuranceDto>?> listInsurancesByCode(String insuranceCode,) async {
    final response = await listInsurancesByCodeWithHttpInfo(insuranceCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InsuranceDto>') as List)
        .cast<InsuranceDto>()
        .toList();

    }
    return null;
  }

  /// Gets an insurance
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] insuranceName (required):
  Future<Response> listInsurancesByNameWithHttpInfo(String insuranceName,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/insurance/byName/{insuranceName}'
      .replaceAll('{insuranceName}', insuranceName);

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

  /// Gets an insurance
  ///
  /// Parameters:
  ///
  /// * [String] insuranceName (required):
  Future<List<InsuranceDto>?> listInsurancesByName(String insuranceName,) async {
    final response = await listInsurancesByNameWithHttpInfo(insuranceName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InsuranceDto>') as List)
        .cast<InsuranceDto>()
        .toList();

    }
    return null;
  }

  /// Modifies an insurance
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [InsuranceDto] insuranceDto (required):
  Future<Response> modifyInsuranceWithHttpInfo(InsuranceDto insuranceDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/insurance';

    // ignore: prefer_final_locals
    Object? postBody = insuranceDto;

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
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Modifies an insurance
  ///
  /// Parameters:
  ///
  /// * [InsuranceDto] insuranceDto (required):
  Future<InsuranceDto?> modifyInsurance(InsuranceDto insuranceDto,) async {
    final response = await modifyInsuranceWithHttpInfo(insuranceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InsuranceDto',) as InsuranceDto;
    
    }
    return null;
  }
}
