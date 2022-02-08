# openapi.model.ReplicatorDocumentDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**rev** | **String** |  | [optional] 
**source_** | [**RemoteDto**](RemoteDto.md) |  | [optional] 
**target** | [**RemoteDto**](RemoteDto.md) |  | [optional] 
**owner** | **String** |  | [optional] 
**createTarget** | **bool** |  | [optional] 
**continuous** | **bool** |  | [optional] 
**docIds** | **List<String>** |  | [optional] [default to const []]
**replicationState** | **String** |  | [optional] 
**replicationStateTime** | [**DateTime**](DateTime.md) |  | [optional] 
**replicationStats** | [**ReplicationStatsDto**](ReplicationStatsDto.md) |  | [optional] 
**errorCount** | **int** |  | [optional] 
**revsInfo** | [**List<Map<String, String>>**](Map.md) |  | [optional] [default to const []]
**revHistory** | **Map<String, String>** |  | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


