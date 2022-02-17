/// tests for UserApi
///
import 'package:icure_dart_sdk/api.dart';
import 'package:icure_dart_sdk/util/collection_utils.dart';
import 'package:test/test.dart';

void main() {
  group('tests for collection utils', () {
    // Assign a healthcare party ID to current user
    //
    // UserDto gets returned.
    //
    //Future<UserDto> assignHealthcareParty(String healthcarePartyId) async
    test('test deepJson', () async {
      final p = new PatientDto(id:'1', delegations: {'1':{DelegationDto(owner:'0',delegatedTo:'1',key:'123')}});
      final pp = toJsonDeep(p);
      expect(PatientDto.fromJson(pp), p);
    });
  });
}
