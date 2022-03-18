// @dart=2.12
part of icure_dart_sdk.api;

class DataOwnerApiFactory {
  DataOwnerApiFactory(ApiClient apiClient) {
    this.healthcarePartyApi = Future.value(HealthcarePartyApi(apiClient));
    this.patientApi = Future.value(PatientApi(apiClient));
    this.deviceApi = Future.value(DeviceApi(apiClient));
  }

  DataOwnerApiFactory.fromExistingApis(HealthcarePartyApi healthcarePartyApi, PatientApi patientApi, DeviceApi deviceApi) {
    this.healthcarePartyApi = Future.value(healthcarePartyApi);
    this.patientApi = Future.value(patientApi);
    this.deviceApi = Future.value(deviceApi);
  }

  late final Future<HealthcarePartyApi> healthcarePartyApi;
  late final Future<PatientApi> patientApi;
  late final Future<DeviceApi> deviceApi;

  Future<DataOwnerApi> getDataOwnerApiFor(UserDto user) async {
    if (user.healthcarePartyId != null) {
      return HcpDataOwnerApi(await healthcarePartyApi);

    } else if (user.patientId != null) {
      return PatientDataOwnerApi(await patientApi);

    } else if (user.deviceId != null) {
      return DeviceDataOwnerApi(await deviceApi);

    } else {
      throw FormatException("User ${user.id} is not a data owner");
    }
  }
}
