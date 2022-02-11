// @dart=2.12
part of icure_dart_sdk.api;

extension CryptoSupport on PatientApi {}

extension InitDto on DecryptedPatientDto {
  Future<DecryptedPatientDto> initDelegations(UserDto user, CryptoConfig<DecryptedPatientDto, PatientDto> config) async {
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
  Future<DecryptedPatientDto?> createPatient(UserDto user, DecryptedPatientDto patient, CryptoConfig<DecryptedPatientDto, PatientDto> config) async {
    var newPatient = await this.rawCreatePatient(await PatientCryptoConfiguration(config).encryptPatient(
        user.healthcarePartyId!,
        <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})},
        DecryptedPatientDtoExtensions(patient).initPatient()));
    return newPatient != null ? await PatientCryptoConfiguration(config).decryptPatient(user.healthcarePartyId!, newPatient) : null;
  }

  Future<List<IdWithRevDto>> createPatients(
      UserDto user, List<DecryptedPatientDto> patients, CryptoConfig<DecryptedPatientDto, PatientDto> config) async {
    final Set<String> delegations = <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})};
    final List<PatientDto> encryptedPatients = await Future.wait(patients.map((patient) async {
      final initialisedPatient = await InitDto(DecryptedPatientDtoExtensions(patient).initPatient()).initDelegations(user, config);
      return PatientCryptoConfiguration(config).encryptPatient(user.healthcarePartyId!, delegations, initialisedPatient);
    }));
    final List<IdWithRevDto>? createdIdsAndRevs = await this.rawCreatePatients(encryptedPatients);
    return createdIdsAndRevs != null ? createdIdsAndRevs : List<IdWithRevDto>.empty();
  }

  Future<DecryptedPatientDto?> getPatient(UserDto user, String patientId, CryptoConfig<DecryptedPatientDto, PatientDto> config) async {
    var patient = await this.rawGetPatient(patientId);
    return patient != null ? await PatientCryptoConfiguration(config).decryptPatient(user.healthcarePartyId!, patient) : null;
  }

  Future<List<IdWithRevDto>> modifyPatients(
      UserDto user, List<DecryptedPatientDto> patients, CryptoConfig<DecryptedPatientDto, PatientDto> config) async {
    final Set<String> delegations = <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})};
    final List<PatientDto> encryptedPatients = await Future.wait(patients.map((patient) => PatientCryptoConfiguration(config)
        .encryptPatient(user.healthcarePartyId!, delegations, DecryptedPatientDtoExtensions(patient).initPatient())));
    final List<IdWithRevDto>? modifiedIdsWithRevs = await this.rawModifyPatients(encryptedPatients);

    return modifiedIdsWithRevs != null ? modifiedIdsWithRevs : List<IdWithRevDto>.empty();
  }

  Future<DecryptedPatientDto?> modifyPatient(
      UserDto user, DecryptedPatientDto patientDto, CryptoConfig<DecryptedPatientDto, PatientDto> config) async {
    final PatientDto encryptedPatient = await PatientCryptoConfiguration(config).encryptPatient(
        user.healthcarePartyId!,
        <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})},
        DecryptedPatientDtoExtensions(patientDto).initPatient());
    var modifiedPatient = await this.rawModifyPatient(encryptedPatient);
    return modifiedPatient != null ? await PatientCryptoConfiguration(config).decryptPatient(user.healthcarePartyId!, modifiedPatient) : null;
  }

  Future<List<IdWithRevDto>> deletePatients(
      UserDto user, List<DecryptedPatientDto> patients, CryptoConfig<DecryptedPatientDto, PatientDto> config) async {
    final int currentTime = DateTime.now().millisecondsSinceEpoch;
    final List<DecryptedPatientDto> updatedPatients = patients.map((patient) {
      patient.endOfLife = currentTime;
      return patient;
    }).toList();
    return modifyPatients(user, updatedPatients, config);
  }

  Future<DecryptedPaginatedListPatientDto?> filterPatientsBy(UserDto user, FilterChainPatient filterChain, String? startKey, String? startDocumentId,
      int? limit, CryptoConfig<DecryptedPatientDto, PatientDto> config) async {

    return await (await this.rawFilterPatientsBy(filterChain, startKey: startKey, startDocumentId: startDocumentId, limit: limit))?.let((it) async =>
        DecryptedPaginatedListPatientDto(
            rows: await Future.wait(it.rows.map((it) => config.decryptPatient(user.healthcarePartyId!, it))),
            pageSize: it.pageSize,
            totalSize: it.totalSize,
            nextKeyPair: it.nextKeyPair)
    );
  }

  Future<DecryptedPaginatedListPatientDto?> findByAccessLogUserAfterDate(UserDto user, String userId, String? accessType, int? startDate,
      String? startDocumentId, int? limit, CryptoConfig<DecryptedPatientDto, PatientDto> config) async {

    return await (await this.rawFindPatientsByAccessLogUserAfterDate(userId, accessType: accessType, startDocumentId: startDocumentId, startDate: startDate, limit: limit))?.let((it) async =>
        DecryptedPaginatedListPatientDto(
            rows: await Future.wait(it.rows.map((it) => config.decryptPatient(user.healthcarePartyId!, it))),
            pageSize: it.pageSize,
            totalSize: it.totalSize,
            nextKeyPair: it.nextKeyPair)
    );
  }

  Future<DecryptedPaginatedListPatientDto?> findByNameBirthSsinAuto(UserDto user, String? healthcarePartyId, String? filterValue, String? startKey,
      String? startDocumentId, int? limit, String? sortDirection, CryptoConfig<DecryptedPatientDto, PatientDto> config) async {

    return await (await this.rawFindPatientsByNameBirthSsinAuto(healthcarePartyId: healthcarePartyId, filterValue: filterValue,
        startKey: startKey, startDocumentId: startDocumentId, limit: limit, sortDirection: sortDirection))?.let((it) async =>
        DecryptedPaginatedListPatientDto(
            rows: await Future.wait(it.rows.map((it) => config.decryptPatient(user.healthcarePartyId!, it))),
            pageSize: it.pageSize,
            totalSize: it.totalSize,
            nextKeyPair: it.nextKeyPair)
    );
  }

  Future<DecryptedPatientDto?> findByExternalId(UserDto user, String externalId, CryptoConfig<DecryptedPatientDto, PatientDto> config) async {
    var patient = await this.rawGetPatientByExternalId(externalId);
    return patient != null ? await PatientCryptoConfiguration(config).decryptPatient(user.healthcarePartyId!, patient) : null;
  }

  Future<List<DecryptedPatientDto>> fuzzySearch(UserDto user, String? firstName, String? lastName, int? dateOfBirth, CryptoConfig<DecryptedPatientDto, PatientDto> config) async {
    return Future.wait(
        (await this.rawFuzzySearch(firstName: firstName, lastName: lastName, dateOfBirth: dateOfBirth))!.map((it) => config.decryptPatient(user.healthcarePartyId!, it)));
  }

  Future<List<DecryptedPatientDto>> getPatients(UserDto user, ListOfIdsDto listOfIdsDto, CryptoConfig<DecryptedPatientDto, PatientDto> config) async {
    return Future.wait((await this.rawGetPatients(listOfIdsDto))!.map((it) => config.decryptPatient(user.healthcarePartyId!, it)));
  }

  Future<DecryptedPaginatedListPatientDto?> listAllDeleted(UserDto user, int? startDate, int? endDate, bool? desc, String? startDocumentId,
      int? limit , CryptoConfig<DecryptedPatientDto, PatientDto> config) async {

    return await (await this.rawFindDeletedPatients(startDate: startDate, endDate: endDate, desc: desc, startDocumentId: startDocumentId, limit: limit))?.let((it) async =>
        DecryptedPaginatedListPatientDto(
            rows: await Future.wait(it.rows.map((it) => config.decryptPatient(user.healthcarePartyId!, it))),
            pageSize: it.pageSize,
            totalSize: it.totalSize,
            nextKeyPair: it.nextKeyPair)
    );
  }

  Future<List<DecryptedPatientDto>> listDeletedByName(UserDto user, String? firstName, String? lastName, CryptoConfig<DecryptedPatientDto, PatientDto> config) async {
    return Future.wait((await this.rawListDeletedPatientsByName(firstName: firstName, lastName: lastName))!.map((it) => config.decryptPatient(user.healthcarePartyId!, it)));
  }

  Future<List<DecryptedPatientDto>> listOfMergesAfter(UserDto user, int date, CryptoConfig<DecryptedPatientDto, PatientDto> config) async {
    return Future.wait((await this.rawListOfMergesAfter(date))!.map((it) => config.decryptPatient(user.healthcarePartyId!, it)));
  }

  Future<DecryptedPaginatedListPatientDto?> listModifiedAfter(UserDto user, int date, int? startKey, String? startDocumentId, int? limit,
      CryptoConfig<DecryptedPatientDto, PatientDto> config) async {

    return await (await this.rawFindPatientsModifiedAfter(date, startKey: startKey, startDocumentId: startDocumentId, limit: limit))?.let((it) async =>
        DecryptedPaginatedListPatientDto(
            rows: await Future.wait(it.rows.map((it) => config.decryptPatient(user.healthcarePartyId!, it))),
            pageSize: it.pageSize,
            totalSize: it.totalSize,
            nextKeyPair: it.nextKeyPair)
    );
  }

  Future<DecryptedPaginatedListPatientDto?> listPatients(UserDto user, String? hcPartyId, String? sortField, String? startKey, String? startDocumentId, int? limit, String? sortDirection,
      CryptoConfig<DecryptedPatientDto, PatientDto> config) async {

    return await (await this.rawFindPatientsByHealthcareParty(hcPartyId: hcPartyId, sortField: sortField, startKey: startKey, startDocumentId: startDocumentId, limit: limit, sortDirection: sortDirection))?.let((it) async =>
        DecryptedPaginatedListPatientDto(
            rows: await Future.wait(it.rows.map((it) => config.decryptPatient(user.healthcarePartyId!, it))),
            pageSize: it.pageSize,
            totalSize: it.totalSize,
            nextKeyPair: it.nextKeyPair)
    );
  }

  Future<DecryptedPaginatedListPatientDto?> listByHealthcareParty(UserDto user, String hcPartyId, String? sortField, String? startKey, String? startDocumentId, int? limit, String? sortDirection,
      CryptoConfig<DecryptedPatientDto, PatientDto> config) async {

    return await (await this.rawFindPatientsByHealthcareParty(hcPartyId: hcPartyId, sortField: sortField, startKey: startKey, startDocumentId: startDocumentId, limit: limit, sortDirection: sortDirection))?.let((it) async =>
        DecryptedPaginatedListPatientDto(
            rows: await Future.wait(it.rows.map((it) => config.decryptPatient(user.healthcarePartyId!, it))),
            pageSize: it.pageSize,
            totalSize: it.totalSize,
            nextKeyPair: it.nextKeyPair)
    );
  }

  Future<DecryptedPatientDto?> mergeInto(UserDto user, String toId, String fromIds, CryptoConfig<DecryptedPatientDto, PatientDto> config) async {
    var patient = await this.rawMergeInto(toId, fromIds);
    return patient != null ? await PatientCryptoConfiguration(config).decryptPatient(user.healthcarePartyId!, patient) : null;
  }

  Future<DecryptedPatientDto?> modifyReferral(UserDto user, String patientId, String referralId, int? start, int? end, CryptoConfig<DecryptedPatientDto, PatientDto> config) async {
    var patient = await this.rawModifyPatientReferral(patientId, referralId, start: start, end: end);
    return patient != null ? await PatientCryptoConfiguration(config).decryptPatient(user.healthcarePartyId!, patient) : null;
  }

  Future<DecryptedPatientDto?> newPatientDelegations(UserDto user, String patientId, List<DelegationDto> delegationDto, CryptoConfig<DecryptedPatientDto, PatientDto> config) async {
    var patient = await this.rawNewPatientDelegations(patientId, delegationDto);
    return patient != null ? await PatientCryptoConfiguration(config).decryptPatient(user.healthcarePartyId!, patient) : null;
  }

}

