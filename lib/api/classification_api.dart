//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ClassificationApi {
  ClassificationApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a classification with the current user
  ///
  /// Returns an instance of created classification Template.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ClassificationDto] classificationDto (required):
  Future<Response> createClassificationWithHttpInfo(ClassificationDto classificationDto,) async {
    // Verify required params are set.
    if (classificationDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: classificationDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/classification';

    // ignore: prefer_final_locals
    Object postBody = classificationDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
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

  /// Create a classification with the current user
  ///
  /// Returns an instance of created classification Template.
  ///
  /// Parameters:
  ///
  /// * [ClassificationDto] classificationDto (required):
  Future<ClassificationDto> createClassification(ClassificationDto classificationDto,) async {
    final response = await createClassificationWithHttpInfo(classificationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClassificationDto',) as ClassificationDto;
    
    }
    return Future<ClassificationDto>.value();
  }

  /// Delete classification Templates.
  ///
  /// Response is a set containing the ID's of deleted classification Templates.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> deleteClassificationsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // Verify required params are set.
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/classification/delete/batch';

    // ignore: prefer_final_locals
    Object postBody = listOfIdsDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
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

  /// Delete classification Templates.
  ///
  /// Response is a set containing the ID's of deleted classification Templates.
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>> deleteClassifications(ListOfIdsDto listOfIdsDto,) async {
    final response = await deleteClassificationsWithHttpInfo(listOfIdsDto,);
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

  /// List classification Templates found By Healthcare Party and secret foreign keyelementIds.
  ///
  /// Keys hast to delimited by coma
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<Response> findClassificationsByHCPartyPatientForeignKeysWithHttpInfo(String hcPartyId, String secretFKeys,) async {
    // Verify required params are set.
    if (hcPartyId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: hcPartyId');
    }
    if (secretFKeys == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: secretFKeys');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/classification/byHcPartySecretForeignKeys';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'hcPartyId', hcPartyId));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'secretFKeys', secretFKeys));

    const authNames = <String>[];
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

  /// List classification Templates found By Healthcare Party and secret foreign keyelementIds.
  ///
  /// Keys hast to delimited by coma
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<List<ClassificationDto>> findClassificationsByHCPartyPatientForeignKeys(String hcPartyId, String secretFKeys,) async {
    final response = await findClassificationsByHCPartyPatientForeignKeysWithHttpInfo(hcPartyId, secretFKeys,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ClassificationDto>') as List)
        .cast<ClassificationDto>()
        .toList(growable: false);

    }
    return Future<List<ClassificationDto>>.value();
  }

  /// Get a classification Template
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] classificationId (required):
  Future<Response> getClassificationWithHttpInfo(String classificationId,) async {
    // Verify required params are set.
    if (classificationId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: classificationId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/classification/{classificationId}'
      .replaceAll('{classificationId}', classificationId);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
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

  /// Get a classification Template
  ///
  /// Parameters:
  ///
  /// * [String] classificationId (required):
  Future<ClassificationDto> getClassification(String classificationId,) async {
    final response = await getClassificationWithHttpInfo(classificationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClassificationDto',) as ClassificationDto;
    
    }
    return Future<ClassificationDto>.value();
  }

  /// Get a list of classifications
  ///
  /// Ids are seperated by a coma
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ids (required):
  Future<Response> getClassificationByHcPartyIdWithHttpInfo(String ids,) async {
    // Verify required params are set.
    if (ids == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: ids');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/classification/byIds/{ids}'
      .replaceAll('{ids}', ids);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
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

  /// Get a list of classifications
  ///
  /// Ids are seperated by a coma
  ///
  /// Parameters:
  ///
  /// * [String] ids (required):
  Future<List<ClassificationDto>> getClassificationByHcPartyId(String ids,) async {
    final response = await getClassificationByHcPartyIdWithHttpInfo(ids,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ClassificationDto>') as List)
        .cast<ClassificationDto>()
        .toList(growable: false);

    }
    return Future<List<ClassificationDto>>.value();
  }

  /// Modify a classification Template
  ///
  /// Returns the modified classification Template.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ClassificationDto] classificationDto (required):
  Future<Response> modifyClassificationWithHttpInfo(ClassificationDto classificationDto,) async {
    // Verify required params are set.
    if (classificationDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: classificationDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/classification';

    // ignore: prefer_final_locals
    Object postBody = classificationDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
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

  /// Modify a classification Template
  ///
  /// Returns the modified classification Template.
  ///
  /// Parameters:
  ///
  /// * [ClassificationDto] classificationDto (required):
  Future<ClassificationDto> modifyClassification(ClassificationDto classificationDto,) async {
    final response = await modifyClassificationWithHttpInfo(classificationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClassificationDto',) as ClassificationDto;
    
    }
    return Future<ClassificationDto>.value();
  }

  /// Delegates a classification to a healthcare party
  ///
  /// It delegates a classification to a healthcare party (By current healthcare party). Returns the element with new delegations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] classificationId (required):
  ///
  /// * [List<DelegationDto>] delegationDto (required):
  Future<Response> newClassificationDelegationsWithHttpInfo(String classificationId, List<DelegationDto> delegationDto,) async {
    // Verify required params are set.
    if (classificationId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: classificationId');
    }
    if (delegationDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: delegationDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/classification/{classificationId}/delegate'
      .replaceAll('{classificationId}', classificationId);

    // ignore: prefer_final_locals
    Object postBody = delegationDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
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

  /// Delegates a classification to a healthcare party
  ///
  /// It delegates a classification to a healthcare party (By current healthcare party). Returns the element with new delegations.
  ///
  /// Parameters:
  ///
  /// * [String] classificationId (required):
  ///
  /// * [List<DelegationDto>] delegationDto (required):
  Future<ClassificationDto> newClassificationDelegations(String classificationId, List<DelegationDto> delegationDto,) async {
    final response = await newClassificationDelegationsWithHttpInfo(classificationId, delegationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClassificationDto',) as ClassificationDto;
    
    }
    return Future<ClassificationDto>.value();
  }

  /// Update delegations in classification
  ///
  /// Keys must be delimited by coma
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<IcureStubDto>] icureStubDto (required):
  Future<Response> setClassificationsDelegationsWithHttpInfo(List<IcureStubDto> icureStubDto,) async {
    // Verify required params are set.
    if (icureStubDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: icureStubDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/classification/delegations';

    // ignore: prefer_final_locals
    Object postBody = icureStubDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
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

  /// Update delegations in classification
  ///
  /// Keys must be delimited by coma
  ///
  /// Parameters:
  ///
  /// * [List<IcureStubDto>] icureStubDto (required):
  Future<List<IcureStubDto>> setClassificationsDelegations(List<IcureStubDto> icureStubDto,) async {
    final response = await setClassificationsDelegationsWithHttpInfo(icureStubDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IcureStubDto>') as List)
        .cast<IcureStubDto>()
        .toList(growable: false);

    }
    return Future<List<IcureStubDto>>.value();
  }
}
