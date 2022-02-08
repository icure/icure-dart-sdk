# openapi.model.PersonNameDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lastName** | **String** | Family name (often called 'Surname') | [optional] 
**firstNames** | **List<String>** | Given names (not always 'first'). Includes middle names. This repeating element order: Given Names appear in the correct order for presenting the name | [default to const []]
**start** | **int** | Starting date of time period when name is/was valid for use. Date encoded as a fuzzy date on 8 positions (YYYYMMDD) | [optional] 
**end** | **int** | Ending date of time period when name is/was valid for use. Date encoded as a fuzzy date on 8 positions (YYYYMMDD) | [optional] 
**prefix** | **List<String>** | Parts that come before the name. This repeating element order: Prefixes appear in the correct order for presenting the name | [default to const []]
**suffix** | **List<String>** | Parts that come after the name. This repeating element order: Suffixes appear in the correct order for presenting the name | [default to const []]
**text** | **String** | Text representation of the full name | [optional] 
**use** | **String** | What is the use of this name | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


