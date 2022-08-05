
import 'package:icure_dart_sdk/api.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  final apiClient = ApiClient.basic('https://kraken.icure.dev', 'tmp', 'tmp');
  final dataOwnerApiFactory = DataOwnerApiFactory(apiClient);

  group('DataOwnerApiFactory Tests', () {
    test('Get HCP User API', () async {
      // Init
      final user = UserDto(id: "abc", healthcarePartyId: "def");

      // When
      final api = await dataOwnerApiFactory.getDataOwnerApiFor(user);

      // Then
      expect(api is HcpDataOwnerApi, true);
    });

    test('Get Patient User API', () async {
      // Init
      final user = UserDto(id: "abc", patientId: "def");

      // When
      final api = await dataOwnerApiFactory.getDataOwnerApiFor(user);

      // Then
      expect(api is PatientDataOwnerApi, true);
    });

    test('Get Device User API', () async {
      // Init
      final user = UserDto(id: "abc", deviceId: "def");

      // When
      final api = await dataOwnerApiFactory.getDataOwnerApiFor(user);

      // Then
      expect(api is DeviceDataOwnerApi, true);
    });

    test('Getting DataOwnerAPI for invalid user', () async {
      // Init
      final user = UserDto(id: "abc");

      // When & Then
      expect(() => dataOwnerApiFactory.getDataOwnerApiFor(user), throwsFormatException);
    });
  });
}
