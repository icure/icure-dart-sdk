## 1.0.45

- Fixed an issue that blocked the api to get single dataSample by id
- Fixed some errors that were returned when querying DataOwner

## 1.0.44

- Calls are using v1 instead of v2

## 1.0.43

- Removed unused lostHcPartyKeys field in HealthcareParty, Device

## 1.0.42

- Removed unused lostHcPartyKeys field in DecryptedPatientDto

## 1.0.41

- Removed unused lostHcPartyKeys field in PatientDto requiredKeys

## 1.0.40

- Removed unused lostHcPartyKeys field in PatientDto

## 1.0.39

- FIX delegateHcPartyKeyCache could sometimes return the wrong value

## 1.0.38

- Fixed an error that could block services decryption

## 1.0.37

- Fixed an error that could block user update

## 1.0.36

- Removed own implementation of firstOrNull

## 1.0.35

- FEATURE Add Crypto service to encrypt private RSA Key using another RSA Public Key
- REFACTOR InitDelegations and encryptPatient to get current Data Owner revision and hcPartyKeys
- REFACTOR Delete unused argument in encryptRSAKeyUsing
- REFACTOR DataOwnerApiFactory to easily unify data owner treatment

## 1.0.34

- FIX lostHcPartyKeys mapping for Device anc HealthcareParty DTOs

## 1.0.33
- FIX Add missing delegations init in related HealthElement and Contact API services

## 1.0.32

- Fixed creation of DataSamples that contains "content" value

## 1.0.31

- FIX HealthElementByHcPartyIdentifiersFilter mapping

## 1.0.30

- Fixed filter_chain not printing its type correctly

## 1.0.29

- Fixed Authorization header for matchServicesBy

## 1.0.28

- Returned $type instead of null

## 1.0.27

- Solved an issue with $type on filters serialization #2

## 1.0.26

- Solved an issue with $type on filters serialization

## 1.0.25

- Resolve getOrCreateHcPartyKeys by deleting buggy cache ownerHcpartyKeysCache

## 1.0.24

- Fix hcPartyKeys patient dataOwner update : Update rev only if bigger than the current one

## 1.0.23

- Solved corner case where keys are being added to the patient being modified otherwise

## 1.0.22

- Do not require encryption keys for patient when there is nothing to encrypt

## 1.0.21

- Fix bug in patient api (handling of names)

## 1.0.20

- Fix corruption in lib

## 1.0.19

- Skip encryption of patient when there is nothing to encrypt

## 1.0.18

- Add some logging

## 1.0.17

- Improve crypto performances

## 1.0.16

- Add api method to generate a RSA keypair in DER (hex representation)

## 1.0.15

- Fixed contact creation

## 1.0.14

- Fixed delegations and encryptionKeys initialisation

## 1.0.13

- Add toJsonDeep
- Fix toJson using toJsonDeep

## 1.0.12

- Fix format as key

## 1.0.11

- Fix problem in encryption of patient

## 1.0.10
- Fixed missing delegations initialisation

## 1.0.9
- Using data owner id for ContactCryptoConfig instead of user healthcarePartyId

## 1.0.8

- Fixed rawMatchServicesBy

## 1.0.7

- Added rawMatchServicesBy

## 1.0.6

- Improve data-owner cache

## 1.0.5

- Added documentCryptoConfig

## 1.0.4

- Fixed a parameter in deleteServices
- Fixed a typo in encryptAccessLog

## 1.0.3

- Do not decrypt if there is nothing to be decrypted

## 1.0.2

- Support for Filter serialization.

## 1.0.1

- Support for Device and Patient data owner.

## 1.0.0

- Initial version.
