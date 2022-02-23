// @dart=2.12
part of icure_dart_sdk.api;

extension DocumentInitDto on DecryptedDocumentDto {

  Future<DecryptedDocumentDto> initDelegations(UserDto user, CryptoConfig<DecryptedDocumentDto, DocumentDto> config) async {
    final Uuid uuid = Uuid();

    Set<String> delegationKeys = Set.from(user.autoDelegations["all"] ?? <String>{})..addAll(user.autoDelegations["medicalInformation"] ?? <String>{});

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
        (m, d) async => (await m)
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

extension DocumentCryptoConfig on CryptoConfig<DecryptedDocumentDto, DocumentDto> {
  Future<DecryptedDocumentDto> decryptDocument(String dataOwnerId, DocumentDto document) async {
    final es = document.encryptedSelf;
    if (es != null) {
      final secret = IterableUtils((await this.crypto.decryptEncryptionKeys(dataOwnerId, document.encryptionKeys))).firstOrNull()?.formatAsKey().fromHexString();

      if (secret == null) {
        throw FormatException("Cannot get encryption key fo ${document.id} and hcp $dataOwnerId");
      }
      return this.unmarshaller(document, base64.decoder.convert(es).decryptAES(secret));
    } else {
      return this.unmarshaller(document, null);
    }
  }

  Future<DocumentDto> encryptDocument(String dataOwnerId, Set<String> delegations, DecryptedDocumentDto document) async {
    var eks = document.encryptionKeys;
    Uint8List? secret;
    if (!eks.entries.any((s) => s.value.isNotEmpty)) {
      secret = Uint8List.fromList(List<int>.generate(32, (i) => random.nextInt(256)));
      final secretForDelegates = await Future.wait((<String>{...delegations, dataOwnerId})
          .map((String d) async => Tuple2(d, await this.crypto.encryptAESKeyForHcp(dataOwnerId, d, document.id, secret!.toHexString()))));

      eks = {
        ...eks,
        ...Map.fromEntries(
            secretForDelegates.map((t) => MapEntry(t.item1, <DelegationDto>{DelegationDto(owner: dataOwnerId, delegatedTo: t.item1, key: t.item2.item1)})))
      };
    } else {
      secret = IterableUtils((await this.crypto.decryptEncryptionKeys(dataOwnerId, document.encryptionKeys))).firstOrNull()?.formatAsKey().fromHexString();
    }

    if (secret == null) {
      throw FormatException("Cannot get encryption key for ${document.id} and hcp $dataOwnerId");
    }

    Tuple2 t = await this.marshaller(document);

    DocumentDto sanitizedDocument = t.item1;
    final Uint8List marshalledData = t.item2;

    sanitizedDocument.encryptionKeys = eks;
    sanitizedDocument.encryptedSelf = base64.encoder.convert(marshalledData.encryptAES(secret));

    return sanitizedDocument;
  }
}

extension DocumentApiCrypto on DocumentApi {

  Future<DecryptedDocumentDto?> createDocument(UserDto user, DecryptedDocumentDto document, CryptoConfig<DecryptedDocumentDto, DocumentDto> config) async {
    var newDocument = await this.rawCreateDocument(await config.encryptDocument(
        user.dataOwnerId()!, <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})}, (await document.initDelegations(user, config))));
    return newDocument != null ? await config.decryptDocument(user.dataOwnerId()!, newDocument) : null;
  }

  Future<List<DecryptedDocumentDto>> findByHCPartyAndPatient(UserDto user, String hcpId, DecryptedPatientDto patient, CryptoConfig<DecryptedDocumentDto, DocumentDto> config) async {
    var keys = await config.crypto.decryptEncryptionKeys(user.dataOwnerId()!, patient.delegations);
    if (keys.isEmpty) {
      throw FormatException("No delegations for user");
    }

    return this.findByHCPartyAndPatientForeignKeys(user, hcpId, keys.join(","), config);
  }

  Future<List<DecryptedDocumentDto>> findByDocTypeHCPartyAndMessage(UserDto user, String documentType, String hcpId, DecryptedMessageDto message, CryptoConfig<DecryptedDocumentDto, DocumentDto> config) async {
    var keys = await config.crypto.decryptEncryptionKeys(user.dataOwnerId()!, message.delegations);
    if (keys.isEmpty) {
      throw FormatException("No delegations for user");
    }

    return this.findByDocTypeHCPartyAndMessageForeignKeys(user, documentType, hcpId, keys.join(","), config);
  }

  Future<List<DecryptedDocumentDto>> findByHCPartyAndPatientForeignKeys(UserDto user, String hcpId, String patientSecretForeignKeys, CryptoConfig<DecryptedDocumentDto, DocumentDto> config) async {
    return Future.wait(
        (await this.rawListDocumentsByHCPartyAndPatientForeignKeys(hcpId, patientSecretForeignKeys))!
            .map((it) => config.decryptDocument(user.dataOwnerId()!, it))
    );
  }

  Future<List<DecryptedDocumentDto>> findByDocTypeHCPartyAndMessageForeignKeys(UserDto user, String documentType, String hcpId, String messageSecretForeignKeys, CryptoConfig<DecryptedDocumentDto, DocumentDto> config) async {
    return Future.wait(
        (await this.rawListDocumentByTypeHCPartyMessageSecretFKeys(documentType, hcpId, messageSecretForeignKeys))!
            .map((it) => config.decryptDocument(user.dataOwnerId()!, it))
    );
  }

  Future<List<DecryptedDocumentDto>> findWithoutDelegations(UserDto user, int? limit, CryptoConfig<DecryptedDocumentDto, DocumentDto> config) async {
    return Future.wait(
        (await this.rawFindWithoutDelegation(limit: limit))!
            .map((it) => config.decryptDocument(user.dataOwnerId()!, it))
    );
  }

  Future<DecryptedDocumentDto?> getDocument(UserDto user, String documentId, CryptoConfig<DecryptedDocumentDto, DocumentDto> config) async {
    return await (await this.rawGetDocument(documentId))?.let((it) => config.decryptDocument(user.dataOwnerId()!, it));
  }

  Future<List<DecryptedDocumentDto>> getDocuments(UserDto user, ListOfIdsDto listOfIdsDto, CryptoConfig<DecryptedDocumentDto, DocumentDto> config) async {
    return Future.wait((await this.rawGetDocuments(listOfIdsDto))!.map((it) => config.decryptDocument(user.dataOwnerId()!, it)));
  }

  Future<List<DecryptedDocumentDto>> getDocumentsByExternalUuid(UserDto user, String externalUuid, CryptoConfig<DecryptedDocumentDto, DocumentDto> config) async {
    return Future.wait((await this.rawGetDocumentsByExternalUuid(externalUuid))!.map((it) => config.decryptDocument(user.dataOwnerId()!, it)));
  }

  Future<DecryptedDocumentDto?> modifyDocument(UserDto user, DecryptedDocumentDto document, CryptoConfig<DecryptedDocumentDto, DocumentDto> config) async {
    var newDocument = await this.rawModifyDocument(await config.encryptDocument(
        user.dataOwnerId()!, <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})}, document));

    return newDocument == null ? null : await config.decryptDocument(user.dataOwnerId()!, newDocument);
  }

  Future<List<DecryptedDocumentDto>?> modifyDocuments(UserDto user, List<DecryptedDocumentDto> documents, CryptoConfig<DecryptedDocumentDto, DocumentDto> config) async {
    var modifiedDocuments = await this.rawModifyDocuments(await Future.wait(documents.map((document) => config.encryptDocument(
        user.dataOwnerId()!, <String>{...(user.autoDelegations["all"] ?? {}), ...(user.autoDelegations["medicalInformation"] ?? {})}, document))));

    return modifiedDocuments == null
        ? null
        : await Future.wait(modifiedDocuments.map((newDocument) => config.decryptDocument(user.dataOwnerId()!, newDocument)));
  }

  Future<DecryptedDocumentDto?> deleteAttachment(UserDto user, String documentId, CryptoConfig<DecryptedDocumentDto, DocumentDto> config) async {
    return await (await this.rawDeleteAttachment(documentId))?.let((it) => config.decryptDocument(user.dataOwnerId()!, it));
  }

  Future<DecryptedDocumentDto?> setAttachmentTo(UserDto user, String documentId, ByteStream attachment, String? docEncKeys, CryptoConfig<DecryptedDocumentDto, DocumentDto> config) async {
    return await (await this.rawSetDocumentAttachment(documentId, attachment, enckeys: docEncKeys))?.let((it) => config.decryptDocument(user.dataOwnerId()!, it));
  }
}

