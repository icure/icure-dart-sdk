## 1.0.24

- Solved an issue with $type on filters serialization

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
