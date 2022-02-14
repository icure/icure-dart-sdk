
import 'package:icure_dart_sdk/api.dart';
import 'package:icure_dart_sdk/util/collection_utils.dart';
import 'package:icure_dart_sdk/util/functional_utils.dart';

class DataOwnerResolver {
  DataOwnerResolver(this.healthcarePartyApi, this.patientApi, this.deviceApi);

  final HealthcarePartyApi healthcarePartyApi;
  final PatientApi patientApi;
  final DeviceApi deviceApi;

  Map<String, Future<HealthcarePartyDto?>> hcParties = {};
  Map<String, Future<PatientDto?>> patients = {};
  Map<String, Future<DeviceDto?>> devices = {};

  Future<Map<String, String>> getDataOwnerKeysForDelegate(String delegateId) async {
    return Future.wait([
      _getHcpHcPartyKeysForDelegate(delegateId),
      _getPatientHcPartyKeysForDelegate(delegateId),
      _getDeviceHcPartyKeysForDelegate(delegateId)
    ]).then((allKeysForDelegateMaps) {
      Map<String, String> keysForDelegate = {};
      allKeysForDelegateMaps.forEach((keys) {
          keysForDelegate.addAll(keys);
      });
      return keysForDelegate;
    });
  }

  Future<Map<String, String>> _getHcpHcPartyKeysForDelegate(String delegateId) async {
    try {
      return await (healthcarePartyApi.getHcPartyKeysForDelegate(delegateId)) ?? {};
    } on ApiException {
      return {};
    }
  }

  Future<Map<String, String>> _getPatientHcPartyKeysForDelegate(String delegateId) async {
    try {
      return await (patientApi.rawGetPatientHcPartyKeysForDelegate(delegateId)) ?? {};
    } on ApiException {
      return {};
    }
  }

  Future<Map<String, String>> _getDeviceHcPartyKeysForDelegate(String delegateId) async {
    try {
      return await (deviceApi.getDeviceHcPartyKeysForDelegate(delegateId)) ?? {};
    } on ApiException {
      return {};
    }
  }

  Future<DataOwnerDto?> updateDataOwnerWithNewDelegateKeyPair(String dataOwnerId, Map<String, List<String>> newKeyPair) async {
    return Future.wait([
      _updateHcpWithNewDelegateKeyPair(dataOwnerId, newKeyPair),
      _updatePatientWithNewDelegateKeyPair(dataOwnerId, newKeyPair),
      _updateDeviceWithNewDelegateKeyPair(dataOwnerId, newKeyPair)
    ])
        .then((updatedDataOwners) {
      final validDataOwners = updatedDataOwners.where((dataOwner) => dataOwner != null);
      if (validDataOwners.length > 1) {
        throw FormatException("$dataOwnerId corresponds to multiple data owners");
      }
      return validDataOwners.firstOrNull();
    });
  }

  Future<DataOwnerDto?> _updateHcpWithNewDelegateKeyPair(String hcpId, Map<String, List<String>> newKeyPair) async {
    final hcp = await _getHcp(hcpId);
    if (hcp == null) {
      return null;
    }

    final updatedHcp = await _updateHcp(hcp.also((that) {
      that.hcPartyKeys = that.hcPartyKeys
        ..addAll(newKeyPair);
    }));

    return updatedHcp == null ? null : DataOwnerDto(DataOwnerType.hcp, hcpId, updatedHcp.hcPartyKeys, publicKey: updatedHcp.publicKey, parentId: updatedHcp.parentId);
  }

  Future<HealthcarePartyDto?> _updateHcp(HealthcarePartyDto hcp) {
    final updatedHcp = healthcarePartyApi.modifyHealthcareParty(hcp);
    hcParties[hcp.id] = updatedHcp;
    return updatedHcp;
  }

  Future<DataOwnerDto?> _updatePatientWithNewDelegateKeyPair(String patientId, Map<String, List<String>> newKeyPair) async {
    final patient = await _getPatient(patientId);
    if (patient == null) {
      return null;
    }

    final updatedPatient = await _updatePatient(patient.also((that) {
      that.hcPartyKeys = that.hcPartyKeys
        ..addAll(newKeyPair);
    }));

    return updatedPatient == null ? null : DataOwnerDto(DataOwnerType.patient, patientId, updatedPatient.hcPartyKeys, publicKey: updatedPatient.publicKey);
  }

  Future<PatientDto?> _updatePatient(PatientDto patient) {
    final updatedPatient = patientApi.rawModifyPatient(patient);
    patients[patient.id] = updatedPatient;
    return updatedPatient;
  }

  Future<DataOwnerDto?> _updateDeviceWithNewDelegateKeyPair(String deviceId, Map<String, List<String>> newKeyPair) async {
    final device = await _getDevice(deviceId);
    if (device == null) {
      return null;
    }

    final updatedDevice = await _updateDevice(device.also((that) {
      that.hcPartyKeys = that.hcPartyKeys
        ..addAll(newKeyPair);
    }));

    return updatedDevice == null ? null : DataOwnerDto(DataOwnerType.device, deviceId, updatedDevice.hcPartyKeys, publicKey: updatedDevice.publicKey, parentId: updatedDevice.parentId);
  }

  Future<DeviceDto?> _updateDevice(DeviceDto device) {
    final updatedDevice = deviceApi.updateDevice(device);
    devices[device.id] = updatedDevice;
    return updatedDevice;
  }

  Future<DataOwnerDto?> getDataOwner(String dataOwnerId) async {
    return Future.wait([
      _getHcpDataOwner(dataOwnerId),
      _getPatientDataOwner(dataOwnerId),
      _getDeviceDataOwner(dataOwnerId)
    ]).then((foundDataOwners) {
      final validDataOwners = foundDataOwners.where((dataOwner) => dataOwner != null);
      if (validDataOwners.length > 1) {
        throw FormatException("$dataOwnerId corresponds to multiple data owners");
      }
      return validDataOwners.firstOrNull();
    });
  }

  Future<HealthcarePartyDto?> _getHcp(String hcpId) async {
    try {
      final cachedHcp = hcParties[hcpId];
      return await (cachedHcp != null ? cachedHcp : healthcarePartyApi.getHealthcareParty(hcpId));
    } on ApiException {
      return null;
    }
  }

  Future<DataOwnerDto?> _getHcpDataOwner(String dataOwnerId) async {
    final hcp = await (_getHcp(dataOwnerId));
    return hcp == null ? null : DataOwnerDto(DataOwnerType.hcp, dataOwnerId, hcp.hcPartyKeys, publicKey: hcp.publicKey, parentId: hcp.parentId);
  }

  Future<PatientDto?> _getPatient(String patientId) async {
    try {
      final cachedPatient = patients[patientId];
      return await (cachedPatient != null ? cachedPatient : patientApi.rawGetPatient(patientId));
    } on ApiException {
      return null;
    }
  }

  Future<DataOwnerDto?> _getPatientDataOwner(String dataOwnerId) async {
    final patient = await (_getPatient(dataOwnerId));
    return patient == null ? null : DataOwnerDto(DataOwnerType.patient, dataOwnerId, patient.hcPartyKeys, publicKey: patient.publicKey);
  }

  Future<DeviceDto?> _getDevice(String deviceId) async {
    try {
      final cachedDevice = devices[deviceId];
      return await (cachedDevice != null ? cachedDevice : deviceApi.getDevice(deviceId));
    } on ApiException {
      return null;
    }
  }

  Future<DataOwnerDto?> _getDeviceDataOwner(String dataOwnerId) async {
    final device = await (_getDevice(dataOwnerId));
    return device == null ? null : DataOwnerDto(DataOwnerType.device, dataOwnerId, device.hcPartyKeys, publicKey: device.publicKey, parentId: device.parentId);
  }
}

class DataOwnerDto {
  DataOwnerDto(this.type, this.dataOwnerId, this.hcPartyKeys, {this.publicKey = null, this.parentId = null});

  final DataOwnerType type;
  final String dataOwnerId;
  final Map<String, List<String>> hcPartyKeys;
  final String? publicKey;
  final String? parentId;
}

enum DataOwnerType {
  hcp,
  device,
  patient
}