// @dart=2.12
part of icure_dart_sdk.api;

abstract class DataOwnerApi<T> {
  Future<T?> getDataOwner(String dataOwnerId);

  Future<T?> createDataOwner(T dataOwner);

  Future<T?> modifyDataOwner(T dataOwner);
}

class HcpDataOwnerApi implements DataOwnerApi<HealthcarePartyDto> {
  HcpDataOwnerApi(this.healthcarePartyApi);

  final HealthcarePartyApi healthcarePartyApi;

  @override
  Future<HealthcarePartyDto?> getDataOwner(String dataOwnerId) {
    return healthcarePartyApi.getHealthcareParty(dataOwnerId);
  }

  @override
  Future<HealthcarePartyDto?> modifyDataOwner(HealthcarePartyDto updatedHcp) {
    return healthcarePartyApi.modifyHealthcareParty(updatedHcp);
  }

  @override
  Future<HealthcarePartyDto?> createDataOwner(HealthcarePartyDto dataOwner) {
    return healthcarePartyApi.createHealthcareParty(dataOwner);
  }
}

class PatientDataOwnerApi implements DataOwnerApi<PatientDto> {
  PatientDataOwnerApi(this.patientApi);

  final PatientApi patientApi;

  @override
  Future<PatientDto?> getDataOwner(String dataOwnerId) {
    return patientApi.rawGetPatient(dataOwnerId);
  }

  @override
  Future<PatientDto?> modifyDataOwner(PatientDto updatedPatient) {
    return patientApi.rawModifyPatient(updatedPatient);
  }

  @override
  Future<PatientDto?> createDataOwner(PatientDto dataOwner) {
    return patientApi.rawCreatePatient(dataOwner);
  }
}

class DeviceDataOwnerApi implements DataOwnerApi<DeviceDto> {
  DeviceDataOwnerApi(this.deviceApi);

  final DeviceApi deviceApi;

  @override
  Future<DeviceDto?> getDataOwner(String dataOwnerId) {
    return deviceApi.getDevice(dataOwnerId);
  }

  @override
  Future<DeviceDto?> modifyDataOwner(DeviceDto updatedDevice) {
    return deviceApi.updateDevice(updatedDevice);
  }

  @override
  Future<DeviceDto?> createDataOwner(DeviceDto dataOwner) {
    return deviceApi.createDevice(dataOwner);
  }
}
