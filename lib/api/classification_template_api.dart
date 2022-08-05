//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class ClassificationTemplateApi {
  ClassificationTemplateApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a classification Template with the current user
  ///
  /// Returns an instance of created classification Template.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ClassificationTemplateDto] classificationTemplateDto (required):
  Future<Response> createClassificationTemplateWithHttpInfo(ClassificationTemplateDto classificationTemplateDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/classificationTemplate';

    // ignore: prefer_final_locals
    Object? postBody = classificationTemplateDto;

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

  /// Create a classification Template with the current user
  ///
  /// Returns an instance of created classification Template.
  ///
  /// Parameters:
  ///
  /// * [ClassificationTemplateDto] classificationTemplateDto (required):
  Future<ClassificationTemplateDto?> createClassificationTemplate(ClassificationTemplateDto classificationTemplateDto,) async {
    final response = await createClassificationTemplateWithHttpInfo(classificationTemplateDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClassificationTemplateDto',) as ClassificationTemplateDto;

    }
    return null;
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
  Future<Response> deleteClassificationTemplatesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/classificationTemplate/delete/batch';

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

  /// Delete classification Templates.
  ///
  /// Response is a set containing the ID's of deleted classification Templates.
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>?> deleteClassificationTemplates(ListOfIdsDto listOfIdsDto,) async {
    final response = await deleteClassificationTemplatesWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocIdentifier>') as List)
        .cast<DocIdentifier>()
        .toList();

    }
    return null;
  }

  /// List all classification templates with pagination
  ///
  /// Returns a list of classification templates.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] startKey:
  ///   A label
  ///
  /// * [String] startDocumentId:
  ///   An classification template document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findClassificationTemplatesByWithHttpInfo({ String? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/classificationTemplate';

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

  /// List all classification templates with pagination
  ///
  /// Returns a list of classification templates.
  ///
  /// Parameters:
  ///
  /// * [String] startKey:
  ///   A label
  ///
  /// * [String] startDocumentId:
  ///   An classification template document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListClassificationTemplateDto?> findClassificationTemplatesBy({ String? startKey, String? startDocumentId, int? limit, }) async {
    final response = await findClassificationTemplatesByWithHttpInfo( startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListClassificationTemplateDto',) as PaginatedListClassificationTemplateDto;

    }
    return null;
  }

  /// Get a classification Template
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] classificationTemplateId (required):
  Future<Response> getClassificationTemplateWithHttpInfo(String classificationTemplateId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/classificationTemplate/{classificationTemplateId}'.replaceAll('{classificationTemplateId}', classificationTemplateId);

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

  /// Get a classification Template
  ///
  /// Parameters:
  ///
  /// * [String] classificationTemplateId (required):
  Future<ClassificationTemplateDto?> getClassificationTemplate(String classificationTemplateId,) async {
    final response = await getClassificationTemplateWithHttpInfo(classificationTemplateId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClassificationTemplateDto',) as ClassificationTemplateDto;

    }
    return null;
  }

  /// Get a list of classifications Templates
  ///
  /// Ids are seperated by a coma
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ids (required):
  Future<Response> getClassificationTemplateByIdsWithHttpInfo(String ids,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/classificationTemplate/byIds/{ids}'.replaceAll('{ids}', ids);

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

  /// Get a list of classifications Templates
  ///
  /// Ids are seperated by a coma
  ///
  /// Parameters:
  ///
  /// * [String] ids (required):
  Future<List<ClassificationTemplateDto>?> getClassificationTemplateByIds(String ids,) async {
    final response = await getClassificationTemplateByIdsWithHttpInfo(ids,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ClassificationTemplateDto>') as List)
        .cast<ClassificationTemplateDto>()
        .toList();

    }
    return null;
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
  Future<Response> listClassificationTemplatesByHCPartyPatientForeignKeysWithHttpInfo(String hcPartyId, String secretFKeys,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/classificationTemplate/byHcPartySecretForeignKeys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'hcPartyId', hcPartyId));
    queryParams.addAll(_queryParams('', 'secretFKeys', secretFKeys));

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

  /// List classification Templates found By Healthcare Party and secret foreign keyelementIds.
  ///
  /// Keys hast to delimited by coma
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<List<ClassificationTemplateDto>?> listClassificationTemplatesByHCPartyPatientForeignKeys(String hcPartyId, String secretFKeys,) async {
    final response = await listClassificationTemplatesByHCPartyPatientForeignKeysWithHttpInfo(hcPartyId, secretFKeys,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ClassificationTemplateDto>') as List)
        .cast<ClassificationTemplateDto>()
        .toList();

    }
    return null;
  }

  /// Modify a classification Template
  ///
  /// Returns the modified classification Template.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ClassificationTemplateDto] classificationTemplateDto (required):
  Future<Response> modifyClassificationTemplateWithHttpInfo(ClassificationTemplateDto classificationTemplateDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/classificationTemplate';

    // ignore: prefer_final_locals
    Object? postBody = classificationTemplateDto;

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

  /// Modify a classification Template
  ///
  /// Returns the modified classification Template.
  ///
  /// Parameters:
  ///
  /// * [ClassificationTemplateDto] classificationTemplateDto (required):
  Future<ClassificationTemplateDto?> modifyClassificationTemplate(ClassificationTemplateDto classificationTemplateDto,) async {
    final response = await modifyClassificationTemplateWithHttpInfo(classificationTemplateDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClassificationTemplateDto',) as ClassificationTemplateDto;

    }
    return null;
  }

  /// Delegates a classification Template to a healthcare party
  ///
  /// It delegates a classification Template to a healthcare party (By current healthcare party). Returns the element with new delegations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] classificationTemplateId (required):
  ///
  /// * [List<DelegationDto>] delegationDto (required):
  Future<Response> newClassificationTemplateDelegationsWithHttpInfo(String classificationTemplateId, List<DelegationDto> delegationDto,) async {
    // ignore: prefer_const_declarations
    final path =
        r'/rest/v1/classificationTemplate/{classificationTemplateId}/delegate'.replaceAll('{classificationTemplateId}', classificationTemplateId);

    // ignore: prefer_final_locals
    Object? postBody = delegationDto;

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

  /// Delegates a classification Template to a healthcare party
  ///
  /// It delegates a classification Template to a healthcare party (By current healthcare party). Returns the element with new delegations.
  ///
  /// Parameters:
  ///
  /// * [String] classificationTemplateId (required):
  ///
  /// * [List<DelegationDto>] delegationDto (required):
  Future<ClassificationTemplateDto?> newClassificationTemplateDelegations(String classificationTemplateId, List<DelegationDto> delegationDto,) async {
    final response = await newClassificationTemplateDelegationsWithHttpInfo(classificationTemplateId, delegationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClassificationTemplateDto',) as ClassificationTemplateDto;

    }
    return null;
  }
}
