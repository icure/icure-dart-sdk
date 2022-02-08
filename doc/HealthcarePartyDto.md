# openapi.model.HealthcarePartyDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | the Id of the healthcare party. We encourage using either a v4 UUID or a HL7 Id. | 
**rev** | **String** | the revision of the healthcare party in the database, used for conflict management / optimistic locking. | [optional] 
**created** | **int** | creation timestamp of the object. | [optional] 
**modified** | **int** | last modification timestamp of the object. | [optional] 
**deletionDate** | **int** | hard delete (unix epoch in ms) timestamp of the object. Filled automatically when deletePatient is called. | [optional] 
**name** | **String** | The full name of the healthcare party, used mainly when the healthcare party is an organization | [optional] 
**lastName** | **String** | the lastname (surname) of the healthcare party. This is the official lastname that should be used for official administrative purposes. | [optional] 
**firstName** | **String** | the firstname (name) of the healthcare party. | [optional] 
**names** | [**List<PersonNameDto>**](PersonNameDto.md) | the list of all names of the healthcare party, also containing the official full name information. Ordered by preference of use. First element is therefore the official name used for the healthcare party in the application | [default to const []]
**gender** | **String** | the gender of the healthcare party: male, female, indeterminate, changed, changedToMale, changedToFemale, unknown | [optional] 
**civility** | **String** | Mr., Ms., Pr., Dr. ... | [optional] 
**companyName** | **String** | The name of the company this healthcare party is member of | [optional] 
**speciality** | **String** | Medical specialty of the healthcare party | [optional] 
**bankAccount** | **String** | Bank Account identifier of the healhtcare party, IBAN, deprecated, use financial institutions instead | [optional] 
**bic** | **String** | Bank Identifier Code, the SWIFT Address assigned to the bank, use financial institutions instead | [optional] 
**proxyBankAccount** | **String** |  | [optional] 
**proxyBic** | **String** |  | [optional] 
**invoiceHeader** | **String** | All details included in the invoice header | [optional] 
**cbe** | **String** | Identifier number for institution type if the healthcare party is an enterprise | [optional] 
**ehp** | **String** | Identifier number for the institution if the healthcare party is an organization | [optional] 
**userId** | **String** | The id of the user that usually handles this healthcare party. | [optional] 
**parentId** | **String** | Id of parent of the user representing the healthcare party. | [optional] 
**convention** | **int** |  | [optional] 
**nihii** | **String** | National Institute for Health and Invalidity Insurance number assigned to healthcare parties (institution or person). | [optional] 
**nihiiSpecCode** | **String** |  | [optional] 
**ssin** | **String** | Social security inscription number. | [optional] 
**addresses** | [**List<AddressDto>**](AddressDto.md) | The list of addresses (with address type). | [default to const []]
**languages** | **List<String>** | The list of languages spoken by the patient ordered by fluency (alpha-2 code http://www.loc.gov/standards/iso639-2/ascii_8bits.html). | [default to const []]
**picture** | **String** | A picture usually saved in JPEG format. | [optional] 
**statuses** | **Set<String>** | The healthcare party's status: 'trainee' or 'withconvention' or 'accredited' | [default to const {}]
**statusHistory** | [**List<HealthcarePartyHistoryStatusDto>**](HealthcarePartyHistoryStatusDto.md) | The healthcare party's status history | [default to const []]
**specialityCodes** | [**Set<CodeStubDto>**](CodeStubDto.md) | Medical specialty of the healthcare party codified using FHIR or Kmehr codificaiton scheme | [default to const {}]
**sendFormats** | **Map<String, String>** | The type of format for contacting the healthcare party, ex: mobile, phone, email, etc. | [default to const {}]
**notes** | **String** | Text notes. | [optional] 
**financialInstitutionInformation** | [**List<FinancialInstitutionInformationDto>**](FinancialInstitutionInformationDto.md) | List of financial information (Bank, bank account). | [default to const []]
**billingType** | **String** | The invoicing scheme this healthcare party adheres to : 'service fee' or 'flat rate' | [optional] 
**type** | **String** |  | [optional] 
**contactPerson** | **String** |  | [optional] 
**contactPersonHcpId** | **String** |  | [optional] 
**supervisorId** | **String** |  | [optional] 
**flatRateTarifications** | [**List<FlatRateTarificationDto>**](FlatRateTarificationDto.md) |  | [default to const []]
**importedData** | **Map<String, String>** |  | [default to const {}]
**options** | **Map<String, String>** |  | [default to const {}]
**properties** | [**Set<PropertyStubDto>**](PropertyStubDto.md) |  | [default to const {}]
**hcPartyKeys** | [**Map<String, List<String>>**](List.md) | For each couple of HcParties (delegator and delegate), this map contains the exchange AES key. The delegator is always this hcp, the key of the map is the id of the delegate. The AES exchange key is encrypted using RSA twice : once using this hcp public key (index 0 in the Array) and once using the other hcp public key (index 1 in the Array). For a pair of HcParties. Each HcParty always has one AES exchange key for himself. | [default to const {}]
**privateKeyShamirPartitions** | **Map<String, String>** | The privateKeyShamirPartitions are used to share this hcp's private RSA key with a series of other hcParties using Shamir's algorithm. The key of the map is the hcp Id with whom this partition has been shared. The value is \"threshold⎮partition in hex\" encrypted using the the partition's holder's public RSA key | [default to const {}]
**publicKey** | **String** | The public key of this hcp | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


