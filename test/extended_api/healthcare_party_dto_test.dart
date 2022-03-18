
import 'dart:convert';
import 'package:icure_dart_sdk/api.dart';
import "package:test/test.dart";

class A {
  A({required this.a});

  Map<String,List<String>> a = {};
}

void main() {
  group('tests for Hcps', () {
    test('test healthcareParty deserialisation', () async {
      var hcp1 = HealthcarePartyDto.fromJson({
        'id':'abc', 'hcPartyKeys': {'a':['1','2']}, 'names':[], 'addresses':[], 'languages':[], 'statuses':[], 'statusHistory':[], 'specialityCodes':[], 'sendFormats':[], 'financialInstitutionInformation':[], 'flatRateTarifications':[], 'importedData':{}, 'options':{}, 'properties':[], 'aesExchangeKeys':{}, 'transferKeys':{}, 'lostHcPartyKeys':{}, 'privateKeyShamirPartitions':{}, 'sendFormats':{}
      });

      var hcp2 = HealthcarePartyDto.fromJson(jsonDecode(
          '{"id":"abc", "hcPartyKeys": {"a":["1","2"]},"names":[],"addresses":[],"languages":[],"statuses":[],"statusHistory":[],"specialityCodes":[],"sendFormats":[],"financialInstitutionInformation":[],"flatRateTarifications":[],"importedData":{},"options":{},"properties":[],"aesExchangeKeys":{}, "transferKeys":{}, "lostHcPartyKeys":{},"privateKeyShamirPartitions":{},"sendFormats":{}}'
      ));
      expect(hcp1!.hcPartyKeys['a'],['1','2']);
      expect(hcp2!.hcPartyKeys['a'],['1','2']);
    });
  });
}
