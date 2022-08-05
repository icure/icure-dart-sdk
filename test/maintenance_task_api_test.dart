//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'dart:io';

import 'package:collection/collection.dart';
import 'package:icure_dart_sdk/api.dart';
import 'package:icure_dart_sdk/crypto/crypto.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';
import 'util/test_utils_backend.dart';

class CodeEquality implements Equality<CodeStubDto> {
  @override
  bool equals(CodeStubDto e1, CodeStubDto e2) {
    return e1.code == e2.code && e1.type == e2.type && e1.version == e2.version;
  }

  @override
  int hash(CodeStubDto e) {
    // TODO: implement hash
    throw UnimplementedError();
  }

  @override
  bool isValidKey(Object? o) {
    // TODO: implement isValidKey
    throw UnimplementedError();
  }

}

/// tests for MaintenanceTaskApi
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
  final login = "hcp-${uuid.v4(options: {'rng': UuidUtil.cryptoRNG})}-delegate";
  HealthcarePartyDto? delegateHcp;
  MaintenanceTaskApi? maintenanceTaskApi;
  List<String> generatedIds = [];

  setUpAll(() async {
    await backend.init();

    final client = ApiClient.basic(backend.iCureURL, backend.iCureUser, backend.iCurePwd);
    final hcpKeys = generateRandomPrivateAndPublicKeyPair();
    delegateHcp = await HealthcarePartyApi(client).createHealthcareParty(
        new HealthcarePartyDto(id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}), publicKey: hcpKeys.item2, firstName: "test", lastName: "test")
    );
    assert(delegateHcp != null);
    final user = await UserApi(client).createUser(
        new UserDto(
            id: "user-${uuid.v4(options: {'rng': UuidUtil.cryptoRNG})}-hcp",
            login: login,
            status: UserDtoStatusEnum.ACTIVE,
            healthcarePartyId: delegateHcp!.id
        )
    );
    assert(user != null);

    final authToken = await UserApi(client).getToken(user!.id, uuid.v4(options: {'rng': UuidUtil.cryptoRNG}));
    assert(authToken != null);

    final clientHcp = ApiClient.basic(backend.iCureURL, login, authToken!);
    maintenanceTaskApi = MaintenanceTaskApi(clientHcp);

    print("Successfully set up test backend!");
  });

  tearDownAll(() async {
    await backend.shutdown(
      ids: generatedIds,
      dbPrefix: Platform.environment["ICURE_COUCHDB_PREFIX"]!
    );
  });

  group('tests for MaintenanceTaskApi', () {
    // Creates a maintenanceTask
    //
    //Future<MaintenanceTaskDto> createMaintenanceTask(MaintenanceTaskDto maintenanceTaskDto) async
    test('test createMaintenanceTask - success', () async {
      final maintenanceTask = MaintenanceTaskDto(
        id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
        status: MaintenanceTaskDtoStatusEnum.pending,
        identifier: [IdentifierDto(id: "DUMMY-IDENTIFIER")],
        tags: {CodeStubDto(type: "TEST", code: "TAGS", version: "1")},
        codes: {CodeStubDto(type: "TEST", code: "CODES", version: "1")},
        properties: {PropertyStubDto(id: "DUMMY-PROPERTY")}
      );
      final result = await maintenanceTaskApi!.createMaintenanceTask(maintenanceTask);
      assert(result != null);
      assert(result!.rev != null);
      assert(result!.id == maintenanceTask.id);
      assert(result!.status == maintenanceTask.status);
      assert(ListEquality().equals(result!.identifier, maintenanceTask.identifier));
      assert(ListEquality().equals(result!.properties.toList(), maintenanceTask.properties.toList()));
      assert(ListEquality(CodeEquality()).equals(result!.tags.toList(), maintenanceTask.tags.toList()));
      assert(ListEquality(CodeEquality()).equals(result!.codes.toList(), maintenanceTask.codes.toList()));
      generatedIds = generatedIds + [maintenanceTask.id];
    });

    // Delete maintenanceTasks
    //
    //Future<List<DocIdentifier>> deleteMaintenanceTask(String maintenanceTaskIds) async
    test('test deleteMaintenanceTask - Success', () async {
      final toDelete = await maintenanceTaskApi!.createMaintenanceTask(
        MaintenanceTaskDto(
            id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
            status: MaintenanceTaskDtoStatusEnum.pending)
      );
      assert(toDelete != null);
      assert(toDelete!.rev != null);
      final result = await maintenanceTaskApi!.deleteMaintenanceTask(toDelete!.id);
      assert(result != null);
      assert(result!.isNotEmpty);
      assert(result![0].id == toDelete.id);
      final getResult = await maintenanceTaskApi!.getMaintenanceTask(toDelete.id);
      assert(getResult != null);
      assert(getResult!.deletionDate != null);
    });

    // Delete maintenanceTasks
    //
    //Future<List<DocIdentifier>> deleteMaintenanceTask(String maintenanceTaskIds) async
    test('test deleteMaintenanceTask - Fail', () async {
      final result = await maintenanceTaskApi!.deleteMaintenanceTask(uuid.v4(options: {'rng': UuidUtil.cryptoRNG}));
      assert(result != null);
      assert(result!.isEmpty);
    });

    // Filter maintenanceTasks for the current user (HcParty)
    //
    // Returns a list of maintenanceTasks along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
    //
    //Future<PaginatedListMaintenanceTaskDto> filterMaintenanceTasksBy(FilterChain<MaintenanceTaskDto> filterChainMaintenanceTask, { String startDocumentId, int limit }) async
    test('test filterMaintenanceTasksByIds - Success', () async {
      final mt1Id = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
      final mt1 = await maintenanceTaskApi!.createMaintenanceTask(
          MaintenanceTaskDto(
              id: mt1Id,
              status: MaintenanceTaskDtoStatusEnum.pending)
      );
      assert(mt1 != null);
      final mt2Id = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
      final mt2 = await maintenanceTaskApi!.createMaintenanceTask(
          MaintenanceTaskDto(
              id: mt2Id,
              status: MaintenanceTaskDtoStatusEnum.pending)
      );
      assert(mt2 != null);
      final filterResult = await maintenanceTaskApi!.filterMaintenanceTasksBy(FilterChain(MaintenanceTaskByIdsFilter(ids: {mt1Id})));
      assert(filterResult != null);
      assert(filterResult!.rows.length == 1);
      assert(filterResult!.rows[0].id == mt1Id);
      generatedIds = generatedIds + [mt1Id, mt2Id];
    });

    // Filter maintenanceTasks for the current user (HcParty)
    //
    // Returns a list of maintenanceTasks along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
    //
    //Future<PaginatedListMaintenanceTaskDto> filterMaintenanceTasksBy(FilterChain<MaintenanceTaskDto> filterChainMaintenanceTask, { String startDocumentId, int limit }) async
    test('test filterMaintenanceTasksByIds - Failure', () async {
      final mt1Id = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
      final mt1 = await maintenanceTaskApi!.createMaintenanceTask(
          MaintenanceTaskDto(
              id: mt1Id,
              status: MaintenanceTaskDtoStatusEnum.pending)
      );
      assert(mt1 != null);
      final mt2Id = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
      final mt2 = await maintenanceTaskApi!.createMaintenanceTask(
          MaintenanceTaskDto(
              id: mt2Id,
              status: MaintenanceTaskDtoStatusEnum.pending)
      );
      assert(mt2 != null);
      final filterResult = await maintenanceTaskApi!.filterMaintenanceTasksBy(FilterChain(MaintenanceTaskByIdsFilter(ids: {uuid.v4(options: {'rng': UuidUtil.cryptoRNG})})));
      assert(filterResult != null);
      assert(filterResult!.rows.length == 0);
      generatedIds = generatedIds + [mt1Id, mt2Id];
    });

    // Filter maintenanceTasks for the current user (HcParty)
    //
    // Returns a list of maintenanceTasks along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
    //
    //Future<PaginatedListMaintenanceTaskDto> filterMaintenanceTasksBy(FilterChain<MaintenanceTaskDto> filterChainMaintenanceTask, { String startDocumentId, int limit }) async
    test('test filterMaintenanceTasksAfterDate - Success', () async {
      final mt1Id = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
      final creationTimestamp = DateTime.now().millisecondsSinceEpoch + 1;
      final mt1 = await maintenanceTaskApi!.createMaintenanceTask(
          MaintenanceTaskDto(
              id: mt1Id,
              created: creationTimestamp + 10,
              status: MaintenanceTaskDtoStatusEnum.pending)
      );
      assert(mt1 != null);
      final filterResult = await maintenanceTaskApi!.filterMaintenanceTasksBy(
          FilterChain(
              MaintenanceTaskAfterDateFilter(date: creationTimestamp)
          )
      );
      assert(filterResult != null);
      assert(filterResult!.rows.length > 0);
      filterResult!.rows.forEach((task) {
        assert(task.created != null);
        assert(task.created! > creationTimestamp );
      });
      generatedIds = generatedIds + [mt1Id];
    });

    // Filter maintenanceTasks for the current user (HcParty)
    //
    // Returns a list of maintenanceTasks along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
    //
    //Future<PaginatedListMaintenanceTaskDto> filterMaintenanceTasksBy(FilterChain<MaintenanceTaskDto> filterChainMaintenanceTask, { String startDocumentId, int limit }) async
    test('test filterMaintenanceTasksByHcPartyAndIdentifiers - Success', () async {
      final mt1Id = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
      final mt1 = await maintenanceTaskApi!.createMaintenanceTask(
          MaintenanceTaskDto(
              id: mt1Id,
              responsible: "DUMMY-RESPONSIBLE-$mt1Id",
              identifier: [IdentifierDto(
                system: "DUMMY-SYSTEM",
                value: "DUMMY-VALUE"
              )],
              delegations: {"DUMMY-RESPONSIBLE-$mt1Id": const {}},
              status: MaintenanceTaskDtoStatusEnum.pending)
      );
      assert(mt1 != null);
      final mt2Id = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
      final mt2 = await maintenanceTaskApi!.createMaintenanceTask(
          MaintenanceTaskDto(
              id: mt2Id,
              status: MaintenanceTaskDtoStatusEnum.pending)
      );
      assert(mt2 != null);
      final filterResult = await maintenanceTaskApi!.filterMaintenanceTasksBy(
          FilterChain(
            MaintenanceTaskByHcPartyAndIdentifiersFilter(healthcarePartyId: "DUMMY-RESPONSIBLE-$mt1Id", identifiers: [IdentifierDto(
                system: "DUMMY-SYSTEM",
                value: "DUMMY-VALUE"
            )])
          )
      );
      assert(filterResult != null);
      assert(filterResult!.rows.length == 1);
      generatedIds = generatedIds + [mt1Id, mt2Id];
    });

    // Filter maintenanceTasks for the current user (HcParty)
    //
    // Returns a list of maintenanceTasks along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
    //
    //Future<PaginatedListMaintenanceTaskDto> filterMaintenanceTasksBy(FilterChain<MaintenanceTaskDto> filterChainMaintenanceTask, { String startDocumentId, int limit }) async
    test('test filterMaintenanceTasksByType - Success', () async {
      final mt1Id = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
      final mt1 = await maintenanceTaskApi!.createMaintenanceTask(
        MaintenanceTaskDto(
            id: mt1Id,
            taskType: "DUMMY-TYPE-$mt1Id",
            delegations: {"DUMMY-RESPONSIBLE-$mt1Id": const {}},
            status: MaintenanceTaskDtoStatusEnum.pending)
      );
      assert(mt1 != null);
      final mt2Id = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
      final mt2 = await maintenanceTaskApi!.createMaintenanceTask(
          MaintenanceTaskDto(
              id: mt2Id,
              delegations: {"DUMMY-RESPONSIBLE-$mt1Id": const {}},
              status: MaintenanceTaskDtoStatusEnum.pending)
      );
      assert(mt2 != null);
      final filterResult = await maintenanceTaskApi!.filterMaintenanceTasksBy(
          FilterChain(
              MaintenanceTaskByHcPartyAndTypeFilter(
                  healthcarePartyId: "DUMMY-RESPONSIBLE-$mt1Id",
                  type: "DUMMY-TYPE-$mt1Id")
          )
      );
      assert(filterResult != null);
      assert(filterResult!.rows.length == 1);
      generatedIds = generatedIds + [mt1Id, mt2Id];
    });


    // Gets a maintenanceTask
    //
    //Future<MaintenanceTaskDto> getMaintenanceTask(String maintenanceTaskId) async
    test('test getMaintenanceTask - Success', () async {
      final getId = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
      final toGet = await maintenanceTaskApi!.createMaintenanceTask(
          MaintenanceTaskDto(
              id: getId,
              status: MaintenanceTaskDtoStatusEnum.pending)
      );
      assert(toGet != null);
      assert(toGet!.rev != null);
      final getResult = await maintenanceTaskApi!.getMaintenanceTask(toGet!.id);
      assert(getResult != null);
      assert(getResult!.id == getId);
      generatedIds = generatedIds + [toGet.id];
    });

    // Updates a maintenanceTask
    //
    //Future<MaintenanceTaskDto> modifyMaintenanceTask(MaintenanceTaskDto maintenanceTaskDto) async
    test('test modifyMaintenanceTask', () async {
      final id = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
      final created = await maintenanceTaskApi!.createMaintenanceTask(
          MaintenanceTaskDto(
              id: id,
              status: MaintenanceTaskDtoStatusEnum.pending)
      );
      assert(created != null);
      assert(created!.rev != null);
      final modified = await maintenanceTaskApi!.modifyMaintenanceTask(
          MaintenanceTaskDto(
              id: id,
              rev: created!.rev,
              status: MaintenanceTaskDtoStatusEnum.ongoing)
      );
      assert(modified != null);
      assert(modified!.id == id);
      assert(modified!.rev != created.rev);
      assert(modified!.status == MaintenanceTaskDtoStatusEnum.ongoing);
      generatedIds = generatedIds + [created.id];
    });

  });
}
