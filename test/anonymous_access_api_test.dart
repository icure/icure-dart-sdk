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


/// tests for AnonymousAccessApi
void main() {
  final instance = AnonymousAccessApi();

  group('tests for AnonymousAccessApi', () {
    // Get Availabilities for HCP and appointmentType
    //
    // The start of the slot is returned in YYYYDDMMHHmmss format and only slots belonging to public time tables are returned.
    //
    //Future<List<int>> getAvailabilitiesByPeriodAndCalendarItemTypeId(String groupId, String userId, String getCalendarItemTypeId, int startDate, int endDate, String hcpId, { int limit }) async
    test('test getAvailabilitiesByPeriodAndCalendarItemTypeId', () async {
      // TODO
    });

    // List Calendar Item types for a provided group id and user id
    //
    // Returns a list of Calendar Item types. In order to be returned, the Calendar Item Type must be linked to a time table enclosed in an Agenda for which an anonymous right has been set (a Right with read permission and null user)
    //
    //Future<List<CalendarItemTypeDto>> listAppointmentTypesForUser(String groupId, String userId, int startDate, int endDate) async
    test('test listAppointmentTypesForUser', () async {
      // TODO
    });

    // List healthcare parties for a provided group id
    //
    // Returns a list of Users/healthcare parties contained in the group owning the providing id. In order to be returned, a healthcare party needs to be linked to a user an this user must have a property 'org.taktik.icure.public' set to a boolean true.
    //
    //Future<List<UserDto>> listHealthcarePartiesInGroup(String groupId) async
    test('test listHealthcarePartiesInGroup', () async {
      // TODO
    });

  });
}
