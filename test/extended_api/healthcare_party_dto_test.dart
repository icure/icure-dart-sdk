
import 'dart:convert';
import 'package:openapi/api.dart';
import "package:test/test.dart";

class A {
  A({required this.a});

  Map<String,List<String>> a = {};
}

void main() {
  group('tests for Hcps', ()
  {
    test('test healthcareParty deserialisation', () async {
      var tmp = jsonDecode('{"a":{"k":["1","2"]}}');
      var a = A(a:tmp[r'a']);
      expect(a.a['a'],['1','2']);

      var hcp1 = HealthcarePartyDto.fromJson({
        'id':'abc', 'hcPartyKeys': {'a':['1','2']}, 'names':[], 'addresses':[], 'languages':[], 'statuses':[], 'statusHistory':[], 'specialityCodes':[], 'sendFormats':[], 'financialInstitutionInformation':[], 'flatRateTarifications':[], 'importedData':{}, 'options':{}, 'properties':[], 'privateKeyShamirPartitions':{}, 'sendFormats':{}
      });

      var hcp2 = HealthcarePartyDto.fromJson(jsonDecode(
          '{"id":"abc", "hcPartyKeys": {"a":["1","2"]},"names":[],"addresses":[],"languages":[],"statuses":[],"statusHistory":[],"specialityCodes":[],"sendFormats":[],"financialInstitutionInformation":[],"flatRateTarifications":[],"importedData":{},"options":{},"properties":[],"privateKeyShamirPartitions":{},"sendFormats":{}}'
      ));
      expect(hcp1!.hcPartyKeys['a'],['1','2']);
      expect(hcp2!.hcPartyKeys['a'],['1','2']);
    });
  });
}
