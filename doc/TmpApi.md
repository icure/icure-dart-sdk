# icure_dart_sdk.api.TmpApi

## Load the API package

```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTmpClassification**](TmpApi.md#createtmpclassification) | **
POST** /rest/v1/tmp/classification | Create a classification with the current user
[**createTmpClassifications**](TmpApi.md#createtmpclassifications) | **
POST** /rest/v1/tmp/classification/batch | Create a classification with the current user
[**createTmpContact**](TmpApi.md#createtmpcontact) | **
POST** /rest/v1/tmp/contact | Create a contact with the current user
[**createTmpContacts**](TmpApi.md#createtmpcontacts) | **
POST** /rest/v1/tmp/contact/batch | Create a contact with the current user
[**createTmpDatabase**](TmpApi.md#createtmpdatabase) | **POST** /rest/v1/tmp | Create tmp database for current user
[**createTmpDocument**](TmpApi.md#createtmpdocument) | **
POST** /rest/v1/tmp/document | Create a document with the current user
[**createTmpDocuments**](TmpApi.md#createtmpdocuments) | **
POST** /rest/v1/tmp/document/batch | Create a document with the current user
[**createTmpEntityTemplate**](TmpApi.md#createtmpentitytemplate) | **
POST** /rest/v1/tmp/entityTemplate | Create a entityTemplate with the current user
[**createTmpEntityTemplates**](TmpApi.md#createtmpentitytemplates) | **
POST** /rest/v1/tmp/entityTemplate/batch | Create a entityTemplate with the current user
[**createTmpForm**](TmpApi.md#createtmpform) | **POST** /rest/v1/tmp/form | Create a form with the current user
[**createTmpForms**](TmpApi.md#createtmpforms) | **POST** /rest/v1/tmp/form/batch | Create a form with the current user
[**createTmpHealthElement**](TmpApi.md#createtmphealthelement) | **
POST** /rest/v1/tmp/healthElement | Create a healthElement with the current user
[**createTmpHealthElements**](TmpApi.md#createtmphealthelements) | **
POST** /rest/v1/tmp/healthElement/batch | Create a healthElement with the current user
[**createTmpInvoice**](TmpApi.md#createtmpinvoice) | **
POST** /rest/v1/tmp/invoice | Create a invoice with the current user
[**createTmpInvoices**](TmpApi.md#createtmpinvoices) | **
POST** /rest/v1/tmp/invoice/batch | Create a invoice with the current user
[**createTmpMessage**](TmpApi.md#createtmpmessage) | **
POST** /rest/v1/tmp/message | Create a message with the current user
[**createTmpMessages**](TmpApi.md#createtmpmessages) | **
POST** /rest/v1/tmp/message/batch | Create a message with the current user
[**createTmpPatient**](TmpApi.md#createtmppatient) | **
POST** /rest/v1/tmp/patient | Create a patient with the current user
[**createTmpPatients**](TmpApi.md#createtmppatients) | **
POST** /rest/v1/tmp/patient/batch | Create a patient with the current user
[**deleteTmpItems**](TmpApi.md#deletetmpitems) | **POST** /rest/v1/tmp/batch/delete | Soft delete items.
[**destroyTmpDatabase**](TmpApi.md#destroytmpdatabase) | **DELETE** /rest/v1/tmp | Destroy tmp database for current user
[**getTmpClassification**](TmpApi.md#gettmpclassification) | **
GET** /rest/v1/tmp/classification/byId/{id} | Get a classification by id
[**getTmpClassifications**](TmpApi.md#gettmpclassifications) | **
POST** /rest/v1/tmp/classification/get | Get classifications by ids with the current user
[**getTmpContact**](TmpApi.md#gettmpcontact) | **GET** /rest/v1/tmp/contact/byId/{id} | Get a contact by id
[**getTmpContacts**](TmpApi.md#gettmpcontacts) | **
POST** /rest/v1/tmp/contact/get | Get contacts by ids with the current user
[**getTmpDocument**](TmpApi.md#gettmpdocument) | **GET** /rest/v1/tmp/document/byId/{id} | Get a document by id
[**getTmpDocuments**](TmpApi.md#gettmpdocuments) | **
POST** /rest/v1/tmp/document/get | Get documents by ids with the current user
[**getTmpEntityTemplate**](TmpApi.md#gettmpentitytemplate) | **
GET** /rest/v1/tmp/entityTemplate/byId/{id} | Get a entityTemplate by id
[**getTmpEntityTemplates**](TmpApi.md#gettmpentitytemplates) | **
POST** /rest/v1/tmp/entityTemplate/get | Get entityTemplates by ids with the current user
[**getTmpForm**](TmpApi.md#gettmpform) | **GET** /rest/v1/tmp/form/byId/{id} | Get a form by id
[**getTmpForms**](TmpApi.md#gettmpforms) | **POST** /rest/v1/tmp/form/get | Get forms by ids with the current user
[**getTmpHealthElement**](TmpApi.md#gettmphealthelement) | **
GET** /rest/v1/tmp/healthElement/byId/{id} | Get a healthElement by id
[**getTmpHealthElements**](TmpApi.md#gettmphealthelements) | **
POST** /rest/v1/tmp/healthElement/get | Get healthElements by ids with the current user
[**getTmpInvoice**](TmpApi.md#gettmpinvoice) | **GET** /rest/v1/tmp/invoice/byId/{id} | Get a invoice by id
[**getTmpInvoices**](TmpApi.md#gettmpinvoices) | **
POST** /rest/v1/tmp/invoice/get | Get invoices by ids with the current user
[**getTmpMessage**](TmpApi.md#gettmpmessage) | **GET** /rest/v1/tmp/message/byId/{id} | Get a message by id
[**getTmpMessages**](TmpApi.md#gettmpmessages) | **
POST** /rest/v1/tmp/message/get | Get messages by ids with the current user
[**getTmpPatient**](TmpApi.md#gettmppatient) | **GET** /rest/v1/tmp/patient/byId/{id} | Get a patient by id
[**getTmpPatients**](TmpApi.md#gettmppatients) | **
POST** /rest/v1/tmp/patient/get | Get patients by ids with the current user
[**listTmpClassifications**](TmpApi.md#listtmpclassifications) | **
GET** /rest/v1/tmp/classification/list | List classifications with the current user
[**listTmpContacts**](TmpApi.md#listtmpcontacts) | **
GET** /rest/v1/tmp/contact/list | List contacts with the current user
[**listTmpDocuments**](TmpApi.md#listtmpdocuments) | **
GET** /rest/v1/tmp/document/list | List documents with the current user
[**listTmpEntityTemplates**](TmpApi.md#listtmpentitytemplates) | **
GET** /rest/v1/tmp/entityTemplate/list | List entityTemplates with the current user
[**listTmpForms**](TmpApi.md#listtmpforms) | **GET** /rest/v1/tmp/form/list | List forms with the current user
[**listTmpHealthElements**](TmpApi.md#listtmphealthelements) | **
GET** /rest/v1/tmp/healthElement/list | List healthElements with the current user
[**listTmpInvoices**](TmpApi.md#listtmpinvoices) | **
GET** /rest/v1/tmp/invoice/list | List invoices with the current user
[**listTmpMessages**](TmpApi.md#listtmpmessages) | **
GET** /rest/v1/tmp/message/list | List messages with the current user
[**listTmpPatients**](TmpApi.md#listtmppatients) | **
GET** /rest/v1/tmp/patient/list | List patients with the current user
[**modifyTmpClassification**](TmpApi.md#modifytmpclassification) | **
PUT** /rest/v1/tmp/classification | Modify a classification
[**modifyTmpClassifications**](TmpApi.md#modifytmpclassifications) | **
PUT** /rest/v1/tmp/classification/batch | Modify a batch of healthcare elements
[**modifyTmpContact**](TmpApi.md#modifytmpcontact) | **PUT** /rest/v1/tmp/contact | Modify a contact
[**modifyTmpContacts**](TmpApi.md#modifytmpcontacts) | **
PUT** /rest/v1/tmp/contact/batch | Modify a batch of healthcare elements
[**modifyTmpDocument**](TmpApi.md#modifytmpdocument) | **PUT** /rest/v1/tmp/document | Modify a document
[**modifyTmpDocuments**](TmpApi.md#modifytmpdocuments) | **
PUT** /rest/v1/tmp/document/batch | Modify a batch of healthcare elements
[**modifyTmpEntityTemplate**](TmpApi.md#modifytmpentitytemplate) | **
PUT** /rest/v1/tmp/entityTemplate | Modify a entityTemplate
[**modifyTmpEntityTemplates**](TmpApi.md#modifytmpentitytemplates) | **
PUT** /rest/v1/tmp/entityTemplate/batch | Modify a batch of healthcare elements
[**modifyTmpForm**](TmpApi.md#modifytmpform) | **PUT** /rest/v1/tmp/form | Modify a form
[**modifyTmpForms**](TmpApi.md#modifytmpforms) | **PUT** /rest/v1/tmp/form/batch | Modify a batch of healthcare elements
[**modifyTmpHealthElement**](TmpApi.md#modifytmphealthelement) | **
PUT** /rest/v1/tmp/healthElement | Modify a healthElement
[**modifyTmpHealthElements**](TmpApi.md#modifytmphealthelements) | **
PUT** /rest/v1/tmp/healthElement/batch | Modify a batch of healthcare elements
[**modifyTmpInvoice**](TmpApi.md#modifytmpinvoice) | **PUT** /rest/v1/tmp/invoice | Modify a invoice
[**modifyTmpInvoices**](TmpApi.md#modifytmpinvoices) | **
PUT** /rest/v1/tmp/invoice/batch | Modify a batch of healthcare elements
[**modifyTmpMessage**](TmpApi.md#modifytmpmessage) | **PUT** /rest/v1/tmp/message | Modify a message
[**modifyTmpMessages**](TmpApi.md#modifytmpmessages) | **
PUT** /rest/v1/tmp/message/batch | Modify a batch of healthcare elements
[**modifyTmpPatient**](TmpApi.md#modifytmppatient) | **PUT** /rest/v1/tmp/patient | Modify a patient
[**modifyTmpPatients**](TmpApi.md#modifytmppatients) | **
PUT** /rest/v1/tmp/patient/batch | Modify a batch of healthcare elements
[**purgeTmpItems**](TmpApi.md#purgetmpitems) | **POST** /rest/v1/tmp/batch/purge | Hard delete items.
[**replicateToTmpDatabase**](TmpApi.md#replicatetotmpdatabase) | **POST** /rest/v1/tmp/replicate/from/{from} |

# **createTmpClassification**

> ClassificationDto createTmpClassification(classificationDto)

Create a classification with the current user

Returns an instance of created classification.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final classificationDto = ClassificationDto(); // ClassificationDto | 

try {
    final result = api_instance.createTmpClassification(classificationDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->createTmpClassification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classificationDto** | [**ClassificationDto**](ClassificationDto.md)|  | 

### Return type

[**ClassificationDto**](ClassificationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTmpClassifications**
> List<ClassificationDto> createTmpClassifications(classificationDto)

Create a classification with the current user

Returns an instance of created classification.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final classificationDto = [List<ClassificationDto>()]; // List<ClassificationDto> | 

try {
    final result = api_instance.createTmpClassifications(classificationDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->createTmpClassifications: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classificationDto** | [**List<ClassificationDto>**](ClassificationDto.md)|  | 

### Return type

[**List<ClassificationDto>**](ClassificationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTmpContact**
> ContactDto createTmpContact(contactDto)

Create a contact with the current user

Returns an instance of created contact.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final contactDto = ContactDto(); // ContactDto | 

try {
    final result = api_instance.createTmpContact(contactDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->createTmpContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactDto** | [**ContactDto**](ContactDto.md)|  | 

### Return type

[**ContactDto**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTmpContacts**
> List<ContactDto> createTmpContacts(contactDto)

Create a contact with the current user

Returns an instance of created contact.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final contactDto = [List<ContactDto>()]; // List<ContactDto> | 

try {
    final result = api_instance.createTmpContacts(contactDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->createTmpContacts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactDto** | [**List<ContactDto>**](ContactDto.md)|  | 

### Return type

[**List<ContactDto>**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTmpDatabase**
> Object createTmpDatabase()

Create tmp database for current user

Nothing happens if the database already exists

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();

try {
    final result = api_instance.createTmpDatabase();
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->createTmpDatabase: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTmpDocument**
> DocumentDto createTmpDocument(documentDto)

Create a document with the current user

Returns an instance of created document.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final documentDto = DocumentDto(); // DocumentDto | 

try {
    final result = api_instance.createTmpDocument(documentDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->createTmpDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentDto** | [**DocumentDto**](DocumentDto.md)|  | 

### Return type

[**DocumentDto**](DocumentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTmpDocuments**
> List<DocumentDto> createTmpDocuments(documentDto)

Create a document with the current user

Returns an instance of created document.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final documentDto = [List<DocumentDto>()]; // List<DocumentDto> | 

try {
    final result = api_instance.createTmpDocuments(documentDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->createTmpDocuments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentDto** | [**List<DocumentDto>**](DocumentDto.md)|  | 

### Return type

[**List<DocumentDto>**](DocumentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTmpEntityTemplate**
> EntityTemplateDto createTmpEntityTemplate(entityTemplateDto)

Create a entityTemplate with the current user

Returns an instance of created entityTemplate.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final entityTemplateDto = EntityTemplateDto(); // EntityTemplateDto | 

try {
    final result = api_instance.createTmpEntityTemplate(entityTemplateDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->createTmpEntityTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTemplateDto** | [**EntityTemplateDto**](EntityTemplateDto.md)|  | 

### Return type

[**EntityTemplateDto**](EntityTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTmpEntityTemplates**
> List<EntityTemplateDto> createTmpEntityTemplates(entityTemplateDto)

Create a entityTemplate with the current user

Returns an instance of created entityTemplate.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final entityTemplateDto = [List<EntityTemplateDto>()]; // List<EntityTemplateDto> | 

try {
    final result = api_instance.createTmpEntityTemplates(entityTemplateDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->createTmpEntityTemplates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTemplateDto** | [**List<EntityTemplateDto>**](EntityTemplateDto.md)|  | 

### Return type

[**List<EntityTemplateDto>**](EntityTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTmpForm**
> FormDto createTmpForm(formDto)

Create a form with the current user

Returns an instance of created form.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final formDto = FormDto(); // FormDto | 

try {
    final result = api_instance.createTmpForm(formDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->createTmpForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formDto** | [**FormDto**](FormDto.md)|  | 

### Return type

[**FormDto**](FormDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTmpForms**
> List<FormDto> createTmpForms(formDto)

Create a form with the current user

Returns an instance of created form.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final formDto = [List<FormDto>()]; // List<FormDto> | 

try {
    final result = api_instance.createTmpForms(formDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->createTmpForms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formDto** | [**List<FormDto>**](FormDto.md)|  | 

### Return type

[**List<FormDto>**](FormDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTmpHealthElement**
> HealthElementDto createTmpHealthElement(healthElementDto)

Create a healthElement with the current user

Returns an instance of created healthElement.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final healthElementDto = HealthElementDto(); // HealthElementDto | 

try {
    final result = api_instance.createTmpHealthElement(healthElementDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->createTmpHealthElement: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **healthElementDto** | [**HealthElementDto**](HealthElementDto.md)|  | 

### Return type

[**HealthElementDto**](HealthElementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTmpHealthElements**
> List<HealthElementDto> createTmpHealthElements(healthElementDto)

Create a healthElement with the current user

Returns an instance of created healthElement.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final healthElementDto = [List<HealthElementDto>()]; // List<HealthElementDto> | 

try {
    final result = api_instance.createTmpHealthElements(healthElementDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->createTmpHealthElements: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **healthElementDto** | [**List<HealthElementDto>**](HealthElementDto.md)|  | 

### Return type

[**List<HealthElementDto>**](HealthElementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTmpInvoice**
> InvoiceDto createTmpInvoice(invoiceDto)

Create a invoice with the current user

Returns an instance of created invoice.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final invoiceDto = InvoiceDto(); // InvoiceDto | 

try {
    final result = api_instance.createTmpInvoice(invoiceDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->createTmpInvoice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceDto** | [**InvoiceDto**](InvoiceDto.md)|  | 

### Return type

[**InvoiceDto**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTmpInvoices**
> List<InvoiceDto> createTmpInvoices(invoiceDto)

Create a invoice with the current user

Returns an instance of created invoice.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final invoiceDto = [List<InvoiceDto>()]; // List<InvoiceDto> | 

try {
    final result = api_instance.createTmpInvoices(invoiceDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->createTmpInvoices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceDto** | [**List<InvoiceDto>**](InvoiceDto.md)|  | 

### Return type

[**List<InvoiceDto>**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTmpMessage**
> MessageDto createTmpMessage(messageDto)

Create a message with the current user

Returns an instance of created message.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final messageDto = MessageDto(); // MessageDto | 

try {
    final result = api_instance.createTmpMessage(messageDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->createTmpMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageDto** | [**MessageDto**](MessageDto.md)|  | 

### Return type

[**MessageDto**](MessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTmpMessages**
> List<MessageDto> createTmpMessages(messageDto)

Create a message with the current user

Returns an instance of created message.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final messageDto = [List<MessageDto>()]; // List<MessageDto> | 

try {
    final result = api_instance.createTmpMessages(messageDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->createTmpMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageDto** | [**List<MessageDto>**](MessageDto.md)|  | 

### Return type

[**List<MessageDto>**](MessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTmpPatient**
> PatientDto createTmpPatient(patientDto)

Create a patient with the current user

Returns an instance of created patient.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final patientDto = PatientDto(); // PatientDto | 

try {
    final result = api_instance.createTmpPatient(patientDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->createTmpPatient: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientDto** | [**PatientDto**](PatientDto.md)|  | 

### Return type

[**PatientDto**](PatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTmpPatients**
> List<PatientDto> createTmpPatients(patientDto)

Create a patient with the current user

Returns an instance of created patient.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final patientDto = [List<PatientDto>()]; // List<PatientDto> | 

try {
    final result = api_instance.createTmpPatients(patientDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->createTmpPatients: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientDto** | [**List<PatientDto>**](PatientDto.md)|  | 

### Return type

[**List<PatientDto>**](PatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTmpItems**
> List<DocIdentifier> deleteTmpItems(requestBody)

Soft delete items.

Response is a set containing the ID's of deleted items.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.deleteTmpItems(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->deleteTmpItems: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**List<DocIdentifier>**](DocIdentifier.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroyTmpDatabase**
> Object destroyTmpDatabase()

Destroy tmp database for current user

Nothing happens if the database does not exists

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();

try {
    final result = api_instance.destroyTmpDatabase();
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->destroyTmpDatabase: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTmpClassification**
> ClassificationDto getTmpClassification(id)

Get a classification by id

Returns an instance of classification.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final id = id_example; // String | 

try {
    final result = api_instance.getTmpClassification(id);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->getTmpClassification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ClassificationDto**](ClassificationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTmpClassifications**
> List<ClassificationDto> getTmpClassifications(requestBody)

Get classifications by ids with the current user

Returns an instance of created classification.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.getTmpClassifications(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->getTmpClassifications: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**List<ClassificationDto>**](ClassificationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTmpContact**
> ContactDto getTmpContact(id)

Get a contact by id

Returns an instance of contact.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final id = id_example; // String | 

try {
    final result = api_instance.getTmpContact(id);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->getTmpContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ContactDto**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTmpContacts**
> List<ContactDto> getTmpContacts(requestBody)

Get contacts by ids with the current user

Returns an instance of created contact.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.getTmpContacts(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->getTmpContacts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**List<ContactDto>**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTmpDocument**
> DocumentDto getTmpDocument(id)

Get a document by id

Returns an instance of document.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final id = id_example; // String | 

try {
    final result = api_instance.getTmpDocument(id);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->getTmpDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**DocumentDto**](DocumentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTmpDocuments**
> List<DocumentDto> getTmpDocuments(requestBody)

Get documents by ids with the current user

Returns an instance of created document.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.getTmpDocuments(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->getTmpDocuments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**List<DocumentDto>**](DocumentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTmpEntityTemplate**
> EntityTemplateDto getTmpEntityTemplate(id)

Get a entityTemplate by id

Returns an instance of entityTemplate.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final id = id_example; // String | 

try {
    final result = api_instance.getTmpEntityTemplate(id);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->getTmpEntityTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**EntityTemplateDto**](EntityTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTmpEntityTemplates**
> List<EntityTemplateDto> getTmpEntityTemplates(requestBody)

Get entityTemplates by ids with the current user

Returns an instance of created entityTemplate.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.getTmpEntityTemplates(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->getTmpEntityTemplates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**List<EntityTemplateDto>**](EntityTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTmpForm**
> FormDto getTmpForm(id)

Get a form by id

Returns an instance of form.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final id = id_example; // String | 

try {
    final result = api_instance.getTmpForm(id);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->getTmpForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**FormDto**](FormDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTmpForms**
> List<FormDto> getTmpForms(requestBody)

Get forms by ids with the current user

Returns an instance of created form.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.getTmpForms(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->getTmpForms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**List<FormDto>**](FormDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTmpHealthElement**
> HealthElementDto getTmpHealthElement(id)

Get a healthElement by id

Returns an instance of healthElement.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final id = id_example; // String | 

try {
    final result = api_instance.getTmpHealthElement(id);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->getTmpHealthElement: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**HealthElementDto**](HealthElementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTmpHealthElements**
> List<HealthElementDto> getTmpHealthElements(requestBody)

Get healthElements by ids with the current user

Returns an instance of created healthElement.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.getTmpHealthElements(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->getTmpHealthElements: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**List<HealthElementDto>**](HealthElementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTmpInvoice**
> InvoiceDto getTmpInvoice(id)

Get a invoice by id

Returns an instance of invoice.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final id = id_example; // String | 

try {
    final result = api_instance.getTmpInvoice(id);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->getTmpInvoice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**InvoiceDto**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTmpInvoices**
> List<InvoiceDto> getTmpInvoices(requestBody)

Get invoices by ids with the current user

Returns an instance of created invoice.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.getTmpInvoices(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->getTmpInvoices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**List<InvoiceDto>**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTmpMessage**
> MessageDto getTmpMessage(id)

Get a message by id

Returns an instance of message.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final id = id_example; // String | 

try {
    final result = api_instance.getTmpMessage(id);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->getTmpMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**MessageDto**](MessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTmpMessages**
> List<MessageDto> getTmpMessages(requestBody)

Get messages by ids with the current user

Returns an instance of created message.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.getTmpMessages(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->getTmpMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**List<MessageDto>**](MessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTmpPatient**
> PatientDto getTmpPatient(id)

Get a patient by id

Returns an instance of patient.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final id = id_example; // String | 

try {
    final result = api_instance.getTmpPatient(id);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->getTmpPatient: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**PatientDto**](PatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTmpPatients**
> List<PatientDto> getTmpPatients(requestBody)

Get patients by ids with the current user

Returns an instance of created patient.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.getTmpPatients(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->getTmpPatients: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**List<PatientDto>**](PatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTmpClassifications**
> PaginatedListClassificationDto listTmpClassifications(firstClassificationId, pageSize)

List classifications with the current user

Returns paginated classifications.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final firstClassificationId = firstClassificationId_example; // String | 
final pageSize = 56; // int | 

try {
    final result = api_instance.listTmpClassifications(firstClassificationId, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->listTmpClassifications: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstClassificationId** | **String**|  | [optional] 
 **pageSize** | **int**|  | [optional] 

### Return type

[**PaginatedListClassificationDto**](PaginatedListClassificationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTmpContacts**
> PaginatedListInvoiceDto listTmpContacts(firstContactId, pageSize)

List contacts with the current user

Returns paginated contacts.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final firstContactId = firstContactId_example; // String | 
final pageSize = 56; // int | 

try {
    final result = api_instance.listTmpContacts(firstContactId, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->listTmpContacts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstContactId** | **String**|  | [optional] 
 **pageSize** | **int**|  | [optional] 

### Return type

[**PaginatedListInvoiceDto**](PaginatedListInvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTmpDocuments**
> PaginatedListDocumentDto listTmpDocuments(firstDocumentId, pageSize)

List documents with the current user

Returns paginated documents.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final firstDocumentId = firstDocumentId_example; // String | 
final pageSize = 56; // int | 

try {
    final result = api_instance.listTmpDocuments(firstDocumentId, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->listTmpDocuments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstDocumentId** | **String**|  | [optional] 
 **pageSize** | **int**|  | [optional] 

### Return type

[**PaginatedListDocumentDto**](PaginatedListDocumentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTmpEntityTemplates**
> PaginatedListEntityTemplateDto listTmpEntityTemplates(firstEntityTemplateId, pageSize)

List entityTemplates with the current user

Returns paginated entityTemplates.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final firstEntityTemplateId = firstEntityTemplateId_example; // String | 
final pageSize = 56; // int | 

try {
    final result = api_instance.listTmpEntityTemplates(firstEntityTemplateId, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->listTmpEntityTemplates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstEntityTemplateId** | **String**|  | [optional] 
 **pageSize** | **int**|  | [optional] 

### Return type

[**PaginatedListEntityTemplateDto**](PaginatedListEntityTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTmpForms**
> PaginatedListFormDto listTmpForms(firstFormId, pageSize)

List forms with the current user

Returns paginated forms.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final firstFormId = firstFormId_example; // String | 
final pageSize = 56; // int | 

try {
    final result = api_instance.listTmpForms(firstFormId, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->listTmpForms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstFormId** | **String**|  | [optional] 
 **pageSize** | **int**|  | [optional] 

### Return type

[**PaginatedListFormDto**](PaginatedListFormDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTmpHealthElements**
> PaginatedListHealthElementDto listTmpHealthElements(firstHealthElementId, pageSize)

List healthElements with the current user

Returns paginated healthElements.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final firstHealthElementId = firstHealthElementId_example; // String | 
final pageSize = 56; // int | 

try {
    final result = api_instance.listTmpHealthElements(firstHealthElementId, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->listTmpHealthElements: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstHealthElementId** | **String**|  | [optional] 
 **pageSize** | **int**|  | [optional] 

### Return type

[**PaginatedListHealthElementDto**](PaginatedListHealthElementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTmpInvoices**
> PaginatedListInvoiceDto listTmpInvoices(firstInvoiceId, pageSize)

List invoices with the current user

Returns paginated invoices.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final firstInvoiceId = firstInvoiceId_example; // String | 
final pageSize = 56; // int | 

try {
    final result = api_instance.listTmpInvoices(firstInvoiceId, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->listTmpInvoices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstInvoiceId** | **String**|  | [optional] 
 **pageSize** | **int**|  | [optional] 

### Return type

[**PaginatedListInvoiceDto**](PaginatedListInvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTmpMessages**
> PaginatedListInvoiceDto listTmpMessages(firstMessageId, pageSize)

List messages with the current user

Returns paginated messages.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final firstMessageId = firstMessageId_example; // String | 
final pageSize = 56; // int | 

try {
    final result = api_instance.listTmpMessages(firstMessageId, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->listTmpMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstMessageId** | **String**|  | [optional] 
 **pageSize** | **int**|  | [optional] 

### Return type

[**PaginatedListInvoiceDto**](PaginatedListInvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTmpPatients**
> PaginatedListPatientDto listTmpPatients(firstPatientId, pageSize)

List patients with the current user

Returns paginated patients.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final firstPatientId = firstPatientId_example; // String | 
final pageSize = 56; // int | 

try {
    final result = api_instance.listTmpPatients(firstPatientId, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->listTmpPatients: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstPatientId** | **String**|  | [optional] 
 **pageSize** | **int**|  | [optional] 

### Return type

[**PaginatedListPatientDto**](PaginatedListPatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyTmpClassification**
> ClassificationDto modifyTmpClassification(classificationDto)

Modify a classification

Returns the modified classification.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final classificationDto = ClassificationDto(); // ClassificationDto | 

try {
    final result = api_instance.modifyTmpClassification(classificationDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->modifyTmpClassification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classificationDto** | [**ClassificationDto**](ClassificationDto.md)|  | 

### Return type

[**ClassificationDto**](ClassificationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyTmpClassifications**
> List<ClassificationDto> modifyTmpClassifications(classificationDto)

Modify a batch of healthcare elements

Returns the modified healthcare elements.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final classificationDto = [List<ClassificationDto>()]; // List<ClassificationDto> | 

try {
    final result = api_instance.modifyTmpClassifications(classificationDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->modifyTmpClassifications: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classificationDto** | [**List<ClassificationDto>**](ClassificationDto.md)|  | 

### Return type

[**List<ClassificationDto>**](ClassificationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyTmpContact**
> ContactDto modifyTmpContact(contactDto)

Modify a contact

Returns the modified contact.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final contactDto = ContactDto(); // ContactDto | 

try {
    final result = api_instance.modifyTmpContact(contactDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->modifyTmpContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactDto** | [**ContactDto**](ContactDto.md)|  | 

### Return type

[**ContactDto**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyTmpContacts**
> List<ContactDto> modifyTmpContacts(contactDto)

Modify a batch of healthcare elements

Returns the modified healthcare elements.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final contactDto = [List<ContactDto>()]; // List<ContactDto> | 

try {
    final result = api_instance.modifyTmpContacts(contactDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->modifyTmpContacts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactDto** | [**List<ContactDto>**](ContactDto.md)|  | 

### Return type

[**List<ContactDto>**](ContactDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyTmpDocument**
> DocumentDto modifyTmpDocument(documentDto)

Modify a document

Returns the modified document.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final documentDto = DocumentDto(); // DocumentDto | 

try {
    final result = api_instance.modifyTmpDocument(documentDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->modifyTmpDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentDto** | [**DocumentDto**](DocumentDto.md)|  | 

### Return type

[**DocumentDto**](DocumentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyTmpDocuments**
> List<DocumentDto> modifyTmpDocuments(documentDto)

Modify a batch of healthcare elements

Returns the modified healthcare elements.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final documentDto = [List<DocumentDto>()]; // List<DocumentDto> | 

try {
    final result = api_instance.modifyTmpDocuments(documentDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->modifyTmpDocuments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentDto** | [**List<DocumentDto>**](DocumentDto.md)|  | 

### Return type

[**List<DocumentDto>**](DocumentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyTmpEntityTemplate**
> EntityTemplateDto modifyTmpEntityTemplate(entityTemplateDto)

Modify a entityTemplate

Returns the modified entityTemplate.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final entityTemplateDto = EntityTemplateDto(); // EntityTemplateDto | 

try {
    final result = api_instance.modifyTmpEntityTemplate(entityTemplateDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->modifyTmpEntityTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTemplateDto** | [**EntityTemplateDto**](EntityTemplateDto.md)|  | 

### Return type

[**EntityTemplateDto**](EntityTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyTmpEntityTemplates**
> List<EntityTemplateDto> modifyTmpEntityTemplates(entityTemplateDto)

Modify a batch of healthcare elements

Returns the modified healthcare elements.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final entityTemplateDto = [List<EntityTemplateDto>()]; // List<EntityTemplateDto> | 

try {
    final result = api_instance.modifyTmpEntityTemplates(entityTemplateDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->modifyTmpEntityTemplates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTemplateDto** | [**List<EntityTemplateDto>**](EntityTemplateDto.md)|  | 

### Return type

[**List<EntityTemplateDto>**](EntityTemplateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyTmpForm**
> FormDto modifyTmpForm(formDto)

Modify a form

Returns the modified form.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final formDto = FormDto(); // FormDto | 

try {
    final result = api_instance.modifyTmpForm(formDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->modifyTmpForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formDto** | [**FormDto**](FormDto.md)|  | 

### Return type

[**FormDto**](FormDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyTmpForms**
> List<FormDto> modifyTmpForms(formDto)

Modify a batch of healthcare elements

Returns the modified healthcare elements.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final formDto = [List<FormDto>()]; // List<FormDto> | 

try {
    final result = api_instance.modifyTmpForms(formDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->modifyTmpForms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formDto** | [**List<FormDto>**](FormDto.md)|  | 

### Return type

[**List<FormDto>**](FormDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyTmpHealthElement**
> HealthElementDto modifyTmpHealthElement(healthElementDto)

Modify a healthElement

Returns the modified healthElement.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final healthElementDto = HealthElementDto(); // HealthElementDto | 

try {
    final result = api_instance.modifyTmpHealthElement(healthElementDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->modifyTmpHealthElement: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **healthElementDto** | [**HealthElementDto**](HealthElementDto.md)|  | 

### Return type

[**HealthElementDto**](HealthElementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyTmpHealthElements**
> List<HealthElementDto> modifyTmpHealthElements(healthElementDto)

Modify a batch of healthcare elements

Returns the modified healthcare elements.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final healthElementDto = [List<HealthElementDto>()]; // List<HealthElementDto> | 

try {
    final result = api_instance.modifyTmpHealthElements(healthElementDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->modifyTmpHealthElements: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **healthElementDto** | [**List<HealthElementDto>**](HealthElementDto.md)|  | 

### Return type

[**List<HealthElementDto>**](HealthElementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyTmpInvoice**
> InvoiceDto modifyTmpInvoice(invoiceDto)

Modify a invoice

Returns the modified invoice.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final invoiceDto = InvoiceDto(); // InvoiceDto | 

try {
    final result = api_instance.modifyTmpInvoice(invoiceDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->modifyTmpInvoice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceDto** | [**InvoiceDto**](InvoiceDto.md)|  | 

### Return type

[**InvoiceDto**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyTmpInvoices**
> List<InvoiceDto> modifyTmpInvoices(invoiceDto)

Modify a batch of healthcare elements

Returns the modified healthcare elements.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final invoiceDto = [List<InvoiceDto>()]; // List<InvoiceDto> | 

try {
    final result = api_instance.modifyTmpInvoices(invoiceDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->modifyTmpInvoices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceDto** | [**List<InvoiceDto>**](InvoiceDto.md)|  | 

### Return type

[**List<InvoiceDto>**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyTmpMessage**
> MessageDto modifyTmpMessage(messageDto)

Modify a message

Returns the modified message.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final messageDto = MessageDto(); // MessageDto | 

try {
    final result = api_instance.modifyTmpMessage(messageDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->modifyTmpMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageDto** | [**MessageDto**](MessageDto.md)|  | 

### Return type

[**MessageDto**](MessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyTmpMessages**
> List<MessageDto> modifyTmpMessages(messageDto)

Modify a batch of healthcare elements

Returns the modified healthcare elements.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final messageDto = [List<MessageDto>()]; // List<MessageDto> | 

try {
    final result = api_instance.modifyTmpMessages(messageDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->modifyTmpMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageDto** | [**List<MessageDto>**](MessageDto.md)|  | 

### Return type

[**List<MessageDto>**](MessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyTmpPatient**
> PatientDto modifyTmpPatient(patientDto)

Modify a patient

Returns the modified patient.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final patientDto = PatientDto(); // PatientDto | 

try {
    final result = api_instance.modifyTmpPatient(patientDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->modifyTmpPatient: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientDto** | [**PatientDto**](PatientDto.md)|  | 

### Return type

[**PatientDto**](PatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyTmpPatients**
> List<PatientDto> modifyTmpPatients(patientDto)

Modify a batch of healthcare elements

Returns the modified healthcare elements.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final patientDto = [List<PatientDto>()]; // List<PatientDto> | 

try {
    final result = api_instance.modifyTmpPatients(patientDto);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->modifyTmpPatients: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patientDto** | [**List<PatientDto>**](PatientDto.md)|  | 

### Return type

[**List<PatientDto>**](PatientDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **purgeTmpItems**
> List<DocIdentifier> purgeTmpItems(requestBody)

Hard delete items.

Response is a set containing the ID's of deleted items.

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.purgeTmpItems(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->purgeTmpItems: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**List<DocIdentifier>**](DocIdentifier.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replicateToTmpDatabase**
> ReplicatorDocumentDto replicateToTmpDatabase(from, requestBody)



### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = TmpApi();
final from = from_example; // String | 
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.replicateToTmpDatabase(from, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling TmpApi->replicateToTmpDatabase: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **String**|  | 
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**ReplicatorDocumentDto**](ReplicatorDocumentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

