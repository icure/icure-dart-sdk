//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class TmpApi {
  TmpApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a classification with the current user
  ///
  /// Returns an instance of created classification.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ClassificationDto] classificationDto (required):
  Future<Response> createTmpClassificationWithHttpInfo(ClassificationDto classificationDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/classification';

    // ignore: prefer_final_locals
    Object? postBody = classificationDto;

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

  /// Create a classification with the current user
  ///
  /// Returns an instance of created classification.
  ///
  /// Parameters:
  ///
  /// * [ClassificationDto] classificationDto (required):
  Future<ClassificationDto?> createTmpClassification(ClassificationDto classificationDto,) async {
    final response = await createTmpClassificationWithHttpInfo(classificationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClassificationDto',) as ClassificationDto;

    }
    return null;
  }

  /// Create a classification with the current user
  ///
  /// Returns an instance of created classification.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<ClassificationDto>] classificationDto (required):
  Future<Response> createTmpClassificationsWithHttpInfo(List<ClassificationDto> classificationDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/classification/batch';

    // ignore: prefer_final_locals
    Object? postBody = classificationDto;

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

  /// Create a classification with the current user
  ///
  /// Returns an instance of created classification.
  ///
  /// Parameters:
  ///
  /// * [List<ClassificationDto>] classificationDto (required):
  Future<List<ClassificationDto>?> createTmpClassifications(List<ClassificationDto> classificationDto,) async {
    final response = await createTmpClassificationsWithHttpInfo(classificationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ClassificationDto>') as List)
        .cast<ClassificationDto>()
        .toList();

    }
    return null;
  }

  /// Create a contact with the current user
  ///
  /// Returns an instance of created contact.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ContactDto] contactDto (required):
  Future<Response> createTmpContactWithHttpInfo(ContactDto contactDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/contact';

    // ignore: prefer_final_locals
    Object? postBody = contactDto;

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

  /// Create a contact with the current user
  ///
  /// Returns an instance of created contact.
  ///
  /// Parameters:
  ///
  /// * [ContactDto] contactDto (required):
  Future<ContactDto?> createTmpContact(ContactDto contactDto,) async {
    final response = await createTmpContactWithHttpInfo(contactDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContactDto',) as ContactDto;

    }
    return null;
  }

  /// Create a contact with the current user
  ///
  /// Returns an instance of created contact.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<ContactDto>] contactDto (required):
  Future<Response> createTmpContactsWithHttpInfo(List<ContactDto> contactDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/contact/batch';

    // ignore: prefer_final_locals
    Object? postBody = contactDto;

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

  /// Create a contact with the current user
  ///
  /// Returns an instance of created contact.
  ///
  /// Parameters:
  ///
  /// * [List<ContactDto>] contactDto (required):
  Future<List<ContactDto>?> createTmpContacts(List<ContactDto> contactDto,) async {
    final response = await createTmpContactsWithHttpInfo(contactDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ContactDto>') as List)
        .cast<ContactDto>()
        .toList();

    }
    return null;
  }

  /// Create tmp database for current user
  ///
  /// Nothing happens if the database already exists
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> createTmpDatabaseWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];

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

  /// Create tmp database for current user
  ///
  /// Nothing happens if the database already exists
  Future<Object?> createTmpDatabase() async {
    final response = await createTmpDatabaseWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;

    }
    return null;
  }

  /// Create a document with the current user
  ///
  /// Returns an instance of created document.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DocumentDto] documentDto (required):
  Future<Response> createTmpDocumentWithHttpInfo(DocumentDto documentDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/document';

    // ignore: prefer_final_locals
    Object? postBody = documentDto;

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

  /// Create a document with the current user
  ///
  /// Returns an instance of created document.
  ///
  /// Parameters:
  ///
  /// * [DocumentDto] documentDto (required):
  Future<DocumentDto?> createTmpDocument(DocumentDto documentDto,) async {
    final response = await createTmpDocumentWithHttpInfo(documentDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentDto',) as DocumentDto;

    }
    return null;
  }

  /// Create a document with the current user
  ///
  /// Returns an instance of created document.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<DocumentDto>] documentDto (required):
  Future<Response> createTmpDocumentsWithHttpInfo(List<DocumentDto> documentDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/document/batch';

    // ignore: prefer_final_locals
    Object? postBody = documentDto;

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

  /// Create a document with the current user
  ///
  /// Returns an instance of created document.
  ///
  /// Parameters:
  ///
  /// * [List<DocumentDto>] documentDto (required):
  Future<List<DocumentDto>?> createTmpDocuments(List<DocumentDto> documentDto,) async {
    final response = await createTmpDocumentsWithHttpInfo(documentDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocumentDto>') as List)
        .cast<DocumentDto>()
        .toList();

    }
    return null;
  }

  /// Create a entityTemplate with the current user
  ///
  /// Returns an instance of created entityTemplate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EntityTemplateDto] entityTemplateDto (required):
  Future<Response> createTmpEntityTemplateWithHttpInfo(EntityTemplateDto entityTemplateDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/entityTemplate';

    // ignore: prefer_final_locals
    Object? postBody = entityTemplateDto;

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

  /// Create a entityTemplate with the current user
  ///
  /// Returns an instance of created entityTemplate.
  ///
  /// Parameters:
  ///
  /// * [EntityTemplateDto] entityTemplateDto (required):
  Future<EntityTemplateDto?> createTmpEntityTemplate(EntityTemplateDto entityTemplateDto,) async {
    final response = await createTmpEntityTemplateWithHttpInfo(entityTemplateDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EntityTemplateDto',) as EntityTemplateDto;

    }
    return null;
  }

  /// Create a entityTemplate with the current user
  ///
  /// Returns an instance of created entityTemplate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<EntityTemplateDto>] entityTemplateDto (required):
  Future<Response> createTmpEntityTemplatesWithHttpInfo(List<EntityTemplateDto> entityTemplateDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/entityTemplate/batch';

    // ignore: prefer_final_locals
    Object? postBody = entityTemplateDto;

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

  /// Create a entityTemplate with the current user
  ///
  /// Returns an instance of created entityTemplate.
  ///
  /// Parameters:
  ///
  /// * [List<EntityTemplateDto>] entityTemplateDto (required):
  Future<List<EntityTemplateDto>?> createTmpEntityTemplates(List<EntityTemplateDto> entityTemplateDto,) async {
    final response = await createTmpEntityTemplatesWithHttpInfo(entityTemplateDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EntityTemplateDto>') as List)
        .cast<EntityTemplateDto>()
        .toList();

    }
    return null;
  }

  /// Create a form with the current user
  ///
  /// Returns an instance of created form.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FormDto] formDto (required):
  Future<Response> createTmpFormWithHttpInfo(FormDto formDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/form';

    // ignore: prefer_final_locals
    Object? postBody = formDto;

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

  /// Create a form with the current user
  ///
  /// Returns an instance of created form.
  ///
  /// Parameters:
  ///
  /// * [FormDto] formDto (required):
  Future<FormDto?> createTmpForm(FormDto formDto,) async {
    final response = await createTmpFormWithHttpInfo(formDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormDto',) as FormDto;

    }
    return null;
  }

  /// Create a form with the current user
  ///
  /// Returns an instance of created form.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<FormDto>] formDto (required):
  Future<Response> createTmpFormsWithHttpInfo(List<FormDto> formDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/form/batch';

    // ignore: prefer_final_locals
    Object? postBody = formDto;

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

  /// Create a form with the current user
  ///
  /// Returns an instance of created form.
  ///
  /// Parameters:
  ///
  /// * [List<FormDto>] formDto (required):
  Future<List<FormDto>?> createTmpForms(List<FormDto> formDto,) async {
    final response = await createTmpFormsWithHttpInfo(formDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FormDto>') as List)
        .cast<FormDto>()
        .toList();

    }
    return null;
  }

  /// Create a healthElement with the current user
  ///
  /// Returns an instance of created healthElement.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [HealthElementDto] healthElementDto (required):
  Future<Response> createTmpHealthElementWithHttpInfo(HealthElementDto healthElementDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/healthElement';

    // ignore: prefer_final_locals
    Object? postBody = healthElementDto;

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

  /// Create a healthElement with the current user
  ///
  /// Returns an instance of created healthElement.
  ///
  /// Parameters:
  ///
  /// * [HealthElementDto] healthElementDto (required):
  Future<HealthElementDto?> createTmpHealthElement(HealthElementDto healthElementDto,) async {
    final response = await createTmpHealthElementWithHttpInfo(healthElementDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HealthElementDto',) as HealthElementDto;

    }
    return null;
  }

  /// Create a healthElement with the current user
  ///
  /// Returns an instance of created healthElement.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<HealthElementDto>] healthElementDto (required):
  Future<Response> createTmpHealthElementsWithHttpInfo(List<HealthElementDto> healthElementDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/healthElement/batch';

    // ignore: prefer_final_locals
    Object? postBody = healthElementDto;

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

  /// Create a healthElement with the current user
  ///
  /// Returns an instance of created healthElement.
  ///
  /// Parameters:
  ///
  /// * [List<HealthElementDto>] healthElementDto (required):
  Future<List<HealthElementDto>?> createTmpHealthElements(List<HealthElementDto> healthElementDto,) async {
    final response = await createTmpHealthElementsWithHttpInfo(healthElementDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HealthElementDto>') as List)
        .cast<HealthElementDto>()
        .toList();

    }
    return null;
  }

  /// Create a invoice with the current user
  ///
  /// Returns an instance of created invoice.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [InvoiceDto] invoiceDto (required):
  Future<Response> createTmpInvoiceWithHttpInfo(InvoiceDto invoiceDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/invoice';

    // ignore: prefer_final_locals
    Object? postBody = invoiceDto;

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

  /// Create a invoice with the current user
  ///
  /// Returns an instance of created invoice.
  ///
  /// Parameters:
  ///
  /// * [InvoiceDto] invoiceDto (required):
  Future<InvoiceDto?> createTmpInvoice(InvoiceDto invoiceDto,) async {
    final response = await createTmpInvoiceWithHttpInfo(invoiceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvoiceDto',) as InvoiceDto;

    }
    return null;
  }

  /// Create a invoice with the current user
  ///
  /// Returns an instance of created invoice.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<InvoiceDto>] invoiceDto (required):
  Future<Response> createTmpInvoicesWithHttpInfo(List<InvoiceDto> invoiceDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/invoice/batch';

    // ignore: prefer_final_locals
    Object? postBody = invoiceDto;

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

  /// Create a invoice with the current user
  ///
  /// Returns an instance of created invoice.
  ///
  /// Parameters:
  ///
  /// * [List<InvoiceDto>] invoiceDto (required):
  Future<List<InvoiceDto>?> createTmpInvoices(List<InvoiceDto> invoiceDto,) async {
    final response = await createTmpInvoicesWithHttpInfo(invoiceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList();

    }
    return null;
  }

  /// Create a message with the current user
  ///
  /// Returns an instance of created message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MessageDto] messageDto (required):
  Future<Response> createTmpMessageWithHttpInfo(MessageDto messageDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/message';

    // ignore: prefer_final_locals
    Object? postBody = messageDto;

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

  /// Create a message with the current user
  ///
  /// Returns an instance of created message.
  ///
  /// Parameters:
  ///
  /// * [MessageDto] messageDto (required):
  Future<MessageDto?> createTmpMessage(MessageDto messageDto,) async {
    final response = await createTmpMessageWithHttpInfo(messageDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MessageDto',) as MessageDto;

    }
    return null;
  }

  /// Create a message with the current user
  ///
  /// Returns an instance of created message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<MessageDto>] messageDto (required):
  Future<Response> createTmpMessagesWithHttpInfo(List<MessageDto> messageDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/message/batch';

    // ignore: prefer_final_locals
    Object? postBody = messageDto;

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

  /// Create a message with the current user
  ///
  /// Returns an instance of created message.
  ///
  /// Parameters:
  ///
  /// * [List<MessageDto>] messageDto (required):
  Future<List<MessageDto>?> createTmpMessages(List<MessageDto> messageDto,) async {
    final response = await createTmpMessagesWithHttpInfo(messageDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MessageDto>') as List)
        .cast<MessageDto>()
        .toList();

    }
    return null;
  }

  /// Create a patient with the current user
  ///
  /// Returns an instance of created patient.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PatientDto] patientDto (required):
  Future<Response> createTmpPatientWithHttpInfo(PatientDto patientDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/patient';

    // ignore: prefer_final_locals
    Object? postBody = patientDto;

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

  /// Create a patient with the current user
  ///
  /// Returns an instance of created patient.
  ///
  /// Parameters:
  ///
  /// * [PatientDto] patientDto (required):
  Future<PatientDto?> createTmpPatient(PatientDto patientDto,) async {
    final response = await createTmpPatientWithHttpInfo(patientDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PatientDto',) as PatientDto;

    }
    return null;
  }

  /// Create a patient with the current user
  ///
  /// Returns an instance of created patient.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<PatientDto>] patientDto (required):
  Future<Response> createTmpPatientsWithHttpInfo(List<PatientDto> patientDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/patient/batch';

    // ignore: prefer_final_locals
    Object? postBody = patientDto;

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

  /// Create a patient with the current user
  ///
  /// Returns an instance of created patient.
  ///
  /// Parameters:
  ///
  /// * [List<PatientDto>] patientDto (required):
  Future<List<PatientDto>?> createTmpPatients(List<PatientDto> patientDto,) async {
    final response = await createTmpPatientsWithHttpInfo(patientDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PatientDto>') as List)
        .cast<PatientDto>()
        .toList();

    }
    return null;
  }

  /// Soft delete items.
  ///
  /// Response is a set containing the ID's of deleted items.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> deleteTmpItemsWithHttpInfo(List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/batch/delete';

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Soft delete items.
  ///
  /// Response is a set containing the ID's of deleted items.
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<List<DocIdentifier>?> deleteTmpItems(List<String> requestBody,) async {
    final response = await deleteTmpItemsWithHttpInfo(requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
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

  /// Destroy tmp database for current user
  ///
  /// Nothing happens if the database does not exists
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> destroyTmpDatabaseWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp';

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

  /// Destroy tmp database for current user
  ///
  /// Nothing happens if the database does not exists
  Future<Object?> destroyTmpDatabase() async {
    final response = await destroyTmpDatabaseWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;

    }
    return null;
  }

  /// Get a classification by id
  ///
  /// Returns an instance of classification.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getTmpClassificationWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/classification/byId/{id}'.replaceAll('{id}', id);

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

  /// Get a classification by id
  ///
  /// Returns an instance of classification.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<ClassificationDto?> getTmpClassification(String id,) async {
    final response = await getTmpClassificationWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClassificationDto',) as ClassificationDto;

    }
    return null;
  }

  /// Get classifications by ids with the current user
  ///
  /// Returns an instance of created classification.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> getTmpClassificationsWithHttpInfo(List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/classification/get';

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Get classifications by ids with the current user
  ///
  /// Returns an instance of created classification.
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<List<ClassificationDto>?> getTmpClassifications(List<String> requestBody,) async {
    final response = await getTmpClassificationsWithHttpInfo(requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ClassificationDto>') as List)
        .cast<ClassificationDto>()
        .toList();

    }
    return null;
  }

  /// Get a contact by id
  ///
  /// Returns an instance of contact.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getTmpContactWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/contact/byId/{id}'.replaceAll('{id}', id);

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

  /// Get a contact by id
  ///
  /// Returns an instance of contact.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<ContactDto?> getTmpContact(String id,) async {
    final response = await getTmpContactWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContactDto',) as ContactDto;

    }
    return null;
  }

  /// Get contacts by ids with the current user
  ///
  /// Returns an instance of created contact.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> getTmpContactsWithHttpInfo(List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/contact/get';

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Get contacts by ids with the current user
  ///
  /// Returns an instance of created contact.
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<List<ContactDto>?> getTmpContacts(List<String> requestBody,) async {
    final response = await getTmpContactsWithHttpInfo(requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ContactDto>') as List)
        .cast<ContactDto>()
        .toList();

    }
    return null;
  }

  /// Get a document by id
  ///
  /// Returns an instance of document.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getTmpDocumentWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/document/byId/{id}'.replaceAll('{id}', id);

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

  /// Get a document by id
  ///
  /// Returns an instance of document.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<DocumentDto?> getTmpDocument(String id,) async {
    final response = await getTmpDocumentWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentDto',) as DocumentDto;

    }
    return null;
  }

  /// Get documents by ids with the current user
  ///
  /// Returns an instance of created document.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> getTmpDocumentsWithHttpInfo(List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/document/get';

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Get documents by ids with the current user
  ///
  /// Returns an instance of created document.
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<List<DocumentDto>?> getTmpDocuments(List<String> requestBody,) async {
    final response = await getTmpDocumentsWithHttpInfo(requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocumentDto>') as List)
        .cast<DocumentDto>()
        .toList();

    }
    return null;
  }

  /// Get a entityTemplate by id
  ///
  /// Returns an instance of entityTemplate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getTmpEntityTemplateWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/entityTemplate/byId/{id}'.replaceAll('{id}', id);

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

  /// Get a entityTemplate by id
  ///
  /// Returns an instance of entityTemplate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<EntityTemplateDto?> getTmpEntityTemplate(String id,) async {
    final response = await getTmpEntityTemplateWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EntityTemplateDto',) as EntityTemplateDto;

    }
    return null;
  }

  /// Get entityTemplates by ids with the current user
  ///
  /// Returns an instance of created entityTemplate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> getTmpEntityTemplatesWithHttpInfo(List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/entityTemplate/get';

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Get entityTemplates by ids with the current user
  ///
  /// Returns an instance of created entityTemplate.
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<List<EntityTemplateDto>?> getTmpEntityTemplates(List<String> requestBody,) async {
    final response = await getTmpEntityTemplatesWithHttpInfo(requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EntityTemplateDto>') as List)
        .cast<EntityTemplateDto>()
        .toList();

    }
    return null;
  }

  /// Get a form by id
  ///
  /// Returns an instance of form.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getTmpFormWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/form/byId/{id}'.replaceAll('{id}', id);

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

  /// Get a form by id
  ///
  /// Returns an instance of form.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<FormDto?> getTmpForm(String id,) async {
    final response = await getTmpFormWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormDto',) as FormDto;

    }
    return null;
  }

  /// Get forms by ids with the current user
  ///
  /// Returns an instance of created form.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> getTmpFormsWithHttpInfo(List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/form/get';

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Get forms by ids with the current user
  ///
  /// Returns an instance of created form.
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<List<FormDto>?> getTmpForms(List<String> requestBody,) async {
    final response = await getTmpFormsWithHttpInfo(requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FormDto>') as List)
        .cast<FormDto>()
        .toList();

    }
    return null;
  }

  /// Get a healthElement by id
  ///
  /// Returns an instance of healthElement.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getTmpHealthElementWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/healthElement/byId/{id}'.replaceAll('{id}', id);

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

  /// Get a healthElement by id
  ///
  /// Returns an instance of healthElement.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<HealthElementDto?> getTmpHealthElement(String id,) async {
    final response = await getTmpHealthElementWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HealthElementDto',) as HealthElementDto;

    }
    return null;
  }

  /// Get healthElements by ids with the current user
  ///
  /// Returns an instance of created healthElement.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> getTmpHealthElementsWithHttpInfo(List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/healthElement/get';

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Get healthElements by ids with the current user
  ///
  /// Returns an instance of created healthElement.
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<List<HealthElementDto>?> getTmpHealthElements(List<String> requestBody,) async {
    final response = await getTmpHealthElementsWithHttpInfo(requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HealthElementDto>') as List)
        .cast<HealthElementDto>()
        .toList();

    }
    return null;
  }

  /// Get a invoice by id
  ///
  /// Returns an instance of invoice.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getTmpInvoiceWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/invoice/byId/{id}'.replaceAll('{id}', id);

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

  /// Get a invoice by id
  ///
  /// Returns an instance of invoice.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<InvoiceDto?> getTmpInvoice(String id,) async {
    final response = await getTmpInvoiceWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvoiceDto',) as InvoiceDto;

    }
    return null;
  }

  /// Get invoices by ids with the current user
  ///
  /// Returns an instance of created invoice.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> getTmpInvoicesWithHttpInfo(List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/invoice/get';

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Get invoices by ids with the current user
  ///
  /// Returns an instance of created invoice.
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<List<InvoiceDto>?> getTmpInvoices(List<String> requestBody,) async {
    final response = await getTmpInvoicesWithHttpInfo(requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList();

    }
    return null;
  }

  /// Get a message by id
  ///
  /// Returns an instance of message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getTmpMessageWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/message/byId/{id}'.replaceAll('{id}', id);

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

  /// Get a message by id
  ///
  /// Returns an instance of message.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<MessageDto?> getTmpMessage(String id,) async {
    final response = await getTmpMessageWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MessageDto',) as MessageDto;

    }
    return null;
  }

  /// Get messages by ids with the current user
  ///
  /// Returns an instance of created message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> getTmpMessagesWithHttpInfo(List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/message/get';

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Get messages by ids with the current user
  ///
  /// Returns an instance of created message.
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<List<MessageDto>?> getTmpMessages(List<String> requestBody,) async {
    final response = await getTmpMessagesWithHttpInfo(requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MessageDto>') as List)
        .cast<MessageDto>()
        .toList();

    }
    return null;
  }

  /// Get a patient by id
  ///
  /// Returns an instance of patient.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getTmpPatientWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/patient/byId/{id}'.replaceAll('{id}', id);

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

  /// Get a patient by id
  ///
  /// Returns an instance of patient.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<PatientDto?> getTmpPatient(String id,) async {
    final response = await getTmpPatientWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PatientDto',) as PatientDto;

    }
    return null;
  }

  /// Get patients by ids with the current user
  ///
  /// Returns an instance of created patient.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> getTmpPatientsWithHttpInfo(List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/patient/get';

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Get patients by ids with the current user
  ///
  /// Returns an instance of created patient.
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<List<PatientDto>?> getTmpPatients(List<String> requestBody,) async {
    final response = await getTmpPatientsWithHttpInfo(requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PatientDto>') as List)
        .cast<PatientDto>()
        .toList();

    }
    return null;
  }

  /// List classifications with the current user
  ///
  /// Returns paginated classifications.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] firstClassificationId:
  ///
  /// * [int] pageSize:
  Future<Response> listTmpClassificationsWithHttpInfo({ String? firstClassificationId, int? pageSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/classification/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (firstClassificationId != null) {
      queryParams.addAll(_queryParams('', 'firstClassificationId', firstClassificationId));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
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

  /// List classifications with the current user
  ///
  /// Returns paginated classifications.
  ///
  /// Parameters:
  ///
  /// * [String] firstClassificationId:
  ///
  /// * [int] pageSize:
  Future<PaginatedListClassificationDto?> listTmpClassifications({ String? firstClassificationId, int? pageSize, }) async {
    final response = await listTmpClassificationsWithHttpInfo( firstClassificationId: firstClassificationId, pageSize: pageSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListClassificationDto',) as PaginatedListClassificationDto;

    }
    return null;
  }

  /// List contacts with the current user
  ///
  /// Returns paginated contacts.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] firstContactId:
  ///
  /// * [int] pageSize:
  Future<Response> listTmpContactsWithHttpInfo({ String? firstContactId, int? pageSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/contact/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (firstContactId != null) {
      queryParams.addAll(_queryParams('', 'firstContactId', firstContactId));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
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

  /// List contacts with the current user
  ///
  /// Returns paginated contacts.
  ///
  /// Parameters:
  ///
  /// * [String] firstContactId:
  ///
  /// * [int] pageSize:
  Future<PaginatedListInvoiceDto?> listTmpContacts({ String? firstContactId, int? pageSize, }) async {
    final response = await listTmpContactsWithHttpInfo( firstContactId: firstContactId, pageSize: pageSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListInvoiceDto',) as PaginatedListInvoiceDto;

    }
    return null;
  }

  /// List documents with the current user
  ///
  /// Returns paginated documents.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] firstDocumentId:
  ///
  /// * [int] pageSize:
  Future<Response> listTmpDocumentsWithHttpInfo({ String? firstDocumentId, int? pageSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/document/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (firstDocumentId != null) {
      queryParams.addAll(_queryParams('', 'firstDocumentId', firstDocumentId));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
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

  /// List documents with the current user
  ///
  /// Returns paginated documents.
  ///
  /// Parameters:
  ///
  /// * [String] firstDocumentId:
  ///
  /// * [int] pageSize:
  Future<PaginatedListDocumentDto?> listTmpDocuments({ String? firstDocumentId, int? pageSize, }) async {
    final response = await listTmpDocumentsWithHttpInfo( firstDocumentId: firstDocumentId, pageSize: pageSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListDocumentDto',) as PaginatedListDocumentDto;

    }
    return null;
  }

  /// List entityTemplates with the current user
  ///
  /// Returns paginated entityTemplates.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] firstEntityTemplateId:
  ///
  /// * [int] pageSize:
  Future<Response> listTmpEntityTemplatesWithHttpInfo({ String? firstEntityTemplateId, int? pageSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/entityTemplate/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (firstEntityTemplateId != null) {
      queryParams.addAll(_queryParams('', 'firstEntityTemplateId', firstEntityTemplateId));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
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

  /// List entityTemplates with the current user
  ///
  /// Returns paginated entityTemplates.
  ///
  /// Parameters:
  ///
  /// * [String] firstEntityTemplateId:
  ///
  /// * [int] pageSize:
  Future<PaginatedListEntityTemplateDto?> listTmpEntityTemplates({ String? firstEntityTemplateId, int? pageSize, }) async {
    final response = await listTmpEntityTemplatesWithHttpInfo( firstEntityTemplateId: firstEntityTemplateId, pageSize: pageSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListEntityTemplateDto',) as PaginatedListEntityTemplateDto;

    }
    return null;
  }

  /// List forms with the current user
  ///
  /// Returns paginated forms.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] firstFormId:
  ///
  /// * [int] pageSize:
  Future<Response> listTmpFormsWithHttpInfo({ String? firstFormId, int? pageSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/form/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (firstFormId != null) {
      queryParams.addAll(_queryParams('', 'firstFormId', firstFormId));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
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

  /// List forms with the current user
  ///
  /// Returns paginated forms.
  ///
  /// Parameters:
  ///
  /// * [String] firstFormId:
  ///
  /// * [int] pageSize:
  Future<PaginatedListFormDto?> listTmpForms({ String? firstFormId, int? pageSize, }) async {
    final response = await listTmpFormsWithHttpInfo( firstFormId: firstFormId, pageSize: pageSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListFormDto',) as PaginatedListFormDto;

    }
    return null;
  }

  /// List healthElements with the current user
  ///
  /// Returns paginated healthElements.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] firstHealthElementId:
  ///
  /// * [int] pageSize:
  Future<Response> listTmpHealthElementsWithHttpInfo({ String? firstHealthElementId, int? pageSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/healthElement/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (firstHealthElementId != null) {
      queryParams.addAll(_queryParams('', 'firstHealthElementId', firstHealthElementId));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
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

  /// List healthElements with the current user
  ///
  /// Returns paginated healthElements.
  ///
  /// Parameters:
  ///
  /// * [String] firstHealthElementId:
  ///
  /// * [int] pageSize:
  Future<PaginatedListHealthElementDto?> listTmpHealthElements({ String? firstHealthElementId, int? pageSize, }) async {
    final response = await listTmpHealthElementsWithHttpInfo( firstHealthElementId: firstHealthElementId, pageSize: pageSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListHealthElementDto',) as PaginatedListHealthElementDto;

    }
    return null;
  }

  /// List invoices with the current user
  ///
  /// Returns paginated invoices.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] firstInvoiceId:
  ///
  /// * [int] pageSize:
  Future<Response> listTmpInvoicesWithHttpInfo({ String? firstInvoiceId, int? pageSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/invoice/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (firstInvoiceId != null) {
      queryParams.addAll(_queryParams('', 'firstInvoiceId', firstInvoiceId));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
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

  /// List invoices with the current user
  ///
  /// Returns paginated invoices.
  ///
  /// Parameters:
  ///
  /// * [String] firstInvoiceId:
  ///
  /// * [int] pageSize:
  Future<PaginatedListInvoiceDto?> listTmpInvoices({ String? firstInvoiceId, int? pageSize, }) async {
    final response = await listTmpInvoicesWithHttpInfo( firstInvoiceId: firstInvoiceId, pageSize: pageSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListInvoiceDto',) as PaginatedListInvoiceDto;

    }
    return null;
  }

  /// List messages with the current user
  ///
  /// Returns paginated messages.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] firstMessageId:
  ///
  /// * [int] pageSize:
  Future<Response> listTmpMessagesWithHttpInfo({ String? firstMessageId, int? pageSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/message/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (firstMessageId != null) {
      queryParams.addAll(_queryParams('', 'firstMessageId', firstMessageId));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
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

  /// List messages with the current user
  ///
  /// Returns paginated messages.
  ///
  /// Parameters:
  ///
  /// * [String] firstMessageId:
  ///
  /// * [int] pageSize:
  Future<PaginatedListInvoiceDto?> listTmpMessages({ String? firstMessageId, int? pageSize, }) async {
    final response = await listTmpMessagesWithHttpInfo( firstMessageId: firstMessageId, pageSize: pageSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListInvoiceDto',) as PaginatedListInvoiceDto;

    }
    return null;
  }

  /// List patients with the current user
  ///
  /// Returns paginated patients.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] firstPatientId:
  ///
  /// * [int] pageSize:
  Future<Response> listTmpPatientsWithHttpInfo({ String? firstPatientId, int? pageSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/patient/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (firstPatientId != null) {
      queryParams.addAll(_queryParams('', 'firstPatientId', firstPatientId));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
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

  /// List patients with the current user
  ///
  /// Returns paginated patients.
  ///
  /// Parameters:
  ///
  /// * [String] firstPatientId:
  ///
  /// * [int] pageSize:
  Future<PaginatedListPatientDto?> listTmpPatients({ String? firstPatientId, int? pageSize, }) async {
    final response = await listTmpPatientsWithHttpInfo( firstPatientId: firstPatientId, pageSize: pageSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListPatientDto',) as PaginatedListPatientDto;

    }
    return null;
  }

  /// Modify a classification
  ///
  /// Returns the modified classification.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ClassificationDto] classificationDto (required):
  Future<Response> modifyTmpClassificationWithHttpInfo(ClassificationDto classificationDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/classification';

    // ignore: prefer_final_locals
    Object? postBody = classificationDto;

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

  /// Modify a classification
  ///
  /// Returns the modified classification.
  ///
  /// Parameters:
  ///
  /// * [ClassificationDto] classificationDto (required):
  Future<ClassificationDto?> modifyTmpClassification(ClassificationDto classificationDto,) async {
    final response = await modifyTmpClassificationWithHttpInfo(classificationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClassificationDto',) as ClassificationDto;

    }
    return null;
  }

  /// Modify a batch of healthcare elements
  ///
  /// Returns the modified healthcare elements.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<ClassificationDto>] classificationDto (required):
  Future<Response> modifyTmpClassificationsWithHttpInfo(List<ClassificationDto> classificationDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/classification/batch';

    // ignore: prefer_final_locals
    Object? postBody = classificationDto;

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

  /// Modify a batch of healthcare elements
  ///
  /// Returns the modified healthcare elements.
  ///
  /// Parameters:
  ///
  /// * [List<ClassificationDto>] classificationDto (required):
  Future<List<ClassificationDto>?> modifyTmpClassifications(List<ClassificationDto> classificationDto,) async {
    final response = await modifyTmpClassificationsWithHttpInfo(classificationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ClassificationDto>') as List)
        .cast<ClassificationDto>()
        .toList();

    }
    return null;
  }

  /// Modify a contact
  ///
  /// Returns the modified contact.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ContactDto] contactDto (required):
  Future<Response> modifyTmpContactWithHttpInfo(ContactDto contactDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/contact';

    // ignore: prefer_final_locals
    Object? postBody = contactDto;

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

  /// Modify a contact
  ///
  /// Returns the modified contact.
  ///
  /// Parameters:
  ///
  /// * [ContactDto] contactDto (required):
  Future<ContactDto?> modifyTmpContact(ContactDto contactDto,) async {
    final response = await modifyTmpContactWithHttpInfo(contactDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContactDto',) as ContactDto;

    }
    return null;
  }

  /// Modify a batch of healthcare elements
  ///
  /// Returns the modified healthcare elements.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<ContactDto>] contactDto (required):
  Future<Response> modifyTmpContactsWithHttpInfo(List<ContactDto> contactDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/contact/batch';

    // ignore: prefer_final_locals
    Object? postBody = contactDto;

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

  /// Modify a batch of healthcare elements
  ///
  /// Returns the modified healthcare elements.
  ///
  /// Parameters:
  ///
  /// * [List<ContactDto>] contactDto (required):
  Future<List<ContactDto>?> modifyTmpContacts(List<ContactDto> contactDto,) async {
    final response = await modifyTmpContactsWithHttpInfo(contactDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ContactDto>') as List)
        .cast<ContactDto>()
        .toList();

    }
    return null;
  }

  /// Modify a document
  ///
  /// Returns the modified document.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DocumentDto] documentDto (required):
  Future<Response> modifyTmpDocumentWithHttpInfo(DocumentDto documentDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/document';

    // ignore: prefer_final_locals
    Object? postBody = documentDto;

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

  /// Modify a document
  ///
  /// Returns the modified document.
  ///
  /// Parameters:
  ///
  /// * [DocumentDto] documentDto (required):
  Future<DocumentDto?> modifyTmpDocument(DocumentDto documentDto,) async {
    final response = await modifyTmpDocumentWithHttpInfo(documentDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentDto',) as DocumentDto;

    }
    return null;
  }

  /// Modify a batch of healthcare elements
  ///
  /// Returns the modified healthcare elements.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<DocumentDto>] documentDto (required):
  Future<Response> modifyTmpDocumentsWithHttpInfo(List<DocumentDto> documentDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/document/batch';

    // ignore: prefer_final_locals
    Object? postBody = documentDto;

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

  /// Modify a batch of healthcare elements
  ///
  /// Returns the modified healthcare elements.
  ///
  /// Parameters:
  ///
  /// * [List<DocumentDto>] documentDto (required):
  Future<List<DocumentDto>?> modifyTmpDocuments(List<DocumentDto> documentDto,) async {
    final response = await modifyTmpDocumentsWithHttpInfo(documentDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocumentDto>') as List)
        .cast<DocumentDto>()
        .toList();

    }
    return null;
  }

  /// Modify a entityTemplate
  ///
  /// Returns the modified entityTemplate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EntityTemplateDto] entityTemplateDto (required):
  Future<Response> modifyTmpEntityTemplateWithHttpInfo(EntityTemplateDto entityTemplateDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/entityTemplate';

    // ignore: prefer_final_locals
    Object? postBody = entityTemplateDto;

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

  /// Modify a entityTemplate
  ///
  /// Returns the modified entityTemplate.
  ///
  /// Parameters:
  ///
  /// * [EntityTemplateDto] entityTemplateDto (required):
  Future<EntityTemplateDto?> modifyTmpEntityTemplate(EntityTemplateDto entityTemplateDto,) async {
    final response = await modifyTmpEntityTemplateWithHttpInfo(entityTemplateDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EntityTemplateDto',) as EntityTemplateDto;

    }
    return null;
  }

  /// Modify a batch of healthcare elements
  ///
  /// Returns the modified healthcare elements.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<EntityTemplateDto>] entityTemplateDto (required):
  Future<Response> modifyTmpEntityTemplatesWithHttpInfo(List<EntityTemplateDto> entityTemplateDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/entityTemplate/batch';

    // ignore: prefer_final_locals
    Object? postBody = entityTemplateDto;

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

  /// Modify a batch of healthcare elements
  ///
  /// Returns the modified healthcare elements.
  ///
  /// Parameters:
  ///
  /// * [List<EntityTemplateDto>] entityTemplateDto (required):
  Future<List<EntityTemplateDto>?> modifyTmpEntityTemplates(List<EntityTemplateDto> entityTemplateDto,) async {
    final response = await modifyTmpEntityTemplatesWithHttpInfo(entityTemplateDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EntityTemplateDto>') as List)
        .cast<EntityTemplateDto>()
        .toList();

    }
    return null;
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
  Future<Response> modifyTmpFormWithHttpInfo(FormDto formDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/form';

    // ignore: prefer_final_locals
    Object? postBody = formDto;

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

  /// Modify a form
  ///
  /// Returns the modified form.
  ///
  /// Parameters:
  ///
  /// * [FormDto] formDto (required):
  Future<FormDto?> modifyTmpForm(FormDto formDto,) async {
    final response = await modifyTmpFormWithHttpInfo(formDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormDto',) as FormDto;

    }
    return null;
  }

  /// Modify a batch of healthcare elements
  ///
  /// Returns the modified healthcare elements.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<FormDto>] formDto (required):
  Future<Response> modifyTmpFormsWithHttpInfo(List<FormDto> formDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/form/batch';

    // ignore: prefer_final_locals
    Object? postBody = formDto;

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

  /// Modify a batch of healthcare elements
  ///
  /// Returns the modified healthcare elements.
  ///
  /// Parameters:
  ///
  /// * [List<FormDto>] formDto (required):
  Future<List<FormDto>?> modifyTmpForms(List<FormDto> formDto,) async {
    final response = await modifyTmpFormsWithHttpInfo(formDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FormDto>') as List)
        .cast<FormDto>()
        .toList();

    }
    return null;
  }

  /// Modify a healthElement
  ///
  /// Returns the modified healthElement.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [HealthElementDto] healthElementDto (required):
  Future<Response> modifyTmpHealthElementWithHttpInfo(HealthElementDto healthElementDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/healthElement';

    // ignore: prefer_final_locals
    Object? postBody = healthElementDto;

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

  /// Modify a healthElement
  ///
  /// Returns the modified healthElement.
  ///
  /// Parameters:
  ///
  /// * [HealthElementDto] healthElementDto (required):
  Future<HealthElementDto?> modifyTmpHealthElement(HealthElementDto healthElementDto,) async {
    final response = await modifyTmpHealthElementWithHttpInfo(healthElementDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HealthElementDto',) as HealthElementDto;

    }
    return null;
  }

  /// Modify a batch of healthcare elements
  ///
  /// Returns the modified healthcare elements.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<HealthElementDto>] healthElementDto (required):
  Future<Response> modifyTmpHealthElementsWithHttpInfo(List<HealthElementDto> healthElementDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/healthElement/batch';

    // ignore: prefer_final_locals
    Object? postBody = healthElementDto;

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

  /// Modify a batch of healthcare elements
  ///
  /// Returns the modified healthcare elements.
  ///
  /// Parameters:
  ///
  /// * [List<HealthElementDto>] healthElementDto (required):
  Future<List<HealthElementDto>?> modifyTmpHealthElements(List<HealthElementDto> healthElementDto,) async {
    final response = await modifyTmpHealthElementsWithHttpInfo(healthElementDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HealthElementDto>') as List)
        .cast<HealthElementDto>()
        .toList();

    }
    return null;
  }

  /// Modify a invoice
  ///
  /// Returns the modified invoice.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [InvoiceDto] invoiceDto (required):
  Future<Response> modifyTmpInvoiceWithHttpInfo(InvoiceDto invoiceDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/invoice';

    // ignore: prefer_final_locals
    Object? postBody = invoiceDto;

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

  /// Modify a invoice
  ///
  /// Returns the modified invoice.
  ///
  /// Parameters:
  ///
  /// * [InvoiceDto] invoiceDto (required):
  Future<InvoiceDto?> modifyTmpInvoice(InvoiceDto invoiceDto,) async {
    final response = await modifyTmpInvoiceWithHttpInfo(invoiceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InvoiceDto',) as InvoiceDto;

    }
    return null;
  }

  /// Modify a batch of healthcare elements
  ///
  /// Returns the modified healthcare elements.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<InvoiceDto>] invoiceDto (required):
  Future<Response> modifyTmpInvoicesWithHttpInfo(List<InvoiceDto> invoiceDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/invoice/batch';

    // ignore: prefer_final_locals
    Object? postBody = invoiceDto;

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

  /// Modify a batch of healthcare elements
  ///
  /// Returns the modified healthcare elements.
  ///
  /// Parameters:
  ///
  /// * [List<InvoiceDto>] invoiceDto (required):
  Future<List<InvoiceDto>?> modifyTmpInvoices(List<InvoiceDto> invoiceDto,) async {
    final response = await modifyTmpInvoicesWithHttpInfo(invoiceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InvoiceDto>') as List)
        .cast<InvoiceDto>()
        .toList();

    }
    return null;
  }

  /// Modify a message
  ///
  /// Returns the modified message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MessageDto] messageDto (required):
  Future<Response> modifyTmpMessageWithHttpInfo(MessageDto messageDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/message';

    // ignore: prefer_final_locals
    Object? postBody = messageDto;

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

  /// Modify a message
  ///
  /// Returns the modified message.
  ///
  /// Parameters:
  ///
  /// * [MessageDto] messageDto (required):
  Future<MessageDto?> modifyTmpMessage(MessageDto messageDto,) async {
    final response = await modifyTmpMessageWithHttpInfo(messageDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MessageDto',) as MessageDto;

    }
    return null;
  }

  /// Modify a batch of healthcare elements
  ///
  /// Returns the modified healthcare elements.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<MessageDto>] messageDto (required):
  Future<Response> modifyTmpMessagesWithHttpInfo(List<MessageDto> messageDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/message/batch';

    // ignore: prefer_final_locals
    Object? postBody = messageDto;

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

  /// Modify a batch of healthcare elements
  ///
  /// Returns the modified healthcare elements.
  ///
  /// Parameters:
  ///
  /// * [List<MessageDto>] messageDto (required):
  Future<List<MessageDto>?> modifyTmpMessages(List<MessageDto> messageDto,) async {
    final response = await modifyTmpMessagesWithHttpInfo(messageDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MessageDto>') as List)
        .cast<MessageDto>()
        .toList();

    }
    return null;
  }

  /// Modify a patient
  ///
  /// Returns the modified patient.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PatientDto] patientDto (required):
  Future<Response> modifyTmpPatientWithHttpInfo(PatientDto patientDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/patient';

    // ignore: prefer_final_locals
    Object? postBody = patientDto;

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

  /// Modify a patient
  ///
  /// Returns the modified patient.
  ///
  /// Parameters:
  ///
  /// * [PatientDto] patientDto (required):
  Future<PatientDto?> modifyTmpPatient(PatientDto patientDto,) async {
    final response = await modifyTmpPatientWithHttpInfo(patientDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PatientDto',) as PatientDto;

    }
    return null;
  }

  /// Modify a batch of healthcare elements
  ///
  /// Returns the modified healthcare elements.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<PatientDto>] patientDto (required):
  Future<Response> modifyTmpPatientsWithHttpInfo(List<PatientDto> patientDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/patient/batch';

    // ignore: prefer_final_locals
    Object? postBody = patientDto;

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

  /// Modify a batch of healthcare elements
  ///
  /// Returns the modified healthcare elements.
  ///
  /// Parameters:
  ///
  /// * [List<PatientDto>] patientDto (required):
  Future<List<PatientDto>?> modifyTmpPatients(List<PatientDto> patientDto,) async {
    final response = await modifyTmpPatientsWithHttpInfo(patientDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PatientDto>') as List)
        .cast<PatientDto>()
        .toList();

    }
    return null;
  }

  /// Hard delete items.
  ///
  /// Response is a set containing the ID's of deleted items.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> purgeTmpItemsWithHttpInfo(List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/batch/purge';

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Hard delete items.
  ///
  /// Response is a set containing the ID's of deleted items.
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<List<DocIdentifier>?> purgeTmpItems(List<String> requestBody,) async {
    final response = await purgeTmpItemsWithHttpInfo(requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
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

  /// Performs an HTTP 'POST /rest/v1/tmp/replicate/from/{from}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] from (required):
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> replicateToTmpDatabaseWithHttpInfo(String from, List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/tmp/replicate/from/{from}'.replaceAll('{from}', from);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Parameters:
  ///
  /// * [String] from (required):
  ///
  /// * [List<String>] requestBody (required):
  Future<ReplicatorDocumentDto?> replicateToTmpDatabase(String from, List<String> requestBody,) async {
    final response = await replicateToTmpDatabaseWithHttpInfo(from, requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReplicatorDocumentDto',) as ReplicatorDocumentDto;

    }
    return null;
  }
}
