# icure_dart_sdk.api.MessageApi

## Load the API package
```dart
import 'package:icure_dart_sdk/api.dart';
```

All URIs are relative to *https://kraken.icure.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMessage**](MessageApi.md#createmessage) | **POST** /rest/v1/message | Creates a message
[**deleteDelegation**](MessageApi.md#deletedelegation) | **
DELETE** /rest/v1/message/{messageId}/delegate/{delegateId} | Deletes a message delegation
[**deleteMessages**](MessageApi.md#deletemessages) | **POST** /rest/v1/message/delete/batch | Deletes multiple messages
[**findMessages**](MessageApi.md#findmessages) | **
GET** /rest/v1/message | Get all messages (paginated) for current HC Party
[**findMessagesByFromAddress**](MessageApi.md#findmessagesbyfromaddress) | **
GET** /rest/v1/message/byFromAddress | Get all messages (paginated) for current HC Party and provided from address
[**findMessagesByHCPartyPatientForeignKeys**](MessageApi.md#findmessagesbyhcpartypatientforeignkeys) | **
GET** /rest/v1/message/byHcPartySecretForeignKeys | List messages found By Healthcare Party and secret foreign keys.
[**findMessagesByToAddress**](MessageApi.md#findmessagesbytoaddress) | **
GET** /rest/v1/message/byToAddress | Get all messages (paginated) for current HC Party and provided to address
[**findMessagesByTransportGuid**](MessageApi.md#findmessagesbytransportguid) | **
GET** /rest/v1/message/byTransportGuid | Get all messages (paginated) for current HC Party and provided transportGuid
[**findMessagesByTransportGuidSentDate**](MessageApi.md#findmessagesbytransportguidsentdate) | **
GET** /rest/v1/message/byTransportGuidSentDate | Get all messages starting by a prefix between two date
[**getChildrenMessages**](MessageApi.md#getchildrenmessages) | **
GET** /rest/v1/message/{messageId}/children | Get children messages of provided message
[**getMessage**](MessageApi.md#getmessage) | **GET** /rest/v1/message/{messageId} | Gets a message
[**getMessagesChildren**](MessageApi.md#getmessageschildren) | **
POST** /rest/v1/message/children/batch | Get children messages of provided message
[**listMessagesByInvoices**](MessageApi.md#listmessagesbyinvoices) | **
POST** /rest/v1/message/byInvoice | Get children messages of provided message
[**listMessagesByTransportGuids**](MessageApi.md#listmessagesbytransportguids) | **
POST** /rest/v1/message/byTransportGuid/list | Get all messages for current HC Party and provided transportGuids
[**modifyMessage**](MessageApi.md#modifymessage) | **PUT** /rest/v1/message | Updates a message
[**newMessageDelegations**](MessageApi.md#newmessagedelegations) | **
PUT** /rest/v1/message/{messageId}/delegate | Adds a delegation to a message
[**setMessagesReadStatus**](MessageApi.md#setmessagesreadstatus) | **
PUT** /rest/v1/message/readstatus | Set read status for given list of messages
[**setMessagesStatusBits**](MessageApi.md#setmessagesstatusbits) | **
PUT** /rest/v1/message/status/{status} | Set status bits for given list of messages


# **createMessage**
> MessageDto createMessage(messageDto)

Creates a message

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MessageApi();
final messageDto = MessageDto(); // MessageDto | 

try {
    final result = api_instance.createMessage(messageDto);
    print(result);
} catch (e) {
    print('Exception when calling MessageApi->createMessage: $e\n');
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

# **deleteDelegation**
> MessageDto deleteDelegation(messageId, delegateId)

Deletes a message delegation

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MessageApi();
final messageId = messageId_example; // String | 
final delegateId = delegateId_example; // String | 

try {
    final result = api_instance.deleteDelegation(messageId, delegateId);
    print(result);
} catch (e) {
    print('Exception when calling MessageApi->deleteDelegation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String**|  | 
 **delegateId** | **String**|  | 

### Return type

[**MessageDto**](MessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMessages**
> List<DocIdentifier> deleteMessages(listOfIdsDto)

Deletes multiple messages

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MessageApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.deleteMessages(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling MessageApi->deleteMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<DocIdentifier>**](DocIdentifier.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findMessages**
> PaginatedListMessageDto findMessages(startKey, startDocumentId, limit)

Get all messages (paginated) for current HC Party

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MessageApi();
final startKey = startKey_example; // String | 
final startDocumentId = startDocumentId_example; // String | 
final limit = 56; // int | 

try {
    final result = api_instance.findMessages(startKey, startDocumentId, limit);
    print(result);
} catch (e) {
    print('Exception when calling MessageApi->findMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startKey** | **String**|  | [optional] 
 **startDocumentId** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] 

### Return type

[**PaginatedListMessageDto**](PaginatedListMessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findMessagesByFromAddress**
> PaginatedListMessageDto findMessagesByFromAddress(fromAddress, startKey, startDocumentId, limit, hcpId)

Get all messages (paginated) for current HC Party and provided from address

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MessageApi();
final fromAddress = fromAddress_example; // String | 
final startKey = startKey_example; // String | 
final startDocumentId = startDocumentId_example; // String | 
final limit = 56; // int | 
final hcpId = hcpId_example; // String | 

try {
    final result = api_instance.findMessagesByFromAddress(fromAddress, startKey, startDocumentId, limit, hcpId);
    print(result);
} catch (e) {
    print('Exception when calling MessageApi->findMessagesByFromAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromAddress** | **String**|  | [optional] 
 **startKey** | **String**|  | [optional] 
 **startDocumentId** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] 
 **hcpId** | **String**|  | [optional] 

### Return type

[**PaginatedListMessageDto**](PaginatedListMessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findMessagesByHCPartyPatientForeignKeys**
> List<MessageDto> findMessagesByHCPartyPatientForeignKeys(secretFKeys)

List messages found By Healthcare Party and secret foreign keys.

Keys must be delimited by coma

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MessageApi();
final secretFKeys = secretFKeys_example; // String | 

try {
    final result = api_instance.findMessagesByHCPartyPatientForeignKeys(secretFKeys);
    print(result);
} catch (e) {
    print('Exception when calling MessageApi->findMessagesByHCPartyPatientForeignKeys: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **secretFKeys** | **String**|  | 

### Return type

[**List<MessageDto>**](MessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findMessagesByToAddress**
> PaginatedListMessageDto findMessagesByToAddress(toAddress, startKey, startDocumentId, limit, reverse, hcpId)

Get all messages (paginated) for current HC Party and provided to address

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MessageApi();
final toAddress = toAddress_example; // String | 
final startKey = startKey_example; // String | 
final startDocumentId = startDocumentId_example; // String | 
final limit = 56; // int | 
final reverse = true; // bool | 
final hcpId = hcpId_example; // String | 

try {
    final result = api_instance.findMessagesByToAddress(toAddress, startKey, startDocumentId, limit, reverse, hcpId);
    print(result);
} catch (e) {
    print('Exception when calling MessageApi->findMessagesByToAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **toAddress** | **String**|  | [optional] 
 **startKey** | **String**|  | [optional] 
 **startDocumentId** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] 
 **reverse** | **bool**|  | [optional] 
 **hcpId** | **String**|  | [optional] 

### Return type

[**PaginatedListMessageDto**](PaginatedListMessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findMessagesByTransportGuid**
> PaginatedListMessageDto findMessagesByTransportGuid(transportGuid, received, startKey, startDocumentId, limit, hcpId)

Get all messages (paginated) for current HC Party and provided transportGuid

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MessageApi();
final transportGuid = transportGuid_example; // String | 
final received = true; // bool | 
final startKey = startKey_example; // String | 
final startDocumentId = startDocumentId_example; // String | 
final limit = 56; // int | 
final hcpId = hcpId_example; // String | 

try {
    final result = api_instance.findMessagesByTransportGuid(transportGuid, received, startKey, startDocumentId, limit, hcpId);
    print(result);
} catch (e) {
    print('Exception when calling MessageApi->findMessagesByTransportGuid: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transportGuid** | **String**|  | [optional] 
 **received** | **bool**|  | [optional] 
 **startKey** | **String**|  | [optional] 
 **startDocumentId** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] 
 **hcpId** | **String**|  | [optional] 

### Return type

[**PaginatedListMessageDto**](PaginatedListMessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findMessagesByTransportGuidSentDate**
> PaginatedListMessageDto findMessagesByTransportGuidSentDate(transportGuid, from, to, startKey, startDocumentId, limit, hcpId)

Get all messages starting by a prefix between two date

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MessageApi();
final transportGuid = transportGuid_example; // String | 
final from = 789; // int | 
final to = 789; // int | 
final startKey = startKey_example; // String | 
final startDocumentId = startDocumentId_example; // String | 
final limit = 56; // int | 
final hcpId = hcpId_example; // String | 

try {
    final result = api_instance.findMessagesByTransportGuidSentDate(transportGuid, from, to, startKey, startDocumentId, limit, hcpId);
    print(result);
} catch (e) {
    print('Exception when calling MessageApi->findMessagesByTransportGuidSentDate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transportGuid** | **String**|  | [optional] 
 **from** | **int**|  | [optional] 
 **to** | **int**|  | [optional] 
 **startKey** | **String**|  | [optional] 
 **startDocumentId** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] 
 **hcpId** | **String**|  | [optional] 

### Return type

[**PaginatedListMessageDto**](PaginatedListMessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChildrenMessages**
> List<MessageDto> getChildrenMessages(messageId)

Get children messages of provided message

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MessageApi();
final messageId = messageId_example; // String | 

try {
    final result = api_instance.getChildrenMessages(messageId);
    print(result);
} catch (e) {
    print('Exception when calling MessageApi->getChildrenMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String**|  | 

### Return type

[**List<MessageDto>**](MessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessage**
> MessageDto getMessage(messageId)

Gets a message

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MessageApi();
final messageId = messageId_example; // String | 

try {
    final result = api_instance.getMessage(messageId);
    print(result);
} catch (e) {
    print('Exception when calling MessageApi->getMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String**|  | 

### Return type

[**MessageDto**](MessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessagesChildren**
> List<MessageDto> getMessagesChildren(listOfIdsDto)

Get children messages of provided message

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MessageApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.getMessagesChildren(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling MessageApi->getMessagesChildren: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<MessageDto>**](MessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMessagesByInvoices**
> List<MessageDto> listMessagesByInvoices(listOfIdsDto)

Get children messages of provided message

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MessageApi();
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.listMessagesByInvoices(listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling MessageApi->listMessagesByInvoices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<MessageDto>**](MessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMessagesByTransportGuids**
> List<MessageDto> listMessagesByTransportGuids(hcpId, listOfIdsDto)

Get all messages for current HC Party and provided transportGuids

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MessageApi();
final hcpId = hcpId_example; // String | 
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.listMessagesByTransportGuids(hcpId, listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling MessageApi->listMessagesByTransportGuids: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hcpId** | **String**|  | 
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<MessageDto>**](MessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyMessage**
> MessageDto modifyMessage(messageDto)

Updates a message

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MessageApi();
final messageDto = MessageDto(); // MessageDto | 

try {
    final result = api_instance.modifyMessage(messageDto);
    print(result);
} catch (e) {
    print('Exception when calling MessageApi->modifyMessage: $e\n');
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

# **newMessageDelegations**
> IcureStubDto newMessageDelegations(messageId, delegationDto)

Adds a delegation to a message

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MessageApi();
final messageId = messageId_example; // String | 
final delegationDto = [List<DelegationDto>()]; // List<DelegationDto> | 

try {
    final result = api_instance.newMessageDelegations(messageId, delegationDto);
    print(result);
} catch (e) {
    print('Exception when calling MessageApi->newMessageDelegations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String**|  | 
 **delegationDto** | [**List<DelegationDto>**](DelegationDto.md)|  | 

### Return type

[**IcureStubDto**](IcureStubDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setMessagesReadStatus**
> List<MessageDto> setMessagesReadStatus(messagesReadStatusUpdate)

Set read status for given list of messages

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MessageApi();
final messagesReadStatusUpdate = MessagesReadStatusUpdate(); // MessagesReadStatusUpdate | 

try {
    final result = api_instance.setMessagesReadStatus(messagesReadStatusUpdate);
    print(result);
} catch (e) {
    print('Exception when calling MessageApi->setMessagesReadStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messagesReadStatusUpdate** | [**MessagesReadStatusUpdate**](MessagesReadStatusUpdate.md)|  | 

### Return type

[**List<MessageDto>**](MessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setMessagesStatusBits**
> List<MessageDto> setMessagesStatusBits(status, listOfIdsDto)

Set status bits for given list of messages

### Example
```dart
import 'package:icure_dart_sdk/api.dart';

final api_instance = MessageApi();
final status = 56; // int | 
final listOfIdsDto = ListOfIdsDto(); // ListOfIdsDto | 

try {
    final result = api_instance.setMessagesStatusBits(status, listOfIdsDto);
    print(result);
} catch (e) {
    print('Exception when calling MessageApi->setMessagesStatusBits: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **int**|  | 
 **listOfIdsDto** | [**ListOfIdsDto**](ListOfIdsDto.md)|  | 

### Return type

[**List<MessageDto>**](MessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

