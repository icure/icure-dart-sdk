//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for DeviceApi
void main() {
  final instance = DeviceApi();

  group('tests for DeviceApi', () {
    // Create a device
    //
    // Name, last name, date of birth, and gender are required. After creation of the device and obtaining the ID, you need to create an initial delegation.
    //
    //Future<DeviceDto> createDevice(DeviceDto deviceDto) async
    test('test createDevice', () async {
      // TODO
    });

    // Create devices in bulk
    //
    // Returns the id and _rev of created devices
    //
    //Future<List<IdWithRevDto>> createDevices(List<DeviceDto> deviceDto) async
    test('test createDevices', () async {
      // TODO
    });

    // Create devices in bulk
    //
    // Returns the id and _rev of created devices
    //
    //Future<List<IdWithRevDto>> createDevices1(List<DeviceDto> deviceDto) async
    test('test createDevices1', () async {
      // TODO
    });

    // Delete device.
    //
    // Response contains the id/rev of deleted device.
    //
    //Future<DocIdentifier> deleteDevice(String deviceId) async
    test('test deleteDevice', () async {
      // TODO
    });

    // Delete devices.
    //
    // Response is an array containing the id/rev of deleted devices.
    //
    //Future<List<DocIdentifier>> deleteDevices(ListOfIdsDto listOfIdsDto) async
    test('test deleteDevices', () async {
      // TODO
    });

    // Filter devices for the current user (HcParty) 
    //
    // Returns a list of devices along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
    //
    //Future<PaginatedListDeviceDto> filterDevicesBy(FilterChainDevice filterChainDevice, { String startDocumentId, int limit }) async
    test('test filterDevicesBy', () async {
      // TODO
    });

    // Get Device
    //
    // It gets device administrative data.
    //
    //Future<DeviceDto> getDevice(String deviceId) async
    test('test getDevice', () async {
      // TODO
    });

    // Get devices by id
    //
    // It gets device administrative data.
    //
    //Future<List<DeviceDto>> getDevices(ListOfIdsDto listOfIdsDto) async
    test('test getDevices', () async {
      // TODO
    });

    // Get ids of devices matching the provided filter for the current user (HcParty) 
    //
    //Future<List<String>> matchDevicesBy(AbstractFilterDtoDevice abstractFilterDtoDevice) async
    test('test matchDevicesBy', () async {
      // TODO
    });

    // Modify a device
    //
    // Returns the updated device
    //
    //Future<DeviceDto> updateDevice(DeviceDto deviceDto) async
    test('test updateDevice', () async {
      // TODO
    });

    // Modify devices in bulk
    //
    // Returns the id and _rev of modified devices
    //
    //Future<List<IdWithRevDto>> updateDevices(List<DeviceDto> deviceDto) async
    test('test updateDevices', () async {
      // TODO
    });

    // Modify devices in bulk
    //
    // Returns the id and _rev of modified devices
    //
    //Future<List<IdWithRevDto>> updateDevices1(List<DeviceDto> deviceDto) async
    test('test updateDevices1', () async {
      // TODO
    });

  });
}
