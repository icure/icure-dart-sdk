//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PlaceApi {
  PlaceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a place
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PlaceDto] placeDto (required):
  Future<Response> createPlaceWithHttpInfo(PlaceDto placeDto,) async {
    // Verify required params are set.
    if (placeDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: placeDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/place';

    // ignore: prefer_final_locals
    Object postBody = placeDto;

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

  /// Creates a place
  ///
  /// Parameters:
  ///
  /// * [PlaceDto] placeDto (required):
  Future<PlaceDto> createPlace(PlaceDto placeDto,) async {
    final response = await createPlaceWithHttpInfo(placeDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlaceDto',) as PlaceDto;
    
    }
    return Future<PlaceDto>.value();
  }

  /// Deletes places
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> deletePlacesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // Verify required params are set.
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/place/delete/batch';

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

  /// Deletes places
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>> deletePlaces(ListOfIdsDto listOfIdsDto,) async {
    final response = await deletePlacesWithHttpInfo(listOfIdsDto,);
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

  /// Gets an place
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] placeId (required):
  Future<Response> getPlaceWithHttpInfo(String placeId,) async {
    // Verify required params are set.
    if (placeId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: placeId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/place/{placeId}'
      .replaceAll('{placeId}', placeId);

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

  /// Gets an place
  ///
  /// Parameters:
  ///
  /// * [String] placeId (required):
  Future<PlaceDto> getPlace(String placeId,) async {
    final response = await getPlaceWithHttpInfo(placeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlaceDto',) as PlaceDto;
    
    }
    return Future<PlaceDto>.value();
  }

  /// Gets all places
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlacesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/place';

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

  /// Gets all places
  Future<List<PlaceDto>> getPlaces() async {
    final response = await getPlacesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PlaceDto>') as List)
        .cast<PlaceDto>()
        .toList(growable: false);

    }
    return Future<List<PlaceDto>>.value();
  }

  /// Modifies an place
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PlaceDto] placeDto (required):
  Future<Response> modifyPlaceWithHttpInfo(PlaceDto placeDto,) async {
    // Verify required params are set.
    if (placeDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: placeDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/place';

    // ignore: prefer_final_locals
    Object postBody = placeDto;

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

  /// Modifies an place
  ///
  /// Parameters:
  ///
  /// * [PlaceDto] placeDto (required):
  Future<PlaceDto> modifyPlace(PlaceDto placeDto,) async {
    final response = await modifyPlaceWithHttpInfo(placeDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlaceDto',) as PlaceDto;
    
    }
    return Future<PlaceDto>.value();
  }
}
