// @dart=2.12

import 'dart:convert';
import 'dart:typed_data';

import 'package:openapi/api.dart';
import 'package:openapi/crypto/crypto.dart';
import 'package:openapi/util/binary_utils.dart';
import 'package:openapi/util/collection_utils.dart';
import 'package:tuple/tuple.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

extension CryptoSupport on PatientApi {}

extension InitDto on PatientDto {
  Future<PatientDto> initDelegations(UserDto user, CryptoConfig<DecryptedPatientDto, PatientDto> config) async {
    final Uuid uuid = Uuid();

    Set<String> delegationKeys = Set.from(user.autoDelegations["all"] ?? <String>{})
      ..addAll(user.autoDelegations["medicalInformation"] ?? <String>{});
    final ek = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
    final sfk = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});

    responsible = this.responsible ?? user.healthcarePartyId!;
    author = user.id;
    delegations = await (delegationKeys..add(user.healthcarePartyId!)).fold(
        Future.value(delegations),
            (m, d) async => (await m)
          ..addEntries([
            MapEntry(d, {
              DelegationDto(
                  owner: user.healthcarePartyId,
                  delegatedTo: d,
                  key: await config.crypto
                      .encryptAESKeyForHcp(user.healthcarePartyId!, d, id, sfk))
            })
          ]));

    encryptionKeys = await (delegationKeys..add(user.healthcarePartyId!)).fold(
        Future.value(encryptionKeys),
            (m, d) async => (await m)
          ..addEntries([
            MapEntry(d, {
              DelegationDto(
                  owner: user.healthcarePartyId,
                  delegatedTo: d,
                  key: await config.crypto
                      .encryptAESKeyForHcp(user.healthcarePartyId!, d, id, ek))
            })
          ]));
    return this;
  }
}

extension PatientCryptoConfiguration on CryptoConfig<DecryptedPatientDto, PatientDto> {
  Future<DecryptedPatientDto> decryptPatient(String dataOwnerId, PatientDto patient) async {
    final secret = (await this.crypto.decryptEncryptionKeys(dataOwnerId, patient.encryptionKeys))
        .firstOrNull()?.formatAsKey().fromHexString();

    if (secret == null) {
      throw FormatException("Cannot get encryption key for ${patient.id} and hcp $dataOwnerId");
    }
    final es = patient.encryptedSelf;

    return this.unmarshaller(patient, es != null ? base64.decoder.convert(es).decryptAES(secret) : null);
  }

  Future<PatientDto> encryptPatient(String dataOwnerId, Set<String> delegations, DecryptedPatientDto patient) async {
    var eks = patient.encryptionKeys;
    var secret;
    if (!eks.entries.any((s) => s.value.isNotEmpty)) {
      secret = Uint8List.fromList(List<int>.generate(32, (i) => random.nextInt(256)));
      final secretForDelegates = await Future.wait((<String>{...delegations, dataOwnerId}).map((String d) async => Tuple2(
          d, await this.crypto.encryptAESKeyForHcp(dataOwnerId, d, patient.id, BinEncoding(secret).toHexString())
      )));

      eks = {...eks, ...Map.fromEntries(secretForDelegates.map((t) => MapEntry(t.item1, <DelegationDto>{DelegationDto(
          owner: dataOwnerId, delegatedTo: t.item1, key: t.item2
      )})))};

    } else {
      secret = (await this.crypto.decryptEncryptionKeys(dataOwnerId, patient.encryptionKeys)).firstOrNull();
    }

    var t = await this.marshaller(patient);

    var sanitizedPatient = t.item1;
    var marshalledData = t.item2;

    sanitizedPatient.encryptionKeys = eks;
    sanitizedPatient.encryptedSelf = base64.encoder.convert(marshalledData.encryptAES(secret));

    return sanitizedPatient;
  }
}

extension DecryptedPatientDtoExtensions on DecryptedPatientDto {
  bool hasName(PersonNameDtoUseEnum nameUse) {
    return this.names.any((element) => element.use == nameUse);
  }

  PersonNameDto findName(PersonNameDtoUseEnum nameUse) {
    return this.names.firstWhere((element) => element.use == nameUse);
  }

  DecryptedPatientDto _addName(PersonNameDtoUseEnum use, String lastName, String? firstName) {
    this.names = [...this.names, PersonNameDto(lastName: lastName, firstNames: firstName != null ? [firstName] : [], use: use)];
    return this;
  }

  DecryptedPatientDto initPatient() {
    if (this.lastName == null && DecryptedPatientDtoExtensions(this).hasName(PersonNameDtoUseEnum.official)) {
      this.lastName = DecryptedPatientDtoExtensions(this)
          .findName(PersonNameDtoUseEnum.official)
          .lastName;
    } else if (this.firstName == null && DecryptedPatientDtoExtensions(this).hasName(PersonNameDtoUseEnum.official)) {
      this.firstName = DecryptedPatientDtoExtensions(this)
          .findName(PersonNameDtoUseEnum.official)
          .firstNames
          .firstOrNull();
    } else if (this.maidenName == null && DecryptedPatientDtoExtensions(this).hasName(PersonNameDtoUseEnum.maiden)) {
      this.maidenName = DecryptedPatientDtoExtensions(this)
          .findName(PersonNameDtoUseEnum.maiden)
          .lastName;
    } else if (this.alias == null && DecryptedPatientDtoExtensions(this).hasName(PersonNameDtoUseEnum.official)) {
      this.alias = DecryptedPatientDtoExtensions(this)
          .findName(PersonNameDtoUseEnum.nickname)
          .lastName;
    } else if (this.lastName != null && !DecryptedPatientDtoExtensions(this).hasName(PersonNameDtoUseEnum.official)) {
      return DecryptedPatientDtoExtensions(this)._addName(PersonNameDtoUseEnum.official, this.lastName!, this.firstName);
    } else if (this.maidenName != null && !DecryptedPatientDtoExtensions(this).hasName(PersonNameDtoUseEnum.maiden)) {
      return DecryptedPatientDtoExtensions(this)._addName(PersonNameDtoUseEnum.maiden, this.maidenName!, this.firstName);
    } else if (this.alias != null && !DecryptedPatientDtoExtensions(this).hasName(PersonNameDtoUseEnum.nickname)) {
      return DecryptedPatientDtoExtensions(this)._addName(PersonNameDtoUseEnum.nickname, this.alias!, this.firstName);
    }
    return this;
  }
}

extension PatientApiCrypto on PatientApi {
  Future<DecryptedPatientDto?> createPatient(UserDto user, DecryptedPatientDto patient,
      CryptoConfig<DecryptedPatientDto, PatientDto> config) async {

    var newPatient = await this.rawCreatePatient(
        await PatientCryptoConfiguration(config).encryptPatient(
            user.healthcarePartyId!,
            <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})},
            patient
        )
    );
    return newPatient != null ? await PatientCryptoConfiguration(config).decryptPatient(user.healthcarePartyId!, newPatient) : null;
  }

  Future<DecryptedPatientDto?> getPatient(UserDto user, String patientId,
      CryptoConfig<DecryptedPatientDto, PatientDto> config) async {

    var patient = await this.rawGetPatient(patientId);
    return patient != null ? await PatientCryptoConfiguration(config).decryptPatient(user.healthcarePartyId!, patient) : null;
  }
}
