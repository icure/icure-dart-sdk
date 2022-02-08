import 'dart:typed_data';

import 'package:openapi/api.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

extension CryptoSupport on ContactApi {}

extension InitDto on ContactDto {
  Future<ContactDto> initDelegations(UserDto user, CryptoConfig<DecryptedContactDto, ContactDto> config) async {
    final Uuid uuid = Uuid();

    Set<String> delegationKeys =
        Set.from(user.autoDelegations["all"] ?? <String>{})
          ..addAll(user.autoDelegations["medicalInformation"] ?? <String>{});
    final ek = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
    final sfk = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});

    responsible = user.healthcarePartyId!;
    author = user.id;
    delegations = await (delegationKeys..add(user.healthcarePartyId)).fold(
        Future.value(delegations),
        (m, d) async => (await m)
          ..addEntries([
            MapEntry(d, {
              DelegationDto(
                  owner: user.healthcarePartyId,
                  delegatedTo: d,
                  key: await config.crypto
                      .encryptAESKeyForHcp(user.healthcarePartyId, d, id, sfk))
            })
          ]));

    encryptionKeys = await (delegationKeys..add(user.healthcarePartyId)).fold(
        Future.value(encryptionKeys),
        (m, d) async => (await m)
          ..addEntries([
            MapEntry(d, {
              DelegationDto(
                  owner: user.healthcarePartyId,
                  delegatedTo: d,
                  key: await config.crypto
                      .encryptAESKeyForHcp(user.healthcarePartyId, d, id, ek))
            })
          ]));
    return this;
  }
}
