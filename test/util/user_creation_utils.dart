import 'package:icure_dart_sdk/api.dart';
import 'package:icure_dart_sdk/crypto/crypto.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

class UserCreds {
  String hcpId;
  String login;
  String password;
  String privKey;

  UserCreds(this.hcpId, this.login, this.password, this.privKey);
}

class UserCreationUtils {
  static Future<UserCreds> createAHcpUser(UserApi userApi, HealthcarePartyApi hcpApi) async {
    final Uuid uuid = Uuid();
    final userId = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
    final userLogin = userId + '@icure.test';
    final userPassword = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
    final userKeyPair = generateRandomPrivateAndPublicKeyPair();

    final hcp = await hcpApi.createHealthcareParty(
        HealthcarePartyDto(id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}), firstName: 'Rob', lastName: 'Stark', publicKey: userKeyPair.item2));

    await userApi.createUser(UserDto(id: userId, login: userLogin, email: userLogin, passwordHash: userPassword, healthcarePartyId: hcp!.id));

    return UserCreds(hcp.id, userLogin, userPassword, userKeyPair.item1);
  }
}
