# openapi.api.BekmehrApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkIfSMFPatientsExists**](BekmehrApi.md#checkifsmfpatientsexists) | **POST** /rest/v2/be_kmehr/smf/{documentId}/checkIfSMFPatientsExists | Check whether patients in SMF already exists in DB
[**generateContactreportExport**](BekmehrApi.md#generatecontactreportexport) | **POST** /rest/v2/be_kmehr/contactreport/{patientId}/export/{id} | Get Kmehr contactreport
[**generateDiaryNote**](BekmehrApi.md#generatediarynote) | **POST** /rest/v2/be_kmehr/diarynote/{patientId}/export | Generate diarynote
[**generateLabresultExport**](BekmehrApi.md#generatelabresultexport) | **POST** /rest/v2/be_kmehr/labresult/{patientId}/export/{id} | Get Kmehr labresult
[**generateMedicationSchemeExport**](BekmehrApi.md#generatemedicationschemeexport) | **POST** /rest/v2/be_kmehr/medicationscheme/{patientId}/export | Get Medicationscheme export
[**generateNoteExport**](BekmehrApi.md#generatenoteexport) | **POST** /rest/v2/be_kmehr/note/{patientId}/export/{id} | Get Kmehr note
[**generatePatientInfoExport**](BekmehrApi.md#generatepatientinfoexport) | **POST** /rest/v2/be_kmehr/patientinfo/{patientId}/export | Get KMEHR Patient Info export
[**generatePrescriptionExport**](BekmehrApi.md#generateprescriptionexport) | **POST** /rest/v2/be_kmehr/prescription/{patientId}/export/{id} | Get Kmehr prescription
[**generateReportExport**](BekmehrApi.md#generatereportexport) | **POST** /rest/v2/be_kmehr/report/{patientId}/export/{id} | Get Kmehr report
[**generateRequestExport**](BekmehrApi.md#generaterequestexport) | **POST** /rest/v2/be_kmehr/request/{patientId}/export/{id} | Get Kmehr request
[**generateResultExport**](BekmehrApi.md#generateresultexport) | **POST** /rest/v2/be_kmehr/result/{patientId}/export/{id} | Get Kmehr result
[**generateSmfExport**](BekmehrApi.md#generatesmfexport) | **POST** /rest/v2/be_kmehr/smf/{patientId}/export | Get SMF (Software Medical File) export
[**generateSumehr**](BekmehrApi.md#generatesumehr) | **POST** /rest/v2/be_kmehr/sumehr/{patientId}/export | Generate sumehr
[**generateSumehrV2**](BekmehrApi.md#generatesumehrv2) | **POST** /rest/v2/be_kmehr/sumehrv2/{patientId}/export | Generate sumehr
[**getSumehrContent**](BekmehrApi.md#getsumehrcontent) | **POST** /rest/v2/be_kmehr/sumehr/{patientId}/content | Get sumehr elements
[**getSumehrMd5**](BekmehrApi.md#getsumehrmd5) | **POST** /rest/v2/be_kmehr/sumehr/{patientId}/md5 | Check sumehr signature
[**getSumehrV2Content**](BekmehrApi.md#getsumehrv2content) | **POST** /rest/v2/be_kmehr/sumehrv2/{patientId}/content | Get sumehr elements
[**getSumehrV2Md5**](BekmehrApi.md#getsumehrv2md5) | **POST** /rest/v2/be_kmehr/sumehrv2/{patientId}/md5 | Check sumehr signature
[**importMedicationScheme**](BekmehrApi.md#importmedicationscheme) | **POST** /rest/v2/be_kmehr/medicationscheme/{documentId}/import | Import MedicationScheme into patient(s) using existing document
[**importSmf**](BekmehrApi.md#importsmf) | **POST** /rest/v2/be_kmehr/smf/{documentId}/import | Import SMF into patient(s) using existing document
[**importSumehr**](BekmehrApi.md#importsumehr) | **POST** /rest/v2/be_kmehr/sumehr/{documentId}/import | Import sumehr into patient(s) using existing document
[**importSumehrByItemId**](BekmehrApi.md#importsumehrbyitemid) | **POST** /rest/v2/be_kmehr/sumehr/{documentId}/importbyitemid | Import sumehr into patient(s) using existing document
[**isSumehrV2Valid**](BekmehrApi.md#issumehrv2valid) | **POST** /rest/v2/be_kmehr/sumehrv2/{patientId}/valid | Get sumehr validity
[**isSumehrValid**](BekmehrApi.md#issumehrvalid) | **POST** /rest/v2/be_kmehr/sumehr/{patientId}/valid | Get sumehr validity
[**validateSumehr**](BekmehrApi.md#validatesumehr) | **POST** /rest/v2/be_kmehr/sumehr/{patientId}/validate | Validate sumehr
[**validateSumehrV2**](BekmehrApi.md#validatesumehrv2) | **POST** /rest/v2/be_kmehr/sumehrv2/{patientId}/validate | Validate sumehr


# **checkIfSMFPatientsExists**
> List<CheckSMFPatientResult> checkIfSMFPatientsExists(documentId, documentKey, patientId, language, requestBody)

Check whether patients in SMF already exists in DB

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final documentId = documentId_example; // String | 
final documentKey = documentKey_example; // String | 
final patientId = patientId_example; // String | 
final language = language_example; // String | 
final requestBody = Map<String, List<ImportMapping>>(); // Map<String, List<ImportMapping>> | 

try {
    final result = api_instance.checkIfSMFPatientsExists(documentId, documentKey, patientId, language, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->checkIfSMFPatientsExists: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **documentKey** | **String**|  | [optional] 
 **patientId** | **String**|  | [optional] 
 **language** | **String**|  | [optional] 
 **requestBody** | [**Map<String, List<ImportMapping>>**](List.md)|  | [optional] 

### Return type

[**List<CheckSMFPatientResult>**](CheckSMFPatientResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateContactreportExport**
> MultipartFile generateContactreportExport(patientId, id, date, language, recipientNihii, recipientSsin, recipientFirstName, recipientLastName, mimeType, body)

Get Kmehr contactreport

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final patientId = patientId_example; // String | 
final id = id_example; // String | 
final date = 789; // int | 
final language = language_example; // String | 
final recipientNihii = recipientNihii_example; // String | 
final recipientSsin = recipientSsin_example; // String | 
final recipientFirstName = recipientFirstName_example; // String | 
final recipientLastName = recipientLastName_example; // String | 
final mimeType = mimeType_example; // String | 
final body = MultipartFile(); // MultipartFile | 

try {
    final result = api_instance.generateContactreportExport(patientId, id, date, language, recipientNihii, recipientSsin, recipientFirstName, recipientLastName, mimeType, body);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->generateContactreportExport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 
 **id** | **String**|  | 
 **date** | **int**|  | 
 **language** | **String**|  | 
 **recipientNihii** | **String**|  | 
 **recipientSsin** | **String**|  | 
 **recipientFirstName** | **String**|  | 
 **recipientLastName** | **String**|  | 
 **mimeType** | **String**|  | 
 **body** | **MultipartFile**|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateDiaryNote**
> MultipartFile generateDiaryNote(patientId, language, diaryNoteExportInfoDto)

Generate diarynote

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final patientId = patientId_example; // String | 
final language = language_example; // String | 
final diaryNoteExportInfoDto = DiaryNoteExportInfoDto(); // DiaryNoteExportInfoDto | 

try {
    final result = api_instance.generateDiaryNote(patientId, language, diaryNoteExportInfoDto);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->generateDiaryNote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 
 **language** | **String**|  | 
 **diaryNoteExportInfoDto** | [**DiaryNoteExportInfoDto**](DiaryNoteExportInfoDto.md)|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateLabresultExport**
> MultipartFile generateLabresultExport(patientId, id, date, language, recipientNihii, recipientSsin, recipientFirstName, recipientLastName, mimeType, body)

Get Kmehr labresult

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final patientId = patientId_example; // String | 
final id = id_example; // String | 
final date = 789; // int | 
final language = language_example; // String | 
final recipientNihii = recipientNihii_example; // String | 
final recipientSsin = recipientSsin_example; // String | 
final recipientFirstName = recipientFirstName_example; // String | 
final recipientLastName = recipientLastName_example; // String | 
final mimeType = mimeType_example; // String | 
final body = MultipartFile(); // MultipartFile | 

try {
    final result = api_instance.generateLabresultExport(patientId, id, date, language, recipientNihii, recipientSsin, recipientFirstName, recipientLastName, mimeType, body);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->generateLabresultExport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 
 **id** | **String**|  | 
 **date** | **int**|  | 
 **language** | **String**|  | 
 **recipientNihii** | **String**|  | 
 **recipientSsin** | **String**|  | 
 **recipientFirstName** | **String**|  | 
 **recipientLastName** | **String**|  | 
 **mimeType** | **String**|  | 
 **body** | **MultipartFile**|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateMedicationSchemeExport**
> MultipartFile generateMedicationSchemeExport(patientId, language, recipientSafe, version, medicationSchemeExportInfoDto)

Get Medicationscheme export

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final patientId = patientId_example; // String | 
final language = language_example; // String | 
final recipientSafe = recipientSafe_example; // String | 
final version = 56; // int | 
final medicationSchemeExportInfoDto = MedicationSchemeExportInfoDto(); // MedicationSchemeExportInfoDto | 

try {
    final result = api_instance.generateMedicationSchemeExport(patientId, language, recipientSafe, version, medicationSchemeExportInfoDto);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->generateMedicationSchemeExport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 
 **language** | **String**|  | 
 **recipientSafe** | **String**|  | 
 **version** | **int**|  | 
 **medicationSchemeExportInfoDto** | [**MedicationSchemeExportInfoDto**](MedicationSchemeExportInfoDto.md)|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateNoteExport**
> MultipartFile generateNoteExport(patientId, id, date, language, recipientNihii, recipientSsin, recipientFirstName, recipientLastName, mimeType, body)

Get Kmehr note

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final patientId = patientId_example; // String | 
final id = id_example; // String | 
final date = 789; // int | 
final language = language_example; // String | 
final recipientNihii = recipientNihii_example; // String | 
final recipientSsin = recipientSsin_example; // String | 
final recipientFirstName = recipientFirstName_example; // String | 
final recipientLastName = recipientLastName_example; // String | 
final mimeType = mimeType_example; // String | 
final body = MultipartFile(); // MultipartFile | 

try {
    final result = api_instance.generateNoteExport(patientId, id, date, language, recipientNihii, recipientSsin, recipientFirstName, recipientLastName, mimeType, body);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->generateNoteExport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 
 **id** | **String**|  | 
 **date** | **int**|  | 
 **language** | **String**|  | 
 **recipientNihii** | **String**|  | 
 **recipientSsin** | **String**|  | 
 **recipientFirstName** | **String**|  | 
 **recipientLastName** | **String**|  | 
 **mimeType** | **String**|  | 
 **body** | **MultipartFile**|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generatePatientInfoExport**
> MultipartFile generatePatientInfoExport(patientId, language)

Get KMEHR Patient Info export

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final patientId = patientId_example; // String | 
final language = language_example; // String | 

try {
    final result = api_instance.generatePatientInfoExport(patientId, language);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->generatePatientInfoExport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 
 **language** | **String**|  | [optional] 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generatePrescriptionExport**
> MultipartFile generatePrescriptionExport(patientId, id, date, language, recipientNihii, recipientSsin, recipientFirstName, recipientLastName, mimeType, body)

Get Kmehr prescription

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final patientId = patientId_example; // String | 
final id = id_example; // String | 
final date = 789; // int | 
final language = language_example; // String | 
final recipientNihii = recipientNihii_example; // String | 
final recipientSsin = recipientSsin_example; // String | 
final recipientFirstName = recipientFirstName_example; // String | 
final recipientLastName = recipientLastName_example; // String | 
final mimeType = mimeType_example; // String | 
final body = MultipartFile(); // MultipartFile | 

try {
    final result = api_instance.generatePrescriptionExport(patientId, id, date, language, recipientNihii, recipientSsin, recipientFirstName, recipientLastName, mimeType, body);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->generatePrescriptionExport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 
 **id** | **String**|  | 
 **date** | **int**|  | 
 **language** | **String**|  | 
 **recipientNihii** | **String**|  | 
 **recipientSsin** | **String**|  | 
 **recipientFirstName** | **String**|  | 
 **recipientLastName** | **String**|  | 
 **mimeType** | **String**|  | 
 **body** | **MultipartFile**|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateReportExport**
> MultipartFile generateReportExport(patientId, id, date, language, recipientNihii, recipientSsin, recipientFirstName, recipientLastName, mimeType, body)

Get Kmehr report

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final patientId = patientId_example; // String | 
final id = id_example; // String | 
final date = 789; // int | 
final language = language_example; // String | 
final recipientNihii = recipientNihii_example; // String | 
final recipientSsin = recipientSsin_example; // String | 
final recipientFirstName = recipientFirstName_example; // String | 
final recipientLastName = recipientLastName_example; // String | 
final mimeType = mimeType_example; // String | 
final body = MultipartFile(); // MultipartFile | 

try {
    final result = api_instance.generateReportExport(patientId, id, date, language, recipientNihii, recipientSsin, recipientFirstName, recipientLastName, mimeType, body);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->generateReportExport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 
 **id** | **String**|  | 
 **date** | **int**|  | 
 **language** | **String**|  | 
 **recipientNihii** | **String**|  | 
 **recipientSsin** | **String**|  | 
 **recipientFirstName** | **String**|  | 
 **recipientLastName** | **String**|  | 
 **mimeType** | **String**|  | 
 **body** | **MultipartFile**|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateRequestExport**
> MultipartFile generateRequestExport(patientId, id, date, language, recipientNihii, recipientSsin, recipientFirstName, recipientLastName, mimeType, body)

Get Kmehr request

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final patientId = patientId_example; // String | 
final id = id_example; // String | 
final date = 789; // int | 
final language = language_example; // String | 
final recipientNihii = recipientNihii_example; // String | 
final recipientSsin = recipientSsin_example; // String | 
final recipientFirstName = recipientFirstName_example; // String | 
final recipientLastName = recipientLastName_example; // String | 
final mimeType = mimeType_example; // String | 
final body = MultipartFile(); // MultipartFile | 

try {
    final result = api_instance.generateRequestExport(patientId, id, date, language, recipientNihii, recipientSsin, recipientFirstName, recipientLastName, mimeType, body);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->generateRequestExport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 
 **id** | **String**|  | 
 **date** | **int**|  | 
 **language** | **String**|  | 
 **recipientNihii** | **String**|  | 
 **recipientSsin** | **String**|  | 
 **recipientFirstName** | **String**|  | 
 **recipientLastName** | **String**|  | 
 **mimeType** | **String**|  | 
 **body** | **MultipartFile**|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateResultExport**
> MultipartFile generateResultExport(patientId, id, date, language, recipientNihii, recipientSsin, recipientFirstName, recipientLastName, mimeType, body)

Get Kmehr result

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final patientId = patientId_example; // String | 
final id = id_example; // String | 
final date = 789; // int | 
final language = language_example; // String | 
final recipientNihii = recipientNihii_example; // String | 
final recipientSsin = recipientSsin_example; // String | 
final recipientFirstName = recipientFirstName_example; // String | 
final recipientLastName = recipientLastName_example; // String | 
final mimeType = mimeType_example; // String | 
final body = MultipartFile(); // MultipartFile | 

try {
    final result = api_instance.generateResultExport(patientId, id, date, language, recipientNihii, recipientSsin, recipientFirstName, recipientLastName, mimeType, body);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->generateResultExport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 
 **id** | **String**|  | 
 **date** | **int**|  | 
 **language** | **String**|  | 
 **recipientNihii** | **String**|  | 
 **recipientSsin** | **String**|  | 
 **recipientFirstName** | **String**|  | 
 **recipientLastName** | **String**|  | 
 **mimeType** | **String**|  | 
 **body** | **MultipartFile**|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateSmfExport**
> MultipartFile generateSmfExport(patientId, language, softwareMedicalFileExportDto)

Get SMF (Software Medical File) export

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final patientId = patientId_example; // String | 
final language = language_example; // String | 
final softwareMedicalFileExportDto = SoftwareMedicalFileExportDto(); // SoftwareMedicalFileExportDto | 

try {
    final result = api_instance.generateSmfExport(patientId, language, softwareMedicalFileExportDto);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->generateSmfExport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 
 **language** | **String**|  | 
 **softwareMedicalFileExportDto** | [**SoftwareMedicalFileExportDto**](SoftwareMedicalFileExportDto.md)|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateSumehr**
> MultipartFile generateSumehr(patientId, language, sumehrExportInfoDto)

Generate sumehr

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final patientId = patientId_example; // String | 
final language = language_example; // String | 
final sumehrExportInfoDto = SumehrExportInfoDto(); // SumehrExportInfoDto | 

try {
    final result = api_instance.generateSumehr(patientId, language, sumehrExportInfoDto);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->generateSumehr: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 
 **language** | **String**|  | 
 **sumehrExportInfoDto** | [**SumehrExportInfoDto**](SumehrExportInfoDto.md)|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateSumehrV2**
> MultipartFile generateSumehrV2(patientId, language, sumehrExportInfoDto)

Generate sumehr

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final patientId = patientId_example; // String | 
final language = language_example; // String | 
final sumehrExportInfoDto = SumehrExportInfoDto(); // SumehrExportInfoDto | 

try {
    final result = api_instance.generateSumehrV2(patientId, language, sumehrExportInfoDto);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->generateSumehrV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 
 **language** | **String**|  | 
 **sumehrExportInfoDto** | [**SumehrExportInfoDto**](SumehrExportInfoDto.md)|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSumehrContent**
> SumehrContentDto getSumehrContent(patientId, sumehrExportInfoDto)

Get sumehr elements

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final patientId = patientId_example; // String | 
final sumehrExportInfoDto = SumehrExportInfoDto(); // SumehrExportInfoDto | 

try {
    final result = api_instance.getSumehrContent(patientId, sumehrExportInfoDto);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->getSumehrContent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 
 **sumehrExportInfoDto** | [**SumehrExportInfoDto**](SumehrExportInfoDto.md)|  | 

### Return type

[**SumehrContentDto**](SumehrContentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSumehrMd5**
> ContentDto getSumehrMd5(patientId, sumehrExportInfoDto)

Check sumehr signature

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final patientId = patientId_example; // String | 
final sumehrExportInfoDto = SumehrExportInfoDto(); // SumehrExportInfoDto | 

try {
    final result = api_instance.getSumehrMd5(patientId, sumehrExportInfoDto);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->getSumehrMd5: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 
 **sumehrExportInfoDto** | [**SumehrExportInfoDto**](SumehrExportInfoDto.md)|  | 

### Return type

[**ContentDto**](ContentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSumehrV2Content**
> SumehrContentDto getSumehrV2Content(patientId, sumehrExportInfoDto)

Get sumehr elements

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final patientId = patientId_example; // String | 
final sumehrExportInfoDto = SumehrExportInfoDto(); // SumehrExportInfoDto | 

try {
    final result = api_instance.getSumehrV2Content(patientId, sumehrExportInfoDto);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->getSumehrV2Content: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 
 **sumehrExportInfoDto** | [**SumehrExportInfoDto**](SumehrExportInfoDto.md)|  | 

### Return type

[**SumehrContentDto**](SumehrContentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSumehrV2Md5**
> ContentDto getSumehrV2Md5(patientId, sumehrExportInfoDto)

Check sumehr signature

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final patientId = patientId_example; // String | 
final sumehrExportInfoDto = SumehrExportInfoDto(); // SumehrExportInfoDto | 

try {
    final result = api_instance.getSumehrV2Md5(patientId, sumehrExportInfoDto);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->getSumehrV2Md5: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 
 **sumehrExportInfoDto** | [**SumehrExportInfoDto**](SumehrExportInfoDto.md)|  | 

### Return type

[**ContentDto**](ContentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importMedicationScheme**
> List<ImportResultDto> importMedicationScheme(documentId, documentKey, dryRun, patientId, language, requestBody)

Import MedicationScheme into patient(s) using existing document

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final documentId = documentId_example; // String | 
final documentKey = documentKey_example; // String | 
final dryRun = true; // bool | Dry run: do not save in database
final patientId = patientId_example; // String | 
final language = language_example; // String | 
final requestBody = Map<String, List<ImportMapping>>(); // Map<String, List<ImportMapping>> | 

try {
    final result = api_instance.importMedicationScheme(documentId, documentKey, dryRun, patientId, language, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->importMedicationScheme: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **documentKey** | **String**|  | [optional] 
 **dryRun** | **bool**| Dry run: do not save in database | [optional] 
 **patientId** | **String**|  | [optional] 
 **language** | **String**|  | [optional] 
 **requestBody** | [**Map<String, List<ImportMapping>>**](List.md)|  | [optional] 

### Return type

[**List<ImportResultDto>**](ImportResultDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importSmf**
> List<ImportResultDto> importSmf(documentId, documentKey, patientId, language, dryRun, requestBody)

Import SMF into patient(s) using existing document

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final documentId = documentId_example; // String | 
final documentKey = documentKey_example; // String | 
final patientId = patientId_example; // String | 
final language = language_example; // String | 
final dryRun = true; // bool | 
final requestBody = Map<String, List<ImportMapping>>(); // Map<String, List<ImportMapping>> | 

try {
    final result = api_instance.importSmf(documentId, documentKey, patientId, language, dryRun, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->importSmf: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **documentKey** | **String**|  | [optional] 
 **patientId** | **String**|  | [optional] 
 **language** | **String**|  | [optional] 
 **dryRun** | **bool**|  | [optional] 
 **requestBody** | [**Map<String, List<ImportMapping>>**](List.md)|  | [optional] 

### Return type

[**List<ImportResultDto>**](ImportResultDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importSumehr**
> List<ImportResultDto> importSumehr(documentId, documentKey, dryRun, patientId, language, requestBody)

Import sumehr into patient(s) using existing document

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final documentId = documentId_example; // String | 
final documentKey = documentKey_example; // String | 
final dryRun = true; // bool | Dry run: do not save in database
final patientId = patientId_example; // String | 
final language = language_example; // String | 
final requestBody = Map<String, List<ImportMapping>>(); // Map<String, List<ImportMapping>> | 

try {
    final result = api_instance.importSumehr(documentId, documentKey, dryRun, patientId, language, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->importSumehr: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **documentKey** | **String**|  | [optional] 
 **dryRun** | **bool**| Dry run: do not save in database | [optional] 
 **patientId** | **String**|  | [optional] 
 **language** | **String**|  | [optional] 
 **requestBody** | [**Map<String, List<ImportMapping>>**](List.md)|  | [optional] 

### Return type

[**List<ImportResultDto>**](ImportResultDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importSumehrByItemId**
> List<ImportResultDto> importSumehrByItemId(documentId, itemId, documentKey, dryRun, patientId, language, requestBody)

Import sumehr into patient(s) using existing document

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final documentId = documentId_example; // String | 
final itemId = itemId_example; // String | 
final documentKey = documentKey_example; // String | 
final dryRun = true; // bool | Dry run: do not save in database
final patientId = patientId_example; // String | 
final language = language_example; // String | 
final requestBody = Map<String, List<ImportMapping>>(); // Map<String, List<ImportMapping>> | 

try {
    final result = api_instance.importSumehrByItemId(documentId, itemId, documentKey, dryRun, patientId, language, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->importSumehrByItemId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **itemId** | **String**|  | 
 **documentKey** | **String**|  | [optional] 
 **dryRun** | **bool**| Dry run: do not save in database | [optional] 
 **patientId** | **String**|  | [optional] 
 **language** | **String**|  | [optional] 
 **requestBody** | [**Map<String, List<ImportMapping>>**](List.md)|  | [optional] 

### Return type

[**List<ImportResultDto>**](ImportResultDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **isSumehrV2Valid**
> SumehrValidityDto isSumehrV2Valid(patientId, sumehrExportInfoDto)

Get sumehr validity

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final patientId = patientId_example; // String | 
final sumehrExportInfoDto = SumehrExportInfoDto(); // SumehrExportInfoDto | 

try {
    final result = api_instance.isSumehrV2Valid(patientId, sumehrExportInfoDto);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->isSumehrV2Valid: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 
 **sumehrExportInfoDto** | [**SumehrExportInfoDto**](SumehrExportInfoDto.md)|  | 

### Return type

[**SumehrValidityDto**](SumehrValidityDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **isSumehrValid**
> SumehrValidityDto isSumehrValid(patientId, sumehrExportInfoDto)

Get sumehr validity

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final patientId = patientId_example; // String | 
final sumehrExportInfoDto = SumehrExportInfoDto(); // SumehrExportInfoDto | 

try {
    final result = api_instance.isSumehrValid(patientId, sumehrExportInfoDto);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->isSumehrValid: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 
 **sumehrExportInfoDto** | [**SumehrExportInfoDto**](SumehrExportInfoDto.md)|  | 

### Return type

[**SumehrValidityDto**](SumehrValidityDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateSumehr**
> MultipartFile validateSumehr(patientId, language, sumehrExportInfoDto)

Validate sumehr

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final patientId = patientId_example; // String | 
final language = language_example; // String | 
final sumehrExportInfoDto = SumehrExportInfoDto(); // SumehrExportInfoDto | 

try {
    final result = api_instance.validateSumehr(patientId, language, sumehrExportInfoDto);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->validateSumehr: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 
 **language** | **String**|  | 
 **sumehrExportInfoDto** | [**SumehrExportInfoDto**](SumehrExportInfoDto.md)|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateSumehrV2**
> MultipartFile validateSumehrV2(patientId, language, sumehrExportInfoDto)

Validate sumehr

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BekmehrApi();
final patientId = patientId_example; // String | 
final language = language_example; // String | 
final sumehrExportInfoDto = SumehrExportInfoDto(); // SumehrExportInfoDto | 

try {
    final result = api_instance.validateSumehrV2(patientId, language, sumehrExportInfoDto);
    print(result);
} catch (e) {
    print('Exception when calling BekmehrApi->validateSumehrV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientId** | **String**|  | 
 **language** | **String**|  | 
 **sumehrExportInfoDto** | [**SumehrExportInfoDto**](SumehrExportInfoDto.md)|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

