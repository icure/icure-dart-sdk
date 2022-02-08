//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for BekmehrApi
void main() {
  final instance = BekmehrApi();

  group('tests for BekmehrApi', () {
    // Check whether patients in SMF already exists in DB
    //
    //Future<List<CheckSMFPatientResult>> checkIfSMFPatientsExists(String documentId, { String documentKey, String patientId, String language, Map<String, List<ImportMapping>> requestBody }) async
    test('test checkIfSMFPatientsExists', () async {
      // TODO
    });

    // Get Kmehr contactreport
    //
    //Future<MultipartFile> generateContactreportExport(String patientId, String id, int date, String language, String recipientNihii, String recipientSsin, String recipientFirstName, String recipientLastName, String mimeType, MultipartFile body) async
    test('test generateContactreportExport', () async {
      // TODO
    });

    // Generate diarynote
    //
    //Future<MultipartFile> generateDiaryNote(String patientId, String language, DiaryNoteExportInfoDto diaryNoteExportInfoDto) async
    test('test generateDiaryNote', () async {
      // TODO
    });

    // Get Kmehr labresult
    //
    //Future<MultipartFile> generateLabresultExport(String patientId, String id, int date, String language, String recipientNihii, String recipientSsin, String recipientFirstName, String recipientLastName, String mimeType, MultipartFile body) async
    test('test generateLabresultExport', () async {
      // TODO
    });

    // Get Medicationscheme export
    //
    //Future<MultipartFile> generateMedicationSchemeExport(String patientId, String language, String recipientSafe, int version, MedicationSchemeExportInfoDto medicationSchemeExportInfoDto) async
    test('test generateMedicationSchemeExport', () async {
      // TODO
    });

    // Get Kmehr note
    //
    //Future<MultipartFile> generateNoteExport(String patientId, String id, int date, String language, String recipientNihii, String recipientSsin, String recipientFirstName, String recipientLastName, String mimeType, MultipartFile body) async
    test('test generateNoteExport', () async {
      // TODO
    });

    // Get KMEHR Patient Info export
    //
    //Future<MultipartFile> generatePatientInfoExport(String patientId, { String language }) async
    test('test generatePatientInfoExport', () async {
      // TODO
    });

    // Get Kmehr prescription
    //
    //Future<MultipartFile> generatePrescriptionExport(String patientId, String id, int date, String language, String recipientNihii, String recipientSsin, String recipientFirstName, String recipientLastName, String mimeType, MultipartFile body) async
    test('test generatePrescriptionExport', () async {
      // TODO
    });

    // Get Kmehr report
    //
    //Future<MultipartFile> generateReportExport(String patientId, String id, int date, String language, String recipientNihii, String recipientSsin, String recipientFirstName, String recipientLastName, String mimeType, MultipartFile body) async
    test('test generateReportExport', () async {
      // TODO
    });

    // Get Kmehr request
    //
    //Future<MultipartFile> generateRequestExport(String patientId, String id, int date, String language, String recipientNihii, String recipientSsin, String recipientFirstName, String recipientLastName, String mimeType, MultipartFile body) async
    test('test generateRequestExport', () async {
      // TODO
    });

    // Get Kmehr result
    //
    //Future<MultipartFile> generateResultExport(String patientId, String id, int date, String language, String recipientNihii, String recipientSsin, String recipientFirstName, String recipientLastName, String mimeType, MultipartFile body) async
    test('test generateResultExport', () async {
      // TODO
    });

    // Get SMF (Software Medical File) export
    //
    //Future<MultipartFile> generateSmfExport(String patientId, String language, SoftwareMedicalFileExportDto softwareMedicalFileExportDto) async
    test('test generateSmfExport', () async {
      // TODO
    });

    // Generate sumehr
    //
    //Future<MultipartFile> generateSumehr(String patientId, String language, SumehrExportInfoDto sumehrExportInfoDto) async
    test('test generateSumehr', () async {
      // TODO
    });

    // Generate sumehr
    //
    //Future<MultipartFile> generateSumehrV2(String patientId, String language, SumehrExportInfoDto sumehrExportInfoDto) async
    test('test generateSumehrV2', () async {
      // TODO
    });

    // Get sumehr elements
    //
    //Future<SumehrContentDto> getSumehrContent(String patientId, SumehrExportInfoDto sumehrExportInfoDto) async
    test('test getSumehrContent', () async {
      // TODO
    });

    // Check sumehr signature
    //
    //Future<ContentDto> getSumehrMd5(String patientId, SumehrExportInfoDto sumehrExportInfoDto) async
    test('test getSumehrMd5', () async {
      // TODO
    });

    // Get sumehr elements
    //
    //Future<SumehrContentDto> getSumehrV2Content(String patientId, SumehrExportInfoDto sumehrExportInfoDto) async
    test('test getSumehrV2Content', () async {
      // TODO
    });

    // Check sumehr signature
    //
    //Future<ContentDto> getSumehrV2Md5(String patientId, SumehrExportInfoDto sumehrExportInfoDto) async
    test('test getSumehrV2Md5', () async {
      // TODO
    });

    // Import MedicationScheme into patient(s) using existing document
    //
    //Future<List<ImportResultDto>> importMedicationScheme(String documentId, { String documentKey, bool dryRun, String patientId, String language, Map<String, List<ImportMapping>> requestBody }) async
    test('test importMedicationScheme', () async {
      // TODO
    });

    // Import SMF into patient(s) using existing document
    //
    //Future<List<ImportResultDto>> importSmf(String documentId, { String documentKey, String patientId, String language, bool dryRun, Map<String, List<ImportMapping>> requestBody }) async
    test('test importSmf', () async {
      // TODO
    });

    // Import sumehr into patient(s) using existing document
    //
    //Future<List<ImportResultDto>> importSumehr(String documentId, { String documentKey, bool dryRun, String patientId, String language, Map<String, List<ImportMapping>> requestBody }) async
    test('test importSumehr', () async {
      // TODO
    });

    // Import sumehr into patient(s) using existing document
    //
    //Future<List<ImportResultDto>> importSumehrByItemId(String documentId, String itemId, { String documentKey, bool dryRun, String patientId, String language, Map<String, List<ImportMapping>> requestBody }) async
    test('test importSumehrByItemId', () async {
      // TODO
    });

    // Get sumehr validity
    //
    //Future<SumehrValidityDto> isSumehrV2Valid(String patientId, SumehrExportInfoDto sumehrExportInfoDto) async
    test('test isSumehrV2Valid', () async {
      // TODO
    });

    // Get sumehr validity
    //
    //Future<SumehrValidityDto> isSumehrValid(String patientId, SumehrExportInfoDto sumehrExportInfoDto) async
    test('test isSumehrValid', () async {
      // TODO
    });

    // Validate sumehr
    //
    //Future<MultipartFile> validateSumehr(String patientId, String language, SumehrExportInfoDto sumehrExportInfoDto) async
    test('test validateSumehr', () async {
      // TODO
    });

    // Validate sumehr
    //
    //Future<MultipartFile> validateSumehrV2(String patientId, String language, SumehrExportInfoDto sumehrExportInfoDto) async
    test('test validateSumehrV2', () async {
      // TODO
    });

  });
}
