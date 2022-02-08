//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FormApi {
  FormApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a form with the current user
  ///
  /// Returns an instance of created form.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FormDto] formDto (required):
  Future<Response> createFormWithHttpInfo(FormDto formDto,) async {
    // Verify required params are set.
    if (formDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: formDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form';

    // ignore: prefer_final_locals
    Object postBody = formDto;

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

  /// Create a form with the current user
  ///
  /// Returns an instance of created form.
  ///
  /// Parameters:
  ///
  /// * [FormDto] formDto (required):
  Future<FormDto> createForm(FormDto formDto,) async {
    final response = await createFormWithHttpInfo(formDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormDto',) as FormDto;
    
    }
    return Future<FormDto>.value();
  }

  /// Create a form template with the current user
  ///
  /// Returns an instance of created form template.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FormTemplateDto] formTemplateDto (required):
  Future<Response> createFormTemplateWithHttpInfo(FormTemplateDto formTemplateDto,) async {
    // Verify required params are set.
    if (formTemplateDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: formTemplateDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form/template';

    // ignore: prefer_final_locals
    Object postBody = formTemplateDto;

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

  /// Create a form template with the current user
  ///
  /// Returns an instance of created form template.
  ///
  /// Parameters:
  ///
  /// * [FormTemplateDto] formTemplateDto (required):
  Future<FormTemplateDto> createFormTemplate(FormTemplateDto formTemplateDto,) async {
    final response = await createFormTemplateWithHttpInfo(formTemplateDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormTemplateDto',) as FormTemplateDto;
    
    }
    return Future<FormTemplateDto>.value();
  }

  /// Create a batch of forms
  ///
  /// Returns the created forms.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<FormDto>] formDto (required):
  Future<Response> createFormsWithHttpInfo(List<FormDto> formDto,) async {
    // Verify required params are set.
    if (formDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: formDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form/batch';

    // ignore: prefer_final_locals
    Object postBody = formDto;

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

  /// Create a batch of forms
  ///
  /// Returns the created forms.
  ///
  /// Parameters:
  ///
  /// * [List<FormDto>] formDto (required):
  Future<List<FormDto>> createForms(List<FormDto> formDto,) async {
    final response = await createFormsWithHttpInfo(formDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FormDto>') as List)
        .cast<FormDto>()
        .toList(growable: false);

    }
    return Future<List<FormDto>>.value();
  }

  /// Delete a form template
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] formTemplateId (required):
  Future<Response> deleteFormTemplateWithHttpInfo(String formTemplateId,) async {
    // Verify required params are set.
    if (formTemplateId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: formTemplateId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form/template/{formTemplateId}'
      .replaceAll('{formTemplateId}', formTemplateId);

    // ignore: prefer_final_locals
    Object postBody;

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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Delete a form template
  ///
  /// Parameters:
  ///
  /// * [String] formTemplateId (required):
  Future<DocIdentifier> deleteFormTemplate(String formTemplateId,) async {
    final response = await deleteFormTemplateWithHttpInfo(formTemplateId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocIdentifier',) as DocIdentifier;
    
    }
    return Future<DocIdentifier>.value();
  }

  /// Delete forms.
  ///
  /// Response is a set containing the ID's of deleted forms.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> deleteFormsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // Verify required params are set.
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form/delete/batch';

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

  /// Delete forms.
  ///
  /// Response is a set containing the ID's of deleted forms.
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>> deleteForms(ListOfIdsDto listOfIdsDto,) async {
    final response = await deleteFormsWithHttpInfo(listOfIdsDto,);
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

  /// Get a list of forms by parents ids
  ///
  /// Keys must be delimited by coma
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] formId (required):
  ///
  /// * [String] hcPartyId (required):
  Future<Response> getChildrenFormsWithHttpInfo(String formId, String hcPartyId,) async {
    // Verify required params are set.
    if (formId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: formId');
    }
    if (hcPartyId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: hcPartyId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form/childrenOf/{formId}/{hcPartyId}'
      .replaceAll('{formId}', formId)
      .replaceAll('{hcPartyId}', hcPartyId);

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

  /// Get a list of forms by parents ids
  ///
  /// Keys must be delimited by coma
  ///
  /// Parameters:
  ///
  /// * [String] formId (required):
  ///
  /// * [String] hcPartyId (required):
  Future<List<FormDto>> getChildrenForms(String formId, String hcPartyId,) async {
    final response = await getChildrenFormsWithHttpInfo(formId, hcPartyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FormDto>') as List)
        .cast<FormDto>()
        .toList(growable: false);

    }
    return Future<List<FormDto>>.value();
  }

  /// Gets a form
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] formId (required):
  Future<Response> getFormWithHttpInfo(String formId,) async {
    // Verify required params are set.
    if (formId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: formId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form/{formId}'
      .replaceAll('{formId}', formId);

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

  /// Gets a form
  ///
  /// Parameters:
  ///
  /// * [String] formId (required):
  Future<FormDto> getForm(String formId,) async {
    final response = await getFormWithHttpInfo(formId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormDto',) as FormDto;
    
    }
    return Future<FormDto>.value();
  }

  /// Gets the most recent form with the given logicalUuid
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] logicalUuid (required):
  Future<Response> getFormByLogicalUuidWithHttpInfo(String logicalUuid,) async {
    // Verify required params are set.
    if (logicalUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: logicalUuid');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form/logicalUuid/{logicalUuid}'
      .replaceAll('{logicalUuid}', logicalUuid);

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

  /// Gets the most recent form with the given logicalUuid
  ///
  /// Parameters:
  ///
  /// * [String] logicalUuid (required):
  Future<FormDto> getFormByLogicalUuid(String logicalUuid,) async {
    final response = await getFormByLogicalUuidWithHttpInfo(logicalUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormDto',) as FormDto;
    
    }
    return Future<FormDto>.value();
  }

  /// Gets the most recent form with the given uniqueId
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uniqueId (required):
  Future<Response> getFormByUniqueIdWithHttpInfo(String uniqueId,) async {
    // Verify required params are set.
    if (uniqueId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: uniqueId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form/uniqueId/{uniqueId}'
      .replaceAll('{uniqueId}', uniqueId);

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

  /// Gets the most recent form with the given uniqueId
  ///
  /// Parameters:
  ///
  /// * [String] uniqueId (required):
  Future<FormDto> getFormByUniqueId(String uniqueId,) async {
    final response = await getFormByUniqueIdWithHttpInfo(uniqueId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormDto',) as FormDto;
    
    }
    return Future<FormDto>.value();
  }

  /// Gets a form template by guid
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] formTemplateId (required):
  Future<Response> getFormTemplateWithHttpInfo(String formTemplateId,) async {
    // Verify required params are set.
    if (formTemplateId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: formTemplateId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form/template/{formTemplateId}'
      .replaceAll('{formTemplateId}', formTemplateId);

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

  /// Gets a form template by guid
  ///
  /// Parameters:
  ///
  /// * [String] formTemplateId (required):
  Future<FormTemplateDto> getFormTemplate(String formTemplateId,) async {
    final response = await getFormTemplateWithHttpInfo(formTemplateId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormTemplateDto',) as FormTemplateDto;
    
    }
    return Future<FormTemplateDto>.value();
  }

  /// Gets all form templates for current user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] loadLayout:
  Future<Response> getFormTemplatesWithHttpInfo({ bool loadLayout, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form/template';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (loadLayout != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'loadLayout', loadLayout));
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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Gets all form templates for current user
  ///
  /// Parameters:
  ///
  /// * [bool] loadLayout:
  Future<List<FormTemplateDto>> getFormTemplates({ bool loadLayout, }) async {
    final response = await getFormTemplatesWithHttpInfo( loadLayout: loadLayout, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FormTemplateDto>') as List)
        .cast<FormTemplateDto>()
        .toList(growable: false);

    }
    return Future<List<FormTemplateDto>>.value();
  }

  /// Gets a form template
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] formTemplateGuid (required):
  ///
  /// * [String] specialityCode (required):
  Future<Response> getFormTemplatesByGuidWithHttpInfo(String formTemplateGuid, String specialityCode,) async {
    // Verify required params are set.
    if (formTemplateGuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: formTemplateGuid');
    }
    if (specialityCode == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: specialityCode');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form/template/{specialityCode}/guid/{formTemplateGuid}'
      .replaceAll('{formTemplateGuid}', formTemplateGuid)
      .replaceAll('{specialityCode}', specialityCode);

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

  /// Gets a form template
  ///
  /// Parameters:
  ///
  /// * [String] formTemplateGuid (required):
  ///
  /// * [String] specialityCode (required):
  Future<List<FormTemplateDto>> getFormTemplatesByGuid(String formTemplateGuid, String specialityCode,) async {
    final response = await getFormTemplatesByGuidWithHttpInfo(formTemplateGuid, specialityCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FormTemplateDto>') as List)
        .cast<FormTemplateDto>()
        .toList(growable: false);

    }
    return Future<List<FormTemplateDto>>.value();
  }

  /// Get a list of forms by ids
  ///
  /// Keys must be delimited by coma
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> getFormsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // Verify required params are set.
    if (listOfIdsDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listOfIdsDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form/byIds';

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

  /// Get a list of forms by ids
  ///
  /// Keys must be delimited by coma
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<FormDto>> getForms(ListOfIdsDto listOfIdsDto,) async {
    final response = await getFormsWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FormDto>') as List)
        .cast<FormDto>()
        .toList(growable: false);

    }
    return Future<List<FormDto>>.value();
  }

  /// Gets all forms with given logicalUuid
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] logicalUuid (required):
  Future<Response> getFormsByLogicalUuidWithHttpInfo(String logicalUuid,) async {
    // Verify required params are set.
    if (logicalUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: logicalUuid');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form/all/logicalUuid/{logicalUuid}'
      .replaceAll('{logicalUuid}', logicalUuid);

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

  /// Gets all forms with given logicalUuid
  ///
  /// Parameters:
  ///
  /// * [String] logicalUuid (required):
  Future<List<FormDto>> getFormsByLogicalUuid(String logicalUuid,) async {
    final response = await getFormsByLogicalUuidWithHttpInfo(logicalUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FormDto>') as List)
        .cast<FormDto>()
        .toList(growable: false);

    }
    return Future<List<FormDto>>.value();
  }

  /// Gets all forms by uniqueId
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uniqueId (required):
  Future<Response> getFormsByUniqueIdWithHttpInfo(String uniqueId,) async {
    // Verify required params are set.
    if (uniqueId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: uniqueId');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form/all/uniqueId/{uniqueId}'
      .replaceAll('{uniqueId}', uniqueId);

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

  /// Gets all forms by uniqueId
  ///
  /// Parameters:
  ///
  /// * [String] uniqueId (required):
  Future<List<FormDto>> getFormsByUniqueId(String uniqueId,) async {
    final response = await getFormsByUniqueIdWithHttpInfo(uniqueId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FormDto>') as List)
        .cast<FormDto>()
        .toList(growable: false);

    }
    return Future<List<FormDto>>.value();
  }

  /// Gets all form templates
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] specialityCode (required):
  ///
  /// * [bool] loadLayout:
  Future<Response> listFormTemplatesBySpecialityWithHttpInfo(String specialityCode, { bool loadLayout, }) async {
    // Verify required params are set.
    if (specialityCode == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: specialityCode');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form/template/bySpecialty/{specialityCode}'
      .replaceAll('{specialityCode}', specialityCode);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (loadLayout != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'loadLayout', loadLayout));
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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Gets all form templates
  ///
  /// Parameters:
  ///
  /// * [String] specialityCode (required):
  ///
  /// * [bool] loadLayout:
  Future<List<FormTemplateDto>> listFormTemplatesBySpeciality(String specialityCode, { bool loadLayout, }) async {
    final response = await listFormTemplatesBySpecialityWithHttpInfo(specialityCode,  loadLayout: loadLayout, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FormTemplateDto>') as List)
        .cast<FormTemplateDto>()
        .toList(growable: false);

    }
    return Future<List<FormTemplateDto>>.value();
  }

  /// List forms found By Healthcare Party and secret foreign keys.
  ///
  /// Keys must be delimited by coma
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  ///
  /// * [String] healthElementId:
  ///
  /// * [String] planOfActionId:
  ///
  /// * [String] formTemplateId:
  Future<Response> listFormsByHCPartyAndPatientForeignKeysWithHttpInfo(String hcPartyId, String secretFKeys, { String healthElementId, String planOfActionId, String formTemplateId, }) async {
    // Verify required params are set.
    if (hcPartyId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: hcPartyId');
    }
    if (secretFKeys == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: secretFKeys');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form/byHcPartySecretForeignKeys';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'hcPartyId', hcPartyId));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'secretFKeys', secretFKeys));
    if (healthElementId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'healthElementId', healthElementId));
    }
    if (planOfActionId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'planOfActionId', planOfActionId));
    }
    if (formTemplateId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'formTemplateId', formTemplateId));
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
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// List forms found By Healthcare Party and secret foreign keys.
  ///
  /// Keys must be delimited by coma
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  ///
  /// * [String] healthElementId:
  ///
  /// * [String] planOfActionId:
  ///
  /// * [String] formTemplateId:
  Future<List<FormDto>> listFormsByHCPartyAndPatientForeignKeys(String hcPartyId, String secretFKeys, { String healthElementId, String planOfActionId, String formTemplateId, }) async {
    final response = await listFormsByHCPartyAndPatientForeignKeysWithHttpInfo(hcPartyId, secretFKeys,  healthElementId: healthElementId, planOfActionId: planOfActionId, formTemplateId: formTemplateId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FormDto>') as List)
        .cast<FormDto>()
        .toList(growable: false);

    }
    return Future<List<FormDto>>.value();
  }

  /// List form stubs found By Healthcare Party and secret foreign keys.
  ///
  /// Keys must be delimited by coma
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<Response> listFormsDelegationsStubsByHCPartyAndPatientForeignKeysWithHttpInfo(String hcPartyId, String secretFKeys,) async {
    // Verify required params are set.
    if (hcPartyId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: hcPartyId');
    }
    if (secretFKeys == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: secretFKeys');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form/byHcPartySecretForeignKeys/delegations';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'hcPartyId', hcPartyId));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'secretFKeys', secretFKeys));

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

  /// List form stubs found By Healthcare Party and secret foreign keys.
  ///
  /// Keys must be delimited by coma
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] secretFKeys (required):
  Future<List<IcureStubDto>> listFormsDelegationsStubsByHCPartyAndPatientForeignKeys(String hcPartyId, String secretFKeys,) async {
    final response = await listFormsDelegationsStubsByHCPartyAndPatientForeignKeysWithHttpInfo(hcPartyId, secretFKeys,);
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

  /// Modify a form
  ///
  /// Returns the modified form.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FormDto] formDto (required):
  Future<Response> modifyFormWithHttpInfo(FormDto formDto,) async {
    // Verify required params are set.
    if (formDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: formDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form';

    // ignore: prefer_final_locals
    Object postBody = formDto;

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

  /// Modify a form
  ///
  /// Returns the modified form.
  ///
  /// Parameters:
  ///
  /// * [FormDto] formDto (required):
  Future<FormDto> modifyForm(FormDto formDto,) async {
    final response = await modifyFormWithHttpInfo(formDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormDto',) as FormDto;
    
    }
    return Future<FormDto>.value();
  }

  /// Modify a batch of forms
  ///
  /// Returns the modified forms.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<FormDto>] formDto (required):
  Future<Response> modifyFormsWithHttpInfo(List<FormDto> formDto,) async {
    // Verify required params are set.
    if (formDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: formDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form/batch';

    // ignore: prefer_final_locals
    Object postBody = formDto;

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

  /// Modify a batch of forms
  ///
  /// Returns the modified forms.
  ///
  /// Parameters:
  ///
  /// * [List<FormDto>] formDto (required):
  Future<List<FormDto>> modifyForms(List<FormDto> formDto,) async {
    final response = await modifyFormsWithHttpInfo(formDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FormDto>') as List)
        .cast<FormDto>()
        .toList(growable: false);

    }
    return Future<List<FormDto>>.value();
  }

  /// Delegates a form to a healthcare party
  ///
  /// It delegates a form to a healthcare party. Returns the form with the new delegations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] formId (required):
  ///
  /// * [List<DelegationDto>] delegationDto (required):
  Future<Response> newFormDelegationsWithHttpInfo(String formId, List<DelegationDto> delegationDto,) async {
    // Verify required params are set.
    if (formId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: formId');
    }
    if (delegationDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: delegationDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form/delegate/{formId}'
      .replaceAll('{formId}', formId);

    // ignore: prefer_final_locals
    Object postBody = delegationDto;

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

  /// Delegates a form to a healthcare party
  ///
  /// It delegates a form to a healthcare party. Returns the form with the new delegations.
  ///
  /// Parameters:
  ///
  /// * [String] formId (required):
  ///
  /// * [List<DelegationDto>] delegationDto (required):
  Future<FormDto> newFormDelegations(String formId, List<DelegationDto> delegationDto,) async {
    final response = await newFormDelegationsWithHttpInfo(formId, delegationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormDto',) as FormDto;
    
    }
    return Future<FormDto>.value();
  }

  /// Update delegations in form.
  ///
  /// Keys must be delimited by coma
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<IcureStubDto>] icureStubDto (required):
  Future<Response> setFormsDelegationsWithHttpInfo(List<IcureStubDto> icureStubDto,) async {
    // Verify required params are set.
    if (icureStubDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: icureStubDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form/delegations';

    // ignore: prefer_final_locals
    Object postBody = icureStubDto;

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

  /// Update delegations in form.
  ///
  /// Keys must be delimited by coma
  ///
  /// Parameters:
  ///
  /// * [List<IcureStubDto>] icureStubDto (required):
  Future<List<IcureStubDto>> setFormsDelegations(List<IcureStubDto> icureStubDto,) async {
    final response = await setFormsDelegationsWithHttpInfo(icureStubDto,);
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

  /// Update a form template's layout
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] formTemplateId (required):
  ///
  /// * [String] attachment (required):
  Future<Response> setTemplateAttachmentMultiWithHttpInfo(String formTemplateId, String attachment,) async {
    // Verify required params are set.
    if (formTemplateId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: formTemplateId');
    }
    if (attachment == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: attachment');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form/template/{formTemplateId}/attachment/multipart'
      .replaceAll('{formTemplateId}', formTemplateId);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('PUT', Uri.parse(path));
    if (attachment != null) {
      hasFields = true;
      mp.fields[r'attachment'] = parameterToString(attachment);
    }
    if (hasFields) {
      postBody = mp;
    }

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

  /// Update a form template's layout
  ///
  /// Parameters:
  ///
  /// * [String] formTemplateId (required):
  ///
  /// * [String] attachment (required):
  Future<String> setTemplateAttachmentMulti(String formTemplateId, String attachment,) async {
    final response = await setTemplateAttachmentMultiWithHttpInfo(formTemplateId, attachment,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return Future<String>.value();
  }

  /// Modify a form template with the current user
  ///
  /// Returns an instance of created form template.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] formTemplateId (required):
  ///
  /// * [FormTemplateDto] formTemplateDto (required):
  Future<Response> updateFormTemplateWithHttpInfo(String formTemplateId, FormTemplateDto formTemplateDto,) async {
    // Verify required params are set.
    if (formTemplateId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: formTemplateId');
    }
    if (formTemplateDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: formTemplateDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/form/template/{formTemplateId}'
      .replaceAll('{formTemplateId}', formTemplateId);

    // ignore: prefer_final_locals
    Object postBody = formTemplateDto;

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

  /// Modify a form template with the current user
  ///
  /// Returns an instance of created form template.
  ///
  /// Parameters:
  ///
  /// * [String] formTemplateId (required):
  ///
  /// * [FormTemplateDto] formTemplateDto (required):
  Future<FormTemplateDto> updateFormTemplate(String formTemplateId, FormTemplateDto formTemplateDto,) async {
    final response = await updateFormTemplateWithHttpInfo(formTemplateId, formTemplateDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormTemplateDto',) as FormTemplateDto;
    
    }
    return Future<FormTemplateDto>.value();
  }
}
