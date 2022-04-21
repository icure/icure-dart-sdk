// @dart=2.12
part of icure_dart_sdk.api;

extension ContactCryptoSupport on ContactApi {}

extension ContactInitDto on DecryptedContactDto {
  Future<DecryptedContactDto> initDelegations(UserDto user, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    final Uuid uuid = Uuid();

    Set<String> delegationKeys = Set.from(user.autoDelegations["all"] ?? <String>{})
      ..addAll(user.autoDelegations["medicalInformation"] ?? <String>{});
    final ek = Uint8List.fromList(List<int>.generate(32, (i) => random.nextInt(256)));
    final sfk = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});

    responsible = user.dataOwnerId()!;
    author = user.id;
    delegations = await (delegationKeys..add(user.dataOwnerId()!)).fold(
        Future.value({...delegations}),
        (m, d) async => (await m)
          ..addEntries([
            MapEntry(d, {
              DelegationDto(owner: user.dataOwnerId(), delegatedTo: d, key: (await config.crypto.encryptAESKeyForHcp(user.dataOwnerId()!, d, id, sfk)).item1)
            })
          ]));

    encryptionKeys = await (delegationKeys..add(user.dataOwnerId()!)).fold(
        Future.value({...encryptionKeys}),
            (m, d) async =>
        (await m)
          ..addEntries([
            MapEntry(d, {
              DelegationDto(
                  owner: user.dataOwnerId(),
                  delegatedTo: d,
                  key: (await config.crypto.encryptAESKeyForHcp(user.dataOwnerId()!, d, id, ek.toHexString())).item1)
            })
          ]));
    return this;
  }
}

extension ContactCryptoConfig on CryptoConfig<DecryptedContactDto, ContactDto> {
  Future<DecryptedContactDto> decryptContact(String myId, ContactDto contact) async {
    final es = contact.encryptedSelf;

    if (es != null) {
      final secret = (await this.crypto.decryptEncryptionKeys(myId, contact.encryptionKeys)).firstOrNull?.formatAsKey().fromHexString();

      if (secret == null) {
        throw FormatException("Cannot get encryption key fo ${contact.id} and hcp $myId");
      }
      return this.unmarshaller(contact, base64.decoder.convert(es).decryptAES(secret));
    } else {
      return this.unmarshaller(contact, null);
    }

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
            secretForDelegates.map((t) => MapEntry(t.item1, <DelegationDto>{DelegationDto(owner: myId, delegatedTo: t.item1, key: t.item2.item1)})))
      };
    } else {
      secret = (await this.crypto.decryptEncryptionKeys(myId, contact.encryptionKeys)).firstOrNull?.formatAsKey().fromHexString();
    }

    if (secret == null) {
      throw FormatException("Cannot get encryption key for ${contact.id} and hcp $myId");
    }

    Tuple2<ContactDto, Uint8List?> t = await this.marshaller(contact);

    ContactDto sanitizedContact = t.item1;
    final Uint8List? marshalledData = t.item2;

    sanitizedContact.encryptionKeys = eks;
    sanitizedContact.encryptedSelf = marshalledData != null ? base64.encoder.convert(marshalledData.encryptAES(secret)) : null;

    return sanitizedContact;
  }
}

extension ContactApiCrypto on ContactApi {
  Future<DecryptedContactDto?> createContact(UserDto user, DecryptedContactDto contact, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    var newContact = await this.rawCreateContact(await config.encryptContact(
        user.dataOwnerId()!, <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})}, (await contact.initDelegations(user, config))));
    return newContact != null ? await config.decryptContact(user.dataOwnerId()!, newContact) : null;
  }

  Future<DecryptedContactDto?> createContactWithPatient(
      UserDto user, DecryptedPatientDto patient, DecryptedContactDto contact, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    var delegations = <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})};
    var encContact = await config.encryptContact(user.dataOwnerId()!, delegations, (await contact.initDelegations(user, config)));
    final secret = (await config.crypto.decryptEncryptionKeys(user.dataOwnerId()!, patient.delegations)).firstOrNull;
    if (secret == null) {
      throw FormatException("Cannot get delegation key for ${patient.id} and hcp ${user.dataOwnerId()}");
    }

    final secretForDelegates = await Future.wait((<String>{...delegations, user.dataOwnerId()!})
        .map((String d) async => Tuple2(d, await config.crypto.encryptValueForHcp(user.dataOwnerId()!, d, contact.id, patient.id))));
    encContact.cryptedForeignKeys = {
      ...encContact.cryptedForeignKeys,
      ...Map.fromEntries(secretForDelegates
          .map((t) => MapEntry(t.item1, <DelegationDto>{DelegationDto(owner: user.dataOwnerId()!, delegatedTo: t.item1, key: t.item2.item1)})))
    };
    encContact.secretForeignKeys = <String>{secret};

    var newContact = await this.rawCreateContact(encContact);
    return newContact != null ? await config.decryptContact(user.dataOwnerId()!, newContact) : null;
  }

  Future<List<DecryptedContactDto>?> createContacts(
      UserDto user, List<DecryptedContactDto> contacts, CryptoConfig<DecryptedContactDto, ContactDto> config) async {

    var newContacts = await this.rawCreateContacts(await Future.wait(contacts.map((contact) async => config.encryptContact(
        user.dataOwnerId()!, <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})}, await contact.initDelegations(user, config)))));

    return newContacts == null
        ? null
        : await Future.wait(newContacts.map((newContact) => config.decryptContact(user.dataOwnerId()!, newContact)));
  }

  Future<List<DecryptedContactDto>?> createContactsWithPatient(
      UserDto user, DecryptedPatientDto patient, List<DecryptedContactDto> contacts, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    var delegations = <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})};
    final secret = (await config.crypto.decryptEncryptionKeys(user.dataOwnerId()!, patient.delegations)).firstOrNull;
    if (secret == null) {
      throw FormatException("Cannot get delegation key for ${patient.id} and hcp ${user.dataOwnerId()}");
    }
    var newContacts = await this.rawCreateContacts(await Future.wait(contacts.map((contact) async {
      var encContact = await config.encryptContact(user.dataOwnerId()!, delegations, await contact.initDelegations(user, config));

      final secretForDelegates = await Future.wait((<String>{...delegations, user.dataOwnerId()!})
          .map((String d) async => Tuple2(d, await config.crypto.encryptValueForHcp(user.dataOwnerId()!, d, contact.id, patient.id))));

      encContact.cryptedForeignKeys = {
        ...encContact.cryptedForeignKeys,
        ...Map.fromEntries(secretForDelegates
            .map((t) => MapEntry(t.item1, <DelegationDto>{DelegationDto(owner: user.dataOwnerId()!, delegatedTo: t.item1, key: t.item2.item1)})))
      };
      encContact.secretForeignKeys = <String>{secret};

      return encContact;
    })));
    return newContacts == null
        ? null
        : await Future.wait(newContacts.map((newContact) => config.decryptContact(user.dataOwnerId()!, newContact)));
  }

  Future<DecryptedContactDto?> deleteServices(UserDto user, DecryptedPatientDto patient, List<DecryptedServiceDto> services,
      CryptoConfig<DecryptedContactDto, ContactDto> config) {
    final Uuid uuid = Uuid();
    final currentTime = DateTime
        .now()
        .millisecondsSinceEpoch;
    return this.createContactWithPatient(
        user,
        patient,
        DecryptedContactDto(
            id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
            services:
            services.map((it) => DecryptedServiceDto(id: it.id, created: it.created, modified: currentTime, endOfLife: currentTime)).toSet()),
        config);
  }

  Future<DecryptedPaginatedListContactDto?> filterContactsBy(UserDto user, FilterChain<ContactDto> filterChain, String? startKey, String? startDocumentId,
      int? limit, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    return await (await this.rawFilterContactsBy(filterChain, startDocumentId: startDocumentId, limit: limit))?.let((it) async =>
        DecryptedPaginatedListContactDto(
            rows: await Future.wait(it.rows.map((it) => config.decryptContact(user.dataOwnerId()!, it))),
            pageSize: it.pageSize,
            totalSize: it.totalSize,
            nextKeyPair: it.nextKeyPair));
  }

  Future<DecryptedPaginatedListServiceDto?> filterServicesBy(
      UserDto user, FilterChain<ServiceDto> filterChain, String? startKey, String? startDocumentId, int? limit, Crypto crypto) async {
    return await (await this.rawFilterServicesBy(filterChain, startDocumentId: startDocumentId, limit: limit))?.let((it) async =>
        DecryptedPaginatedListServiceDto(
            rows: await crypto.decryptServices(user.dataOwnerId()!, null, it.rows),
            pageSize: it.pageSize,
            totalSize: it.totalSize,
            nextKeyPair: it.nextKeyPair));
  }

  Future<DecryptedPaginatedListContactDto?> findContactsByOpeningDate(UserDto user, int startKey, int endKey, String hcpartyid,
      String? startDocumentId, int? limit, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    return await (await this.rawFindContactsByOpeningDate(startKey, endKey, hcpartyid, startDocumentId: startDocumentId, limit: limit))?.let(
        (it) async => DecryptedPaginatedListContactDto(
            rows: await Future.wait(it.rows.map((it) => config.decryptContact(user.dataOwnerId()!, it))),
            pageSize: it.pageSize,
            totalSize: it.totalSize,
            nextKeyPair: it.nextKeyPair));
  }

  Future<List<DecryptedContactDto>> findByHCPartyFormId(
      UserDto user, String hcPartyId, String formId, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    return Future.wait(
        (await this.rawListContactsByHCPartyAndFormId(hcPartyId, formId))!.map((it) => config.decryptContact(user.dataOwnerId()!, it)));
  }

  Future<List<DecryptedContactDto>> findByHCPartyFormIds(
      UserDto user, String hcPartyId, ListOfIdsDto listOfIdsDto, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    return Future.wait(
        (await this.rawListContactsByHCPartyAndFormIds(hcPartyId, listOfIdsDto))!.map((it) => config.decryptContact(user.dataOwnerId()!, it)));
  }

  Future<List<DecryptedContactDto>> findByHCPartyPatient(UserDto user, String hcPartyId, PatientDto patient, String? planOfActionsIds,
      bool? skipClosedContacts, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    var keys = await config.crypto.decryptEncryptionKeys(user.dataOwnerId()!, patient.delegations);
    if (keys.isEmpty) {
      throw FormatException("No delegation for user");
    }
    return Future.wait((await this.rawListContactsByHCPartyAndPatientSecretFKeys(hcPartyId, keys.join(","),
            planOfActionsIds: planOfActionsIds, skipClosedContacts: skipClosedContacts))!
        .map((it) => config.decryptContact(user.dataOwnerId()!, it)));
  }

  Future<List<DecryptedContactDto>> findByHCPartyServiceId(
      UserDto user, String hcPartyId, String serviceId, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    return Future.wait(
        (await this.rawListContactByHCPartyServiceId(hcPartyId, serviceId))!.map((it) => config.decryptContact(user.dataOwnerId()!, it)));
  }

  Future<List<DecryptedContactDto>> findContactsByExternalId(
      UserDto user, String externalId, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    return Future.wait((await this.rawListContactsByExternalId(externalId))!.map((it) => config.decryptContact(user.dataOwnerId()!, it)));
  }

  Future<List<DecryptedContactDto>> findContactsByHCPartyPatientForeignKeys(
      UserDto user, String hcPartyId, ListOfIdsDto listOfIdsDto, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    return Future.wait((await this.rawListContactsByHCPartyAndPatientForeignKeys(hcPartyId, listOfIdsDto))!
        .map((it) => config.decryptContact(user.dataOwnerId()!, it)));
  }

  Future<DecryptedContactDto?> getContact(UserDto user, String contactId, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    return await (await this.rawGetContact(contactId))?.let((it) => config.decryptContact(user.dataOwnerId()!, it));
  }

  Future<List<DecryptedContactDto>> getContacts(UserDto user, ListOfIdsDto listOfIdsDto, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    return Future.wait((await this.rawGetContacts(listOfIdsDto))!.map((it) => config.decryptContact(user.dataOwnerId()!, it)));
  }

  Future<List<DecryptedServiceDto>> listServices(UserDto user, ListOfIdsDto listOfIdsDto, Crypto crypto) async {
    return await crypto.decryptServices(user.dataOwnerId()!, null, (await this.rawGetServices(listOfIdsDto)) ?? []);
  }

  Future<List<DecryptedServiceDto>> listServicesByAssociationId(UserDto user, String associationId, Crypto crypto) async {
    return await crypto.decryptServices(user.dataOwnerId()!, null, (await this.rawListServicesByAssociationId(associationId)) ?? []);
  }

  Future<List<DecryptedServiceDto>> listServicesByHealthElementId(UserDto user, String healthElementId, Crypto crypto) async {
    return await crypto.decryptServices(user.dataOwnerId()!, null, (await this.rawListServicesByHealthElementId(healthElementId)) ?? []);
  }

  Future<List<DecryptedServiceDto>> listServicesLinkedTo(UserDto user, ListOfIdsDto listOfIdsDto, String? linkType, Crypto crypto) async {
    return await crypto.decryptServices(user.dataOwnerId()!, null, (await this.rawGetServicesLinkedTo(listOfIdsDto, linkType: linkType)) ?? []);
  }

  Future<DecryptedContactDto?> modifyContact(UserDto user, DecryptedContactDto contact, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    var newContact = await this.rawModifyContact(await config.encryptContact(
        user.dataOwnerId()!, <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})}, contact));
    return newContact == null ? null : await config.decryptContact(user.dataOwnerId()!, newContact);
  }

  Future<List<DecryptedContactDto>?> modifyContacts(
      UserDto user, List<DecryptedContactDto> contacts, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    var modifiedContacts = await this.rawModifyContacts(await Future.wait(contacts.map((contact) => config.encryptContact(
        user.dataOwnerId()!, <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})}, contact))));
    return modifiedContacts == null
        ? null
        : await Future.wait(modifiedContacts.map((newContact) => config.decryptContact(user.dataOwnerId()!, newContact)));
  }

  Future<DecryptedContactDto> newContactDelegations(
      UserDto user, String contactId, DelegationDto delegationDto, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    return await config.decryptContact(user.dataOwnerId()!, (await this.rawNewContactDelegations(contactId, delegationDto))!);
  }

  Future<List<DecryptedContactDto>> setContactsDelegations(
      UserDto user, List<IcureStubDto> icureStubDto, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    return Future.wait((await this.rawSetContactsDelegations(icureStubDto))!.map((c) => config.decryptContact(user.dataOwnerId()!, c)));
  }

  Future<List<DecryptedContactDto>> updateServices(
      UserDto user, DecryptedPatientDto patient, List<ServiceDto> services, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    final Uuid uuid = Uuid();
    final serviceIds = services.map((it) => it.id).toSet();
    final contactIds = (await this.rawMatchContactsBy(ContactByServiceIdsFilter(ids: serviceIds)) ?? []).toSet().toList();

    return (await this.createContactsWithPatient(
        user,
        patient,
        (await this.getContacts(user, ListOfIdsDto(ids: contactIds), config)).map((contactDto) {
          final contactServiceIds = contactDto.services.map((service) => service.id).toSet().intersection(serviceIds);
          final subContacts = contactDto.subContacts
              .where((subContact) => subContact.services.any((serviceLink) => contactServiceIds.contains(serviceLink.serviceId)));

          return DecryptedContactDto.fromJson({
            ...toJsonDeep(contactDto),
            'id': uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
            'subContacts': subContacts,
            'services': services,
            'modified': DateTime.now().millisecondsSinceEpoch
          })!;
        }).toList(),
        config))!;
  }
}
