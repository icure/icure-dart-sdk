//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class Besamv2Api {
  Besamv2Api([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Finding AMPs by dmpp code
  ///
  /// Returns a list of amps matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dmppCode (required):
  ///   dmppCode
  Future<Response> findAmpsByDmppCodeWithHttpInfo(String dmppCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/amp/byDmppCode/{dmppCode}'
      .replaceAll('{dmppCode}', dmppCode);

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

  /// Finding AMPs by dmpp code
  ///
  /// Returns a list of amps matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Parameters:
  ///
  /// * [String] dmppCode (required):
  ///   dmppCode
  Future<List<AmpDto>?> findAmpsByDmppCode(String dmppCode,) async {
    final response = await findAmpsByDmppCodeWithHttpInfo(dmppCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AmpDto>') as List)
        .cast<AmpDto>()
        .toList();

    }
    return null;
  }

  /// Finding AMPs by atc code with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] atcCode (required):
  ///   atcCode
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A amp document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findPaginatedAmpsByAtcWithHttpInfo(String atcCode, { String? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/vmp/byAtc/{atcCode}'
      .replaceAll('{atcCode}', atcCode);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Finding AMPs by atc code with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Parameters:
  ///
  /// * [String] atcCode (required):
  ///   atcCode
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A amp document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListAmpDto?> findPaginatedAmpsByAtc(String atcCode, { String? startKey, String? startDocumentId, int? limit, }) async {
    final response = await findPaginatedAmpsByAtcWithHttpInfo(atcCode,  startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListAmpDto',) as PaginatedListAmpDto;
    
    }
    return null;
  }

  /// Finding AMPs by group with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vmpgCode (required):
  ///   vmpgCode
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A vmp document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findPaginatedAmpsByGroupCodeWithHttpInfo(String vmpgCode, { String? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/amp/byGroupCode/{vmpgCode}'
      .replaceAll('{vmpgCode}', vmpgCode);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Finding AMPs by group with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Parameters:
  ///
  /// * [String] vmpgCode (required):
  ///   vmpgCode
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A vmp document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListAmpDto?> findPaginatedAmpsByGroupCode(String vmpgCode, { String? startKey, String? startDocumentId, int? limit, }) async {
    final response = await findPaginatedAmpsByGroupCodeWithHttpInfo(vmpgCode,  startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListAmpDto',) as PaginatedListAmpDto;
    
    }
    return null;
  }

  /// Finding AMPs by group with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vmpgId (required):
  ///   vmpgCode
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A vmp document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findPaginatedAmpsByGroupIdWithHttpInfo(String vmpgId, { String? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/amp/byGroupId/{vmpgId}'
      .replaceAll('{vmpgId}', vmpgId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Finding AMPs by group with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Parameters:
  ///
  /// * [String] vmpgId (required):
  ///   vmpgCode
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A vmp document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListAmpDto?> findPaginatedAmpsByGroupId(String vmpgId, { String? startKey, String? startDocumentId, int? limit, }) async {
    final response = await findPaginatedAmpsByGroupIdWithHttpInfo(vmpgId,  startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListAmpDto',) as PaginatedListAmpDto;
    
    }
    return null;
  }

  /// Finding AMPs by label with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] language:
  ///   language
  ///
  /// * [String] label:
  ///   label
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   An amp document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findPaginatedAmpsByLabelWithHttpInfo({ String? language, String? label, String? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/amp';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }
    if (label != null) {
      queryParams.addAll(_queryParams('', 'label', label));
    }
    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Finding AMPs by label with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Parameters:
  ///
  /// * [String] language:
  ///   language
  ///
  /// * [String] label:
  ///   label
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   An amp document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListAmpDto?> findPaginatedAmpsByLabel({ String? language, String? label, String? startKey, String? startDocumentId, int? limit, }) async {
    final response = await findPaginatedAmpsByLabelWithHttpInfo( language: language, label: label, startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListAmpDto',) as PaginatedListAmpDto;
    
    }
    return null;
  }

  /// Finding AMPs by vmp code with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vmpCode (required):
  ///   vmpCode
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A amp document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findPaginatedAmpsByVmpCodeWithHttpInfo(String vmpCode, { String? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/amp/byVmpCode/{vmpCode}'
      .replaceAll('{vmpCode}', vmpCode);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Finding AMPs by vmp code with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Parameters:
  ///
  /// * [String] vmpCode (required):
  ///   vmpCode
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A amp document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListAmpDto?> findPaginatedAmpsByVmpCode(String vmpCode, { String? startKey, String? startDocumentId, int? limit, }) async {
    final response = await findPaginatedAmpsByVmpCodeWithHttpInfo(vmpCode,  startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListAmpDto',) as PaginatedListAmpDto;
    
    }
    return null;
  }

  /// Finding AMPs by vmp id with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vmpId (required):
  ///   vmpgCode
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A amp document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findPaginatedAmpsByVmpIdWithHttpInfo(String vmpId, { String? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/amp/byVmpId/{vmpId}'
      .replaceAll('{vmpId}', vmpId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Finding AMPs by vmp id with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Parameters:
  ///
  /// * [String] vmpId (required):
  ///   vmpgCode
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A amp document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListAmpDto?> findPaginatedAmpsByVmpId(String vmpId, { String? startKey, String? startDocumentId, int? limit, }) async {
    final response = await findPaginatedAmpsByVmpIdWithHttpInfo(vmpId,  startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListAmpDto',) as PaginatedListAmpDto;
    
    }
    return null;
  }

  /// Finding NMPs by label with pagination.
  ///
  /// Returns a paginated list of NMPs by matching label. Matches occur per word
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] language:
  ///   language
  ///
  /// * [String] label:
  ///   label
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A vmp document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findPaginatedNmpsByLabelWithHttpInfo({ String? language, String? label, String? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/nmp';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }
    if (label != null) {
      queryParams.addAll(_queryParams('', 'label', label));
    }
    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Finding NMPs by label with pagination.
  ///
  /// Returns a paginated list of NMPs by matching label. Matches occur per word
  ///
  /// Parameters:
  ///
  /// * [String] language:
  ///   language
  ///
  /// * [String] label:
  ///   label
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A vmp document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListNmpDto?> findPaginatedNmpsByLabel({ String? language, String? label, String? startKey, String? startDocumentId, int? limit, }) async {
    final response = await findPaginatedNmpsByLabelWithHttpInfo( language: language, label: label, startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListNmpDto',) as PaginatedListNmpDto;
    
    }
    return null;
  }

  /// Finding VMP groups by language label with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] language:
  ///   language
  ///
  /// * [String] label:
  ///   label
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A vmpgroup document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findPaginatedVmpGroupsByLabelWithHttpInfo({ String? language, String? label, String? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/vmpgroup';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }
    if (label != null) {
      queryParams.addAll(_queryParams('', 'label', label));
    }
    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Finding VMP groups by language label with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Parameters:
  ///
  /// * [String] language:
  ///   language
  ///
  /// * [String] label:
  ///   label
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A vmpgroup document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListVmpGroupDto?> findPaginatedVmpGroupsByLabel({ String? language, String? label, String? startKey, String? startDocumentId, int? limit, }) async {
    final response = await findPaginatedVmpGroupsByLabelWithHttpInfo( language: language, label: label, startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListVmpGroupDto',) as PaginatedListVmpGroupDto;
    
    }
    return null;
  }

  /// Finding VMP groups by cmpgCode with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vmpgCode (required):
  ///   vmpgCode
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A vmpgroup document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findPaginatedVmpGroupsByVmpGroupCodeWithHttpInfo(String vmpgCode, { String? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/vmpgroup/byGroupCode/{vmpgCode}'
      .replaceAll('{vmpgCode}', vmpgCode);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Finding VMP groups by cmpgCode with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Parameters:
  ///
  /// * [String] vmpgCode (required):
  ///   vmpgCode
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A vmpgroup document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListVmpGroupDto?> findPaginatedVmpGroupsByVmpGroupCode(String vmpgCode, { String? startKey, String? startDocumentId, int? limit, }) async {
    final response = await findPaginatedVmpGroupsByVmpGroupCodeWithHttpInfo(vmpgCode,  startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListVmpGroupDto',) as PaginatedListVmpGroupDto;
    
    }
    return null;
  }

  /// Finding VMPs by group with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vmpgCode (required):
  ///   vmpgCode
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A vmp document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findPaginatedVmpsByGroupCodeWithHttpInfo(String vmpgCode, { String? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/vmp/byGroupCode/{vmpgCode}'
      .replaceAll('{vmpgCode}', vmpgCode);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Finding VMPs by group with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Parameters:
  ///
  /// * [String] vmpgCode (required):
  ///   vmpgCode
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A vmp document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListVmpDto?> findPaginatedVmpsByGroupCode(String vmpgCode, { String? startKey, String? startDocumentId, int? limit, }) async {
    final response = await findPaginatedVmpsByGroupCodeWithHttpInfo(vmpgCode,  startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListVmpDto',) as PaginatedListVmpDto;
    
    }
    return null;
  }

  /// Finding VMPs by group with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vmpgId (required):
  ///   vmpgId
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A vmp document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findPaginatedVmpsByGroupIdWithHttpInfo(String vmpgId, { String? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/vmp/byGroupId/{vmpgId}'
      .replaceAll('{vmpgId}', vmpgId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Finding VMPs by group with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Parameters:
  ///
  /// * [String] vmpgId (required):
  ///   vmpgId
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A vmp document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListVmpDto?> findPaginatedVmpsByGroupId(String vmpgId, { String? startKey, String? startDocumentId, int? limit, }) async {
    final response = await findPaginatedVmpsByGroupIdWithHttpInfo(vmpgId,  startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListVmpDto',) as PaginatedListVmpDto;
    
    }
    return null;
  }

  /// Finding VMPs by label with pagination.
  ///
  /// Returns a paginated list of VMPs by matching label. Matches occur per word
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] language:
  ///   language
  ///
  /// * [String] label:
  ///   label
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A vmp document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findPaginatedVmpsByLabelWithHttpInfo({ String? language, String? label, String? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/vmp';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }
    if (label != null) {
      queryParams.addAll(_queryParams('', 'label', label));
    }
    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Finding VMPs by label with pagination.
  ///
  /// Returns a paginated list of VMPs by matching label. Matches occur per word
  ///
  /// Parameters:
  ///
  /// * [String] language:
  ///   language
  ///
  /// * [String] label:
  ///   label
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A vmp document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListVmpDto?> findPaginatedVmpsByLabel({ String? language, String? label, String? startKey, String? startDocumentId, int? limit, }) async {
    final response = await findPaginatedVmpsByLabelWithHttpInfo( language: language, label: label, startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListVmpDto',) as PaginatedListVmpDto;
    
    }
    return null;
  }

  /// Finding VMPs by group with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vmpCode (required):
  ///   vmpCode
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A vmp document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findPaginatedVmpsByVmpCodeWithHttpInfo(String vmpCode, { String? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/vmp/byVmpCode/{vmpCode}'
      .replaceAll('{vmpCode}', vmpCode);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Finding VMPs by group with pagination.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Parameters:
  ///
  /// * [String] vmpCode (required):
  ///   vmpCode
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A vmp document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListVmpDto?> findPaginatedVmpsByVmpCode(String vmpCode, { String? startKey, String? startDocumentId, int? limit, }) async {
    final response = await findPaginatedVmpsByVmpCodeWithHttpInfo(vmpCode,  startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListVmpDto',) as PaginatedListVmpDto;
    
    }
    return null;
  }

  /// Get Samv2 version.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSamVersionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/v';

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

  /// Get Samv2 version.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  Future<SamVersionDto?> getSamVersion() async {
    final response = await getSamVersionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SamVersionDto',) as SamVersionDto;
    
    }
    return null;
  }

  /// Finding AMPs by dmpp code
  ///
  /// Returns a list of amps matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> listAmpsByDmppCodesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/amp/byDmppCodes';

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

  /// Finding AMPs by dmpp code
  ///
  /// Returns a list of amps matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<AmpDto>?> listAmpsByDmppCodes(ListOfIdsDto listOfIdsDto,) async {
    final response = await listAmpsByDmppCodesWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AmpDto>') as List)
        .cast<AmpDto>()
        .toList();

    }
    return null;
  }

  /// Finding AMPs by group.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> listAmpsByGroupCodesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/amp/byGroupCodes';

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

  /// Finding AMPs by group.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<AmpDto>?> listAmpsByGroupCodes(ListOfIdsDto listOfIdsDto,) async {
    final response = await listAmpsByGroupCodesWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AmpDto>') as List)
        .cast<AmpDto>()
        .toList();

    }
    return null;
  }

  /// Finding AMPs by group.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> listAmpsByGroupIdsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/amp/byGroupIds';

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

  /// Finding AMPs by group.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<AmpDto>?> listAmpsByGroupIds(ListOfIdsDto listOfIdsDto,) async {
    final response = await listAmpsByGroupIdsWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AmpDto>') as List)
        .cast<AmpDto>()
        .toList();

    }
    return null;
  }

  /// Finding AMPs by vmp code.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> listAmpsByVmpCodesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/amp/byVmpCodes';

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

  /// Finding AMPs by vmp code.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<AmpDto>?> listAmpsByVmpCodes(ListOfIdsDto listOfIdsDto,) async {
    final response = await listAmpsByVmpCodesWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AmpDto>') as List)
        .cast<AmpDto>()
        .toList();

    }
    return null;
  }

  /// Finding AMPs by vmp id.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> listAmpsByVmpIdsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/amp/byVmpIds';

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

  /// Finding AMPs by vmp id.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<AmpDto>?> listAmpsByVmpIds(ListOfIdsDto listOfIdsDto,) async {
    final response = await listAmpsByVmpIdsWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AmpDto>') as List)
        .cast<AmpDto>()
        .toList();

    }
    return null;
  }

  /// Finding NMPs by cnk id.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> listNmpsByCnksWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/nmp/byCnks';

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

  /// Finding NMPs by cnk id.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<NmpDto>?> listNmpsByCnks(ListOfIdsDto listOfIdsDto,) async {
    final response = await listNmpsByCnksWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<NmpDto>') as List)
        .cast<NmpDto>()
        .toList();

    }
    return null;
  }

  /// List all pharmaceutical forms.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listPharmaceuticalFormsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/pharmaform';

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

  /// List all pharmaceutical forms.
  Future<List<PharmaceuticalFormDto>?> listPharmaceuticalForms() async {
    final response = await listPharmaceuticalFormsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PharmaceuticalFormDto>') as List)
        .cast<PharmaceuticalFormDto>()
        .toList();

    }
    return null;
  }

  /// List all substances.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listSubstancesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/substance';

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

  /// List all substances.
  Future<List<SubstanceDto>?> listSubstances() async {
    final response = await listSubstancesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SubstanceDto>') as List)
        .cast<SubstanceDto>()
        .toList();

    }
    return null;
  }

  /// Finding AMPs by group.
  ///
  /// Returns a list of group codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> listVmpGroupsByVmpGroupCodesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/vmpgroup/byGroupCodes';

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

  /// Finding AMPs by group.
  ///
  /// Returns a list of group codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<VmpGroupDto>?> listVmpGroupsByVmpGroupCodes(ListOfIdsDto listOfIdsDto,) async {
    final response = await listVmpGroupsByVmpGroupCodesWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<VmpGroupDto>') as List)
        .cast<VmpGroupDto>()
        .toList();

    }
    return null;
  }

  /// Finding VMPs by group.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> listVmpsByGroupIdsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/vmp/byGroupIds';

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

  /// Finding VMPs by group.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<VmpDto>?> listVmpsByGroupIds(ListOfIdsDto listOfIdsDto,) async {
    final response = await listVmpsByGroupIdsWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<VmpDto>') as List)
        .cast<VmpDto>()
        .toList();

    }
    return null;
  }

  /// Finding VMPs by group.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> listVmpsByVmpCodesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/be_samv2/vmp/byVmpCodes';

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

  /// Finding VMPs by group.
  ///
  /// Returns a list of codes matched with given input. If several types are provided, paginantion is not supported
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<VmpDto>?> listVmpsByVmpCodes(ListOfIdsDto listOfIdsDto,) async {
    final response = await listVmpsByVmpCodesWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<VmpDto>') as List)
        .cast<VmpDto>()
        .toList();

    }
    return null;
  }
}
