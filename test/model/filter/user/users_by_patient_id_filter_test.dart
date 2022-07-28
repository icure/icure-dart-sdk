

import 'dart:io';

import 'package:icure_dart_sdk/api.dart';

import '../../../util/test_utils_backend.dart';
import 'package:uuid/uuid.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid_util.dart';

void main() {
  final TestBackend backend = RemoteTestBackend.getInstance(
      Platform.environment["ICURE_USR"]!,
      Platform.environment["ICURE_PWD"]!,
      Platform.environment["ICURE_COUCHDB_USERNAME"]!,
      Platform.environment["ICURE_COUCHDB_PASSWORD"]!,
      Platform.environment["TEST_ICURE_URL"]!,
      Platform.environment["ICURE_COUCHDB_URL"]!
  );
  final Uuid uuid = Uuid();
  UserApi? userApi;
  List<String> generatedIds = [];

  setUpAll(() async {
    await backend.init();

    final client = ApiClient.basic(backend.iCureURL, backend.iCureUser, backend.iCurePwd);
    userApi = UserApi(client);

    print("Successfully set up test backend!");
  });

  tearDownAll(() async {
    await backend.shutdown(
        ids: generatedIds,
        dbPrefix: Platform.environment["ICURE_COUCHDB_PREFIX"]!
    );
  });

  group("UsersByPatientIdFilter test", () {
    test("Test UsersByPatientIdFilter - Success", () async {
      final patientToFilter = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
      final userId1 = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
      final user1 = await userApi!.createUser(
          new UserDto(
              id: userId1,
              login: userId1,
              status: UserDtoStatusEnum.ACTIVE,
              patientId: patientToFilter
          )
      );
      assert(user1 != null);
      generatedIds = generatedIds + [userId1];

      final userId2 = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
      final user2 = await userApi!.createUser(
          new UserDto(
              id: userId2,
              login: userId2,
              status: UserDtoStatusEnum.ACTIVE,
              patientId: patientToFilter
          )
      );
      assert(user2 != null);
      generatedIds = generatedIds + [userId2];

      final userId3 = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
      final user3 = await userApi!.createUser(
          new UserDto(
              id: userId3,
              login: userId3,
              status: UserDtoStatusEnum.ACTIVE,
              patientId: "DUMMY-PATIENT-2"
          )
      );
      assert(user3 != null);
      generatedIds = generatedIds + [userId3];

      final filteredUsers = await userApi!.filterUsersBy(FilterChain(UsersByPatientIdFilter(patientToFilter)));
      assert(filteredUsers != null);
      assert(filteredUsers!.rows.length == 2);
      filteredUsers!.rows.forEach((element) {
        assert(element.patientId != null);
        assert(element.patientId == patientToFilter);
      });
    });
  });
}