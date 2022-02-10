// @dart=2.12
import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:openapi/api.dart';
import 'package:openapi/crypto/crypto.dart';
import 'package:openapi/util/binary_utils.dart';
import 'package:openapi/util/collection_utils.dart';
import 'package:tuple/tuple.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

extension CryptoSupport on ContactApi {}

extension InitDto on ContactDto {
  Future<ContactDto> initDelegations(UserDto user, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    final Uuid uuid = Uuid();

    Set<String> delegationKeys = Set.from(user.autoDelegations["all"] ?? <String>{})
      ..addAll(user.autoDelegations["medicalInformation"] ?? <String>{});
    final ek = Uint8List.fromList(List<int>.generate(32, (i) => random.nextInt(256)));
    final sfk = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});

    responsible = user.healthcarePartyId!;
    author = user.id;
    delegations = await (delegationKeys..add(user.healthcarePartyId!)).fold(
        Future.value(delegations),
            (m, d) async => (await m)
          ..addEntries([
            MapEntry(d, {
              DelegationDto(
                  owner: user.healthcarePartyId, delegatedTo: d, key: await config.crypto.encryptAESKeyForHcp(user.healthcarePartyId!, d, id, sfk))
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
                  key: await config.crypto.encryptAESKeyForHcp(user.healthcarePartyId!, d, id, ek.toHexString()))
            })
          ]));
    return this;
  }
}

extension ContactCryptoConfig on CryptoConfig<DecryptedContactDto, ContactDto> {
  Future<DecryptedContactDto> decryptContact(String myId, ContactDto contact) async {
    final secret = (await this.crypto.decryptEncryptionKeys(myId, contact.encryptionKeys)).firstOrNull()?.formatAsKey().fromHexString();

    if (secret == null) {
      throw FormatException("Cannot get encryption key fo ${contact.id} and hcp $myId");
    }
    final es = contact.encryptedSelf;

    return this.unmarshaller(contact, es != null ? base64.decoder.convert(es).decryptAES(secret) : null);
  }

  Future<ContactDto> encryptContact(String myId, Set<String> delegations, DecryptedContactDto contact) async {
    var eks = contact.encryptionKeys;
    Uint8List? secret;
    if (!eks.entries.any((s) => s.value.isNotEmpty)) {
      secret = Uint8List.fromList(List<int>.generate(32, (i) => random.nextInt(256)));
      final secretForDelegates = await Future.wait((<String>{...delegations, myId})
          .map((String d) async => Tuple2(d, await this.crypto.encryptAESKeyForHcp(myId, d, contact.id, secret!.toHexString()))));
      eks = {
        ...eks,
        ...Map.fromEntries(
            secretForDelegates.map((t) => MapEntry(t.item1, <DelegationDto>{DelegationDto(owner: myId, delegatedTo: t.item1, key: t.item2)})))
      };
    } else {
      secret = (await this.crypto.decryptEncryptionKeys(myId, contact.encryptionKeys)).firstOrNull()?.formatAsKey().fromHexString();
    }

    if (secret == null) {
      throw FormatException("Cannot get encryption key fo ${contact.id} and hcp $myId");
    }

    Tuple2 t = await this.marshaller(contact);

    var sanitizedContact = t.item1;
    var marshalledData = t.item2;

    sanitizedContact.encryptionKeys = eks;
    sanitizedContact.encryptedSelf = base64.encoder.convert(marshalledData.encryptAES(secret));

    return sanitizedContact;
  }
}

extension ContactApiCrypto on ContactApi {
  Future<DecryptedContactDto?> createContact(UserDto user, DecryptedContactDto contact, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    var newContact = await this.createContact(await config.encryptContact(
        user.healthcarePartyId!, <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})}, contact));
    return newContact != null ? await config.decryptContact(user.healthcarePartyId!, newContact) : null;
  }

  Future<DecryptedContactDto?> createContactWithPatient(
      UserDto user, DecryptedPatientDto patient, DecryptedContactDto contact, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    var delegations = <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})};
    var encContact = await config.encryptContact(user.healthcarePartyId!, delegations, contact);
    final secret = (await config.crypto.decryptEncryptionKeys(user.healthcarePartyId!, patient.delegations)).firstOrNull();
    if (secret == null) {
      throw FormatException("Cannot get delegation key for ${patient.id} and hcp ${user.healthcarePartyId}");
    }

    final secretForDelegates = await Future.wait((<String>{...delegations, user.healthcarePartyId!})
        .map((String d) async => Tuple2(d, await config.crypto.encryptValueForHcp(user.healthcarePartyId!, d, contact.id, patient.id))));
    encContact.cryptedForeignKeys = {
      ...encContact.cryptedForeignKeys,
      ...Map.fromEntries(secretForDelegates
          .map((t) => MapEntry(t.item1, <DelegationDto>{DelegationDto(owner: user.healthcarePartyId!, delegatedTo: t.item1, key: t.item2)})))
    };
    encContact.secretForeignKeys = <String>{secret};

    var newContact = await this.createContact(encContact);
    return newContact != null ? await config.decryptContact(user.healthcarePartyId!, newContact) : null;
  }

  Future<DecryptedContactDto?> modifyContact(UserDto user, DecryptedContactDto contact, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    var newContact = await this.modifyContact(await config.encryptContact(
        user.healthcarePartyId!, <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})}, contact));
    return newContact == null ? null : await config.decryptContact(user.healthcarePartyId!, newContact);
  }

  Future<List<DecryptedContactDto>?> createContacts(
      UserDto user, List<DecryptedContactDto> contacts, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    var newContacts = await this.createContacts(await Future.wait(contacts.map((contact) => config.encryptContact(
        user.healthcarePartyId!, <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})}, contact))));
    return newContacts == null
        ? null
        : await Future.wait(newContacts.map((newContact) => config.decryptContact(user.healthcarePartyId!, newContact)));
  }

  Future<List<DecryptedContactDto>?> modifyContacts(
      UserDto user, List<DecryptedContactDto> contacts, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    var modifiedContacts = await this.modifyContacts(await Future.wait(contacts.map((contact) => config.encryptContact(
        user.healthcarePartyId!, <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})}, contact))));
    return modifiedContacts == null
        ? null
        : await Future.wait(modifiedContacts.map((newContact) => config.decryptContact(user.healthcarePartyId!, newContact)));
  }
}
