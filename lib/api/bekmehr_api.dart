//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;


class BekmehrApi {
  BekmehrApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Check whether patients in SMF already exists in DB
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] documentKey:
  ///
  /// * [String] patientId:
  ///
  /// * [String] language:
  ///
  /// * [Map<String, List<ImportMapping>>] requestBody:
  Future<Response> checkIfSMFPatientsExistsWithHttpInfo(String documentId, { String? documentKey, String? patientId, String? language, Map<String, List<ImportMapping>>? requestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/smf/{documentId}/checkIfSMFPatientsExists'.replaceAll('{documentId}', documentId);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (documentKey != null) {
      queryParams.addAll(_queryParams('', 'documentKey', documentKey));
    }
    if (patientId != null) {
      queryParams.addAll(_queryParams('', 'patientId', patientId));
    }
    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }

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

  /// Check whether patients in SMF already exists in DB
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] documentKey:
  ///
  /// * [String] patientId:
  ///
  /// * [String] language:
  ///
  /// * [Map<String, List<ImportMapping>>] requestBody:
  Future<List<CheckSMFPatientResult>?> checkIfSMFPatientsExists(String documentId, { String? documentKey, String? patientId, String? language, Map<String, List<ImportMapping>>? requestBody, }) async {
    final response = await checkIfSMFPatientsExistsWithHttpInfo(documentId,  documentKey: documentKey, patientId: patientId, language: language, requestBody: requestBody, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CheckSMFPatientResult>') as List)
        .cast<CheckSMFPatientResult>()
        .toList();

    }
    return null;
  }

  /// Get Kmehr contactreport
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] id (required):
  ///
  /// * [int] date (required):
  ///
  /// * [String] language (required):
  ///
  /// * [String] recipientNihii (required):
  ///
  /// * [String] recipientSsin (required):
  ///
  /// * [String] recipientFirstName (required):
  ///
  /// * [String] recipientLastName (required):
  ///
  /// * [String] mimeType (required):
  ///
  /// * [MultipartFile] body (required):
  Future<Response> generateContactreportExportWithHttpInfo(String patientId, String id, int date, String language, String recipientNihii, String recipientSsin, String recipientFirstName, String recipientLastName, String mimeType, MultipartFile body,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/contactreport/{patientId}/export/{id}'.replaceAll('{patientId}', patientId).replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'date', date));
      queryParams.addAll(_queryParams('', 'language', language));
      queryParams.addAll(_queryParams('', 'recipientNihii', recipientNihii));
      queryParams.addAll(_queryParams('', 'recipientSsin', recipientSsin));
      queryParams.addAll(_queryParams('', 'recipientFirstName', recipientFirstName));
      queryParams.addAll(_queryParams('', 'recipientLastName', recipientLastName));
      queryParams.addAll(_queryParams('', 'mimeType', mimeType));

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/octet-stream'];


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

  /// Get Kmehr contactreport
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] id (required):
  ///
  /// * [int] date (required):
  ///
  /// * [String] language (required):
  ///
  /// * [String] recipientNihii (required):
  ///
  /// * [String] recipientSsin (required):
  ///
  /// * [String] recipientFirstName (required):
  ///
  /// * [String] recipientLastName (required):
  ///
  /// * [String] mimeType (required):
  ///
  /// * [MultipartFile] body (required):
  Future<MultipartFile?> generateContactreportExport(String patientId, String id, int date, String language, String recipientNihii, String recipientSsin, String recipientFirstName, String recipientLastName, String mimeType, MultipartFile body,) async {
    final response = await generateContactreportExportWithHttpInfo(patientId, id, date, language, recipientNihii, recipientSsin, recipientFirstName, recipientLastName, mimeType, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;

    }
    return null;
  }

  /// Generate diarynote
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] language (required):
  ///
  /// * [DiaryNoteExportInfoDto] diaryNoteExportInfoDto (required):
  Future<Response> generateDiaryNoteWithHttpInfo(String patientId, String language, DiaryNoteExportInfoDto diaryNoteExportInfoDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/diarynote/{patientId}/export'.replaceAll('{patientId}', patientId);

    // ignore: prefer_final_locals
    Object? postBody = diaryNoteExportInfoDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'language', language));

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

  /// Generate diarynote
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] language (required):
  ///
  /// * [DiaryNoteExportInfoDto] diaryNoteExportInfoDto (required):
  Future<MultipartFile?> generateDiaryNote(String patientId, String language, DiaryNoteExportInfoDto diaryNoteExportInfoDto,) async {
    final response = await generateDiaryNoteWithHttpInfo(patientId, language, diaryNoteExportInfoDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;

    }
    return null;
  }

  /// Get Kmehr labresult
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] id (required):
  ///
  /// * [int] date (required):
  ///
  /// * [String] language (required):
  ///
  /// * [String] recipientNihii (required):
  ///
  /// * [String] recipientSsin (required):
  ///
  /// * [String] recipientFirstName (required):
  ///
  /// * [String] recipientLastName (required):
  ///
  /// * [String] mimeType (required):
  ///
  /// * [MultipartFile] body (required):
  Future<Response> generateLabresultExportWithHttpInfo(String patientId, String id, int date, String language, String recipientNihii, String recipientSsin, String recipientFirstName, String recipientLastName, String mimeType, MultipartFile body,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/labresult/{patientId}/export/{id}'.replaceAll('{patientId}', patientId).replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'date', date));
      queryParams.addAll(_queryParams('', 'language', language));
      queryParams.addAll(_queryParams('', 'recipientNihii', recipientNihii));
      queryParams.addAll(_queryParams('', 'recipientSsin', recipientSsin));
      queryParams.addAll(_queryParams('', 'recipientFirstName', recipientFirstName));
      queryParams.addAll(_queryParams('', 'recipientLastName', recipientLastName));
      queryParams.addAll(_queryParams('', 'mimeType', mimeType));

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/octet-stream'];


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

  /// Get Kmehr labresult
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] id (required):
  ///
  /// * [int] date (required):
  ///
  /// * [String] language (required):
  ///
  /// * [String] recipientNihii (required):
  ///
  /// * [String] recipientSsin (required):
  ///
  /// * [String] recipientFirstName (required):
  ///
  /// * [String] recipientLastName (required):
  ///
  /// * [String] mimeType (required):
  ///
  /// * [MultipartFile] body (required):
  Future<MultipartFile?> generateLabresultExport(String patientId, String id, int date, String language, String recipientNihii, String recipientSsin, String recipientFirstName, String recipientLastName, String mimeType, MultipartFile body,) async {
    final response = await generateLabresultExportWithHttpInfo(patientId, id, date, language, recipientNihii, recipientSsin, recipientFirstName, recipientLastName, mimeType, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;

    }
    return null;
  }

  /// Get Medicationscheme export
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] language (required):
  ///
  /// * [String] recipientSafe (required):
  ///
  /// * [int] version (required):
  ///
  /// * [MedicationSchemeExportInfoDto] medicationSchemeExportInfoDto (required):
  Future<Response> generateMedicationSchemeExportWithHttpInfo(String patientId, String language, String recipientSafe, int version, MedicationSchemeExportInfoDto medicationSchemeExportInfoDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/medicationscheme/{patientId}/export'.replaceAll('{patientId}', patientId);

    // ignore: prefer_final_locals
    Object? postBody = medicationSchemeExportInfoDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'language', language));
      queryParams.addAll(_queryParams('', 'recipientSafe', recipientSafe));
      queryParams.addAll(_queryParams('', 'version', version));

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

  /// Get Medicationscheme export
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] language (required):
  ///
  /// * [String] recipientSafe (required):
  ///
  /// * [int] version (required):
  ///
  /// * [MedicationSchemeExportInfoDto] medicationSchemeExportInfoDto (required):
  Future<MultipartFile?> generateMedicationSchemeExport(String patientId, String language, String recipientSafe, int version, MedicationSchemeExportInfoDto medicationSchemeExportInfoDto,) async {
    final response = await generateMedicationSchemeExportWithHttpInfo(patientId, language, recipientSafe, version, medicationSchemeExportInfoDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;

    }
    return null;
  }

  /// Get Kmehr note
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] id (required):
  ///
  /// * [int] date (required):
  ///
  /// * [String] language (required):
  ///
  /// * [String] recipientNihii (required):
  ///
  /// * [String] recipientSsin (required):
  ///
  /// * [String] recipientFirstName (required):
  ///
  /// * [String] recipientLastName (required):
  ///
  /// * [String] mimeType (required):
  ///
  /// * [MultipartFile] body (required):
  Future<Response> generateNoteExportWithHttpInfo(String patientId, String id, int date, String language, String recipientNihii, String recipientSsin, String recipientFirstName, String recipientLastName, String mimeType, MultipartFile body,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/note/{patientId}/export/{id}'.replaceAll('{patientId}', patientId).replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'date', date));
      queryParams.addAll(_queryParams('', 'language', language));
      queryParams.addAll(_queryParams('', 'recipientNihii', recipientNihii));
      queryParams.addAll(_queryParams('', 'recipientSsin', recipientSsin));
      queryParams.addAll(_queryParams('', 'recipientFirstName', recipientFirstName));
      queryParams.addAll(_queryParams('', 'recipientLastName', recipientLastName));
      queryParams.addAll(_queryParams('', 'mimeType', mimeType));

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/octet-stream'];


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

  /// Get Kmehr note
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] id (required):
  ///
  /// * [int] date (required):
  ///
  /// * [String] language (required):
  ///
  /// * [String] recipientNihii (required):
  ///
  /// * [String] recipientSsin (required):
  ///
  /// * [String] recipientFirstName (required):
  ///
  /// * [String] recipientLastName (required):
  ///
  /// * [String] mimeType (required):
  ///
  /// * [MultipartFile] body (required):
  Future<MultipartFile?> generateNoteExport(String patientId, String id, int date, String language, String recipientNihii, String recipientSsin, String recipientFirstName, String recipientLastName, String mimeType, MultipartFile body,) async {
    final response = await generateNoteExportWithHttpInfo(patientId, id, date, language, recipientNihii, recipientSsin, recipientFirstName, recipientLastName, mimeType, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;

    }
    return null;
  }

  /// Get KMEHR Patient Info export
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] language:
  Future<Response> generatePatientInfoExportWithHttpInfo(String patientId, { String? language, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/patientinfo/{patientId}/export'.replaceAll('{patientId}', patientId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }

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

  /// Get KMEHR Patient Info export
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] language:
  Future<MultipartFile?> generatePatientInfoExport(String patientId, { String? language, }) async {
    final response = await generatePatientInfoExportWithHttpInfo(patientId,  language: language, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;

    }
    return null;
  }

  /// Get Kmehr prescription
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] id (required):
  ///
  /// * [int] date (required):
  ///
  /// * [String] language (required):
  ///
  /// * [String] recipientNihii (required):
  ///
  /// * [String] recipientSsin (required):
  ///
  /// * [String] recipientFirstName (required):
  ///
  /// * [String] recipientLastName (required):
  ///
  /// * [String] mimeType (required):
  ///
  /// * [MultipartFile] body (required):
  Future<Response> generatePrescriptionExportWithHttpInfo(String patientId, String id, int date, String language, String recipientNihii, String recipientSsin, String recipientFirstName, String recipientLastName, String mimeType, MultipartFile body,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/prescription/{patientId}/export/{id}'
        .replaceAll('{patientId}', patientId)
        .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'date', date));
      queryParams.addAll(_queryParams('', 'language', language));
      queryParams.addAll(_queryParams('', 'recipientNihii', recipientNihii));
      queryParams.addAll(_queryParams('', 'recipientSsin', recipientSsin));
      queryParams.addAll(_queryParams('', 'recipientFirstName', recipientFirstName));
      queryParams.addAll(_queryParams('', 'recipientLastName', recipientLastName));
      queryParams.addAll(_queryParams('', 'mimeType', mimeType));

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/octet-stream'];


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

  /// Get Kmehr prescription
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] id (required):
  ///
  /// * [int] date (required):
  ///
  /// * [String] language (required):
  ///
  /// * [String] recipientNihii (required):
  ///
  /// * [String] recipientSsin (required):
  ///
  /// * [String] recipientFirstName (required):
  ///
  /// * [String] recipientLastName (required):
  ///
  /// * [String] mimeType (required):
  ///
  /// * [MultipartFile] body (required):
  Future<MultipartFile?> generatePrescriptionExport(String patientId, String id, int date, String language, String recipientNihii, String recipientSsin, String recipientFirstName, String recipientLastName, String mimeType, MultipartFile body,) async {
    final response = await generatePrescriptionExportWithHttpInfo(patientId, id, date, language, recipientNihii, recipientSsin, recipientFirstName, recipientLastName, mimeType, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;

    }
    return null;
  }

  /// Get Kmehr report
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] id (required):
  ///
  /// * [int] date (required):
  ///
  /// * [String] language (required):
  ///
  /// * [String] recipientNihii (required):
  ///
  /// * [String] recipientSsin (required):
  ///
  /// * [String] recipientFirstName (required):
  ///
  /// * [String] recipientLastName (required):
  ///
  /// * [String] mimeType (required):
  ///
  /// * [MultipartFile] body (required):
  Future<Response> generateReportExportWithHttpInfo(String patientId, String id, int date, String language, String recipientNihii, String recipientSsin, String recipientFirstName, String recipientLastName, String mimeType, MultipartFile body,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/report/{patientId}/export/{id}'.replaceAll('{patientId}', patientId).replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'date', date));
      queryParams.addAll(_queryParams('', 'language', language));
      queryParams.addAll(_queryParams('', 'recipientNihii', recipientNihii));
      queryParams.addAll(_queryParams('', 'recipientSsin', recipientSsin));
      queryParams.addAll(_queryParams('', 'recipientFirstName', recipientFirstName));
      queryParams.addAll(_queryParams('', 'recipientLastName', recipientLastName));
      queryParams.addAll(_queryParams('', 'mimeType', mimeType));

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/octet-stream'];


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

  /// Get Kmehr report
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] id (required):
  ///
  /// * [int] date (required):
  ///
  /// * [String] language (required):
  ///
  /// * [String] recipientNihii (required):
  ///
  /// * [String] recipientSsin (required):
  ///
  /// * [String] recipientFirstName (required):
  ///
  /// * [String] recipientLastName (required):
  ///
  /// * [String] mimeType (required):
  ///
  /// * [MultipartFile] body (required):
  Future<MultipartFile?> generateReportExport(String patientId, String id, int date, String language, String recipientNihii, String recipientSsin, String recipientFirstName, String recipientLastName, String mimeType, MultipartFile body,) async {
    final response = await generateReportExportWithHttpInfo(patientId, id, date, language, recipientNihii, recipientSsin, recipientFirstName, recipientLastName, mimeType, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;

    }
    return null;
  }

  /// Get Kmehr request
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] id (required):
  ///
  /// * [int] date (required):
  ///
  /// * [String] language (required):
  ///
  /// * [String] recipientNihii (required):
  ///
  /// * [String] recipientSsin (required):
  ///
  /// * [String] recipientFirstName (required):
  ///
  /// * [String] recipientLastName (required):
  ///
  /// * [String] mimeType (required):
  ///
  /// * [MultipartFile] body (required):
  Future<Response> generateRequestExportWithHttpInfo(String patientId, String id, int date, String language, String recipientNihii, String recipientSsin, String recipientFirstName, String recipientLastName, String mimeType, MultipartFile body,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/request/{patientId}/export/{id}'.replaceAll('{patientId}', patientId).replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'date', date));
      queryParams.addAll(_queryParams('', 'language', language));
      queryParams.addAll(_queryParams('', 'recipientNihii', recipientNihii));
      queryParams.addAll(_queryParams('', 'recipientSsin', recipientSsin));
      queryParams.addAll(_queryParams('', 'recipientFirstName', recipientFirstName));
      queryParams.addAll(_queryParams('', 'recipientLastName', recipientLastName));
      queryParams.addAll(_queryParams('', 'mimeType', mimeType));

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/octet-stream'];


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

  /// Get Kmehr request
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] id (required):
  ///
  /// * [int] date (required):
  ///
  /// * [String] language (required):
  ///
  /// * [String] recipientNihii (required):
  ///
  /// * [String] recipientSsin (required):
  ///
  /// * [String] recipientFirstName (required):
  ///
  /// * [String] recipientLastName (required):
  ///
  /// * [String] mimeType (required):
  ///
  /// * [MultipartFile] body (required):
  Future<MultipartFile?> generateRequestExport(String patientId, String id, int date, String language, String recipientNihii, String recipientSsin, String recipientFirstName, String recipientLastName, String mimeType, MultipartFile body,) async {
    final response = await generateRequestExportWithHttpInfo(patientId, id, date, language, recipientNihii, recipientSsin, recipientFirstName, recipientLastName, mimeType, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;

    }
    return null;
  }

  /// Get Kmehr result
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] id (required):
  ///
  /// * [int] date (required):
  ///
  /// * [String] language (required):
  ///
  /// * [String] recipientNihii (required):
  ///
  /// * [String] recipientSsin (required):
  ///
  /// * [String] recipientFirstName (required):
  ///
  /// * [String] recipientLastName (required):
  ///
  /// * [String] mimeType (required):
  ///
  /// * [MultipartFile] body (required):
  Future<Response> generateResultExportWithHttpInfo(String patientId, String id, int date, String language, String recipientNihii, String recipientSsin, String recipientFirstName, String recipientLastName, String mimeType, MultipartFile body,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/result/{patientId}/export/{id}'.replaceAll('{patientId}', patientId).replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'date', date));
      queryParams.addAll(_queryParams('', 'language', language));
      queryParams.addAll(_queryParams('', 'recipientNihii', recipientNihii));
      queryParams.addAll(_queryParams('', 'recipientSsin', recipientSsin));
      queryParams.addAll(_queryParams('', 'recipientFirstName', recipientFirstName));
      queryParams.addAll(_queryParams('', 'recipientLastName', recipientLastName));
      queryParams.addAll(_queryParams('', 'mimeType', mimeType));

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/octet-stream'];


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

  /// Get Kmehr result
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] id (required):
  ///
  /// * [int] date (required):
  ///
  /// * [String] language (required):
  ///
  /// * [String] recipientNihii (required):
  ///
  /// * [String] recipientSsin (required):
  ///
  /// * [String] recipientFirstName (required):
  ///
  /// * [String] recipientLastName (required):
  ///
  /// * [String] mimeType (required):
  ///
  /// * [MultipartFile] body (required):
  Future<MultipartFile?> generateResultExport(String patientId, String id, int date, String language, String recipientNihii, String recipientSsin, String recipientFirstName, String recipientLastName, String mimeType, MultipartFile body,) async {
    final response = await generateResultExportWithHttpInfo(patientId, id, date, language, recipientNihii, recipientSsin, recipientFirstName, recipientLastName, mimeType, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;

    }
    return null;
  }

  /// Get SMF (Software Medical File) export
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] language (required):
  ///
  /// * [SoftwareMedicalFileExportDto] softwareMedicalFileExportDto (required):
  Future<Response> generateSmfExportWithHttpInfo(String patientId, String language, SoftwareMedicalFileExportDto softwareMedicalFileExportDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/smf/{patientId}/export'.replaceAll('{patientId}', patientId);

    // ignore: prefer_final_locals
    Object? postBody = softwareMedicalFileExportDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'language', language));

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

  /// Get SMF (Software Medical File) export
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] language (required):
  ///
  /// * [SoftwareMedicalFileExportDto] softwareMedicalFileExportDto (required):
  Future<MultipartFile?> generateSmfExport(String patientId, String language, SoftwareMedicalFileExportDto softwareMedicalFileExportDto,) async {
    final response = await generateSmfExportWithHttpInfo(patientId, language, softwareMedicalFileExportDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;

    }
    return null;
  }

  /// Generate sumehr
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] language (required):
  ///
  /// * [SumehrExportInfoDto] sumehrExportInfoDto (required):
  Future<Response> generateSumehrWithHttpInfo(String patientId, String language, SumehrExportInfoDto sumehrExportInfoDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/sumehr/{patientId}/export'.replaceAll('{patientId}', patientId);

    // ignore: prefer_final_locals
    Object? postBody = sumehrExportInfoDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'language', language));

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

  /// Generate sumehr
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] language (required):
  ///
  /// * [SumehrExportInfoDto] sumehrExportInfoDto (required):
  Future<MultipartFile?> generateSumehr(String patientId, String language, SumehrExportInfoDto sumehrExportInfoDto,) async {
    final response = await generateSumehrWithHttpInfo(patientId, language, sumehrExportInfoDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;

    }
    return null;
  }

  /// Generate sumehr
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] language (required):
  ///
  /// * [SumehrExportInfoDto] sumehrExportInfoDto (required):
  Future<Response> generateSumehrV2WithHttpInfo(String patientId, String language, SumehrExportInfoDto sumehrExportInfoDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/sumehrv2/{patientId}/export'.replaceAll('{patientId}', patientId);

    // ignore: prefer_final_locals
    Object? postBody = sumehrExportInfoDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'language', language));

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

  /// Generate sumehr
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] language (required):
  ///
  /// * [SumehrExportInfoDto] sumehrExportInfoDto (required):
  Future<MultipartFile?> generateSumehrV2(String patientId, String language, SumehrExportInfoDto sumehrExportInfoDto,) async {
    final response = await generateSumehrV2WithHttpInfo(patientId, language, sumehrExportInfoDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;

    }
    return null;
  }

  /// Get sumehr elements
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [SumehrExportInfoDto] sumehrExportInfoDto (required):
  Future<Response> getSumehrContentWithHttpInfo(String patientId, SumehrExportInfoDto sumehrExportInfoDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/sumehr/{patientId}/content'.replaceAll('{patientId}', patientId);

    // ignore: prefer_final_locals
    Object? postBody = sumehrExportInfoDto;

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

  /// Get sumehr elements
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [SumehrExportInfoDto] sumehrExportInfoDto (required):
  Future<SumehrContentDto?> getSumehrContent(String patientId, SumehrExportInfoDto sumehrExportInfoDto,) async {
    final response = await getSumehrContentWithHttpInfo(patientId, sumehrExportInfoDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SumehrContentDto',) as SumehrContentDto;

    }
    return null;
  }

  /// Check sumehr signature
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [SumehrExportInfoDto] sumehrExportInfoDto (required):
  Future<Response> getSumehrMd5WithHttpInfo(String patientId, SumehrExportInfoDto sumehrExportInfoDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/sumehr/{patientId}/md5'
        .replaceAll('{patientId}', patientId);

    // ignore: prefer_final_locals
    Object? postBody = sumehrExportInfoDto;

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

  /// Check sumehr signature
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [SumehrExportInfoDto] sumehrExportInfoDto (required):
  Future<ContentDto?> getSumehrMd5(String patientId, SumehrExportInfoDto sumehrExportInfoDto,) async {
    final response = await getSumehrMd5WithHttpInfo(patientId, sumehrExportInfoDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContentDto',) as ContentDto;

    }
    return null;
  }

  /// Get sumehr elements
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [SumehrExportInfoDto] sumehrExportInfoDto (required):
  Future<Response> getSumehrV2ContentWithHttpInfo(String patientId, SumehrExportInfoDto sumehrExportInfoDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/sumehrv2/{patientId}/content'.replaceAll('{patientId}', patientId);

    // ignore: prefer_final_locals
    Object? postBody = sumehrExportInfoDto;

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

  /// Get sumehr elements
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [SumehrExportInfoDto] sumehrExportInfoDto (required):
  Future<SumehrContentDto?> getSumehrV2Content(String patientId, SumehrExportInfoDto sumehrExportInfoDto,) async {
    final response = await getSumehrV2ContentWithHttpInfo(patientId, sumehrExportInfoDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SumehrContentDto',) as SumehrContentDto;

    }
    return null;
  }

  /// Check sumehr signature
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [SumehrExportInfoDto] sumehrExportInfoDto (required):
  Future<Response> getSumehrV2Md5WithHttpInfo(String patientId, SumehrExportInfoDto sumehrExportInfoDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/sumehrv2/{patientId}/md5'.replaceAll('{patientId}', patientId);

    // ignore: prefer_final_locals
    Object? postBody = sumehrExportInfoDto;

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

  /// Check sumehr signature
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [SumehrExportInfoDto] sumehrExportInfoDto (required):
  Future<ContentDto?> getSumehrV2Md5(String patientId, SumehrExportInfoDto sumehrExportInfoDto,) async {
    final response = await getSumehrV2Md5WithHttpInfo(patientId, sumehrExportInfoDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContentDto',) as ContentDto;

    }
    return null;
  }

  /// Import MedicationScheme into patient(s) using existing document
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] documentKey:
  ///
  /// * [bool] dryRun:
  ///   Dry run: do not save in database
  ///
  /// * [String] patientId:
  ///
  /// * [String] language:
  ///
  /// * [Map<String, List<ImportMapping>>] requestBody:
  Future<Response> importMedicationSchemeWithHttpInfo(String documentId, { String? documentKey, bool? dryRun, String? patientId, String? language, Map<String, List<ImportMapping>>? requestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/medicationscheme/{documentId}/import'.replaceAll('{documentId}', documentId);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (documentKey != null) {
      queryParams.addAll(_queryParams('', 'documentKey', documentKey));
    }
    if (dryRun != null) {
      queryParams.addAll(_queryParams('', 'dryRun', dryRun));
    }
    if (patientId != null) {
      queryParams.addAll(_queryParams('', 'patientId', patientId));
    }
    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }

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

  /// Import MedicationScheme into patient(s) using existing document
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] documentKey:
  ///
  /// * [bool] dryRun:
  ///   Dry run: do not save in database
  ///
  /// * [String] patientId:
  ///
  /// * [String] language:
  ///
  /// * [Map<String, List<ImportMapping>>] requestBody:
  Future<List<ImportResultDto>?> importMedicationScheme(String documentId, { String? documentKey, bool? dryRun, String? patientId, String? language, Map<String, List<ImportMapping>>? requestBody, }) async {
    final response = await importMedicationSchemeWithHttpInfo(documentId,  documentKey: documentKey, dryRun: dryRun, patientId: patientId, language: language, requestBody: requestBody, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ImportResultDto>') as List)
        .cast<ImportResultDto>()
        .toList();

    }
    return null;
  }

  /// Import SMF into patient(s) using existing document
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] documentKey:
  ///
  /// * [String] patientId:
  ///
  /// * [String] language:
  ///
  /// * [bool] dryRun:
  ///
  /// * [Map<String, List<ImportMapping>>] requestBody:
  Future<Response> importSmfWithHttpInfo(String documentId, { String? documentKey, String? patientId, String? language, bool? dryRun, Map<String, List<ImportMapping>>? requestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/smf/{documentId}/import'.replaceAll('{documentId}', documentId);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (documentKey != null) {
      queryParams.addAll(_queryParams('', 'documentKey', documentKey));
    }
    if (patientId != null) {
      queryParams.addAll(_queryParams('', 'patientId', patientId));
    }
    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }
    if (dryRun != null) {
      queryParams.addAll(_queryParams('', 'dryRun', dryRun));
    }

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

  /// Import SMF into patient(s) using existing document
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] documentKey:
  ///
  /// * [String] patientId:
  ///
  /// * [String] language:
  ///
  /// * [bool] dryRun:
  ///
  /// * [Map<String, List<ImportMapping>>] requestBody:
  Future<List<ImportResultDto>?> importSmf(String documentId, { String? documentKey, String? patientId, String? language, bool? dryRun, Map<String, List<ImportMapping>>? requestBody, }) async {
    final response = await importSmfWithHttpInfo(documentId,  documentKey: documentKey, patientId: patientId, language: language, dryRun: dryRun, requestBody: requestBody, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ImportResultDto>') as List)
        .cast<ImportResultDto>()
        .toList();

    }
    return null;
  }

  /// Import sumehr into patient(s) using existing document
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] documentKey:
  ///
  /// * [bool] dryRun:
  ///   Dry run: do not save in database
  ///
  /// * [String] patientId:
  ///
  /// * [String] language:
  ///
  /// * [Map<String, List<ImportMapping>>] requestBody:
  Future<Response> importSumehrWithHttpInfo(String documentId, { String? documentKey, bool? dryRun, String? patientId, String? language, Map<String, List<ImportMapping>>? requestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/sumehr/{documentId}/import'.replaceAll('{documentId}', documentId);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (documentKey != null) {
      queryParams.addAll(_queryParams('', 'documentKey', documentKey));
    }
    if (dryRun != null) {
      queryParams.addAll(_queryParams('', 'dryRun', dryRun));
    }
    if (patientId != null) {
      queryParams.addAll(_queryParams('', 'patientId', patientId));
    }
    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }

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

  /// Import sumehr into patient(s) using existing document
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] documentKey:
  ///
  /// * [bool] dryRun:
  ///   Dry run: do not save in database
  ///
  /// * [String] patientId:
  ///
  /// * [String] language:
  ///
  /// * [Map<String, List<ImportMapping>>] requestBody:
  Future<List<ImportResultDto>?> importSumehr(String documentId, { String? documentKey, bool? dryRun, String? patientId, String? language, Map<String, List<ImportMapping>>? requestBody, }) async {
    final response = await importSumehrWithHttpInfo(documentId,  documentKey: documentKey, dryRun: dryRun, patientId: patientId, language: language, requestBody: requestBody, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ImportResultDto>') as List)
        .cast<ImportResultDto>()
        .toList();

    }
    return null;
  }

  /// Import sumehr into patient(s) using existing document
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] itemId (required):
  ///
  /// * [String] documentKey:
  ///
  /// * [bool] dryRun:
  ///   Dry run: do not save in database
  ///
  /// * [String] patientId:
  ///
  /// * [String] language:
  ///
  /// * [Map<String, List<ImportMapping>>] requestBody:
  Future<Response> importSumehrByItemIdWithHttpInfo(String documentId, String itemId, { String? documentKey, bool? dryRun, String? patientId, String? language, Map<String, List<ImportMapping>>? requestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/sumehr/{documentId}/importbyitemid'.replaceAll('{documentId}', documentId);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'itemId', itemId));
    if (documentKey != null) {
      queryParams.addAll(_queryParams('', 'documentKey', documentKey));
    }
    if (dryRun != null) {
      queryParams.addAll(_queryParams('', 'dryRun', dryRun));
    }
    if (patientId != null) {
      queryParams.addAll(_queryParams('', 'patientId', patientId));
    }
    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }

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

  /// Import sumehr into patient(s) using existing document
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] itemId (required):
  ///
  /// * [String] documentKey:
  ///
  /// * [bool] dryRun:
  ///   Dry run: do not save in database
  ///
  /// * [String] patientId:
  ///
  /// * [String] language:
  ///
  /// * [Map<String, List<ImportMapping>>] requestBody:
  Future<List<ImportResultDto>?> importSumehrByItemId(String documentId, String itemId, { String? documentKey, bool? dryRun, String? patientId, String? language, Map<String, List<ImportMapping>>? requestBody, }) async {
    final response = await importSumehrByItemIdWithHttpInfo(documentId, itemId,  documentKey: documentKey, dryRun: dryRun, patientId: patientId, language: language, requestBody: requestBody, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ImportResultDto>') as List)
        .cast<ImportResultDto>()
        .toList();

    }
    return null;
  }

  /// Get sumehr validity
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [SumehrExportInfoDto] sumehrExportInfoDto (required):
  Future<Response> isSumehrV2ValidWithHttpInfo(String patientId, SumehrExportInfoDto sumehrExportInfoDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/sumehrv2/{patientId}/valid'
        .replaceAll('{patientId}', patientId);

    // ignore: prefer_final_locals
    Object? postBody = sumehrExportInfoDto;

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

  /// Get sumehr validity
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [SumehrExportInfoDto] sumehrExportInfoDto (required):
  Future<SumehrValidityDto?> isSumehrV2Valid(String patientId, SumehrExportInfoDto sumehrExportInfoDto,) async {
    final response = await isSumehrV2ValidWithHttpInfo(patientId, sumehrExportInfoDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SumehrValidityDto',) as SumehrValidityDto;

    }
    return null;
  }

  /// Get sumehr validity
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [SumehrExportInfoDto] sumehrExportInfoDto (required):
  Future<Response> isSumehrValidWithHttpInfo(String patientId, SumehrExportInfoDto sumehrExportInfoDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/sumehr/{patientId}/valid'.replaceAll('{patientId}', patientId);

    // ignore: prefer_final_locals
    Object? postBody = sumehrExportInfoDto;

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

  /// Get sumehr validity
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [SumehrExportInfoDto] sumehrExportInfoDto (required):
  Future<SumehrValidityDto?> isSumehrValid(String patientId, SumehrExportInfoDto sumehrExportInfoDto,) async {
    final response = await isSumehrValidWithHttpInfo(patientId, sumehrExportInfoDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SumehrValidityDto',) as SumehrValidityDto;

    }
    return null;
  }

  /// Validate sumehr
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] language (required):
  ///
  /// * [SumehrExportInfoDto] sumehrExportInfoDto (required):
  Future<Response> validateSumehrWithHttpInfo(String patientId, String language, SumehrExportInfoDto sumehrExportInfoDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/sumehr/{patientId}/validate'.replaceAll('{patientId}', patientId);

    // ignore: prefer_final_locals
    Object? postBody = sumehrExportInfoDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'language', language));

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

  /// Validate sumehr
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] language (required):
  ///
  /// * [SumehrExportInfoDto] sumehrExportInfoDto (required):
  Future<MultipartFile?> validateSumehr(String patientId, String language, SumehrExportInfoDto sumehrExportInfoDto,) async {
    final response = await validateSumehrWithHttpInfo(patientId, language, sumehrExportInfoDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;

    }
    return null;
  }

  /// Validate sumehr
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] language (required):
  ///
  /// * [SumehrExportInfoDto] sumehrExportInfoDto (required):
  Future<Response> validateSumehrV2WithHttpInfo(String patientId, String language, SumehrExportInfoDto sumehrExportInfoDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/be_kmehr/sumehrv2/{patientId}/validate'.replaceAll('{patientId}', patientId);

    // ignore: prefer_final_locals
    Object? postBody = sumehrExportInfoDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'language', language));

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

  /// Validate sumehr
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] language (required):
  ///
  /// * [SumehrExportInfoDto] sumehrExportInfoDto (required):
  Future<MultipartFile?> validateSumehrV2(String patientId, String language, SumehrExportInfoDto sumehrExportInfoDto,) async {
    final response = await validateSumehrV2WithHttpInfo(patientId, language, sumehrExportInfoDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException.withRequestId(response.statusCode, await _decodeBodyBytes(response), response.headers["X-Request-Id"], response.request?.url.toString());
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;

    }
    return null;
  }
}
