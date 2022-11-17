// @dart=2.16

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'dart:io';

import 'package:icure_dart_sdk/api.dart';
import 'package:test/test.dart';

void main() {

  group("Test for X-Request-Id in API Exception", () {

    test("Should have the X-Request-Id in exception for failed request", () async {
      final String username = Platform.environment["ICURE_USR"]!;
      final String password = Platform.environment["ICURE_PWD"]!;
      final String iCureUrl = Platform.environment["ICURE_URL"]!;

      final client = ApiClient.basic(iCureUrl, username, password);

      try {
        await HealthcarePartyApi(client).getHealthcareParty("I_DO_NOT_EXISTS");
        assert(false, "The request should fail");
      } on ApiException catch(e) {
        assert(e.requestId != null);
      } catch (e) {
        assert(false, "The only Thrown exception should be ApiException");
      }
    });

  });

}