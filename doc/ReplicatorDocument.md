# icure_dart_sdk.model.ReplicatorDocument

## Load the model package
```dart
import 'package:icure_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**rev** | **String** |  | [optional] 
**source_** | [**Remote**](Remote.md) |  | [optional] 
**target** | [**Remote**](Remote.md) |  | [optional] 
**owner** | **String** |  | [optional] 
**createTarget** | **bool** |  | [optional] 
**continuous** | **bool** |  | [optional] 
**docIds** | **List<String>** |  | [optional] [default to const []]
**replicationState** | **String** |  | [optional] 
**replicationStateTime** | [**DateTime**](DateTime.md) |  | [optional] 
**replicationStats** | [**ReplicationStats**](ReplicationStats.md) |  | [optional] 
**errorCount** | **int** |  | [optional] 
**revsInfo** | [**List<Map<String, String>>**](Map.md) |  | [optional] [default to const []]
**revHistory** | **Map<String, String>** |  | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


