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


/// tests for ClassificationApi
void main() {
  final instance = ClassificationApi();

  group('tests for ClassificationApi', () {
    // Create a classification with the current user
    //
    // Returns an instance of created classification Template.
    //
    //Future<ClassificationDto> createClassification(ClassificationDto classificationDto) async
    test('test createClassification', () async {
      // TODO
    });

    // Delete classification Templates.
    //
    // Response is a set containing the ID's of deleted classification Templates.
    //
    //Future<List<DocIdentifier>> deleteClassifications(ListOfIdsDto listOfIdsDto) async
    test('test deleteClassifications', () async {
      // TODO
    });

    // List classification Templates found By Healthcare Party and secret foreign keyelementIds.
    //
    // Keys hast to delimited by coma
    //
    //Future<List<ClassificationDto>> findClassificationsByHCPartyPatientForeignKeys(String hcPartyId, String secretFKeys) async
    test('test findClassificationsByHCPartyPatientForeignKeys', () async {
      // TODO
    });

    // Get a classification Template
    //
    //Future<ClassificationDto> getClassification(String classificationId) async
    test('test getClassification', () async {
      // TODO
    });

    // Get a list of classifications
    //
    // Ids are seperated by a coma
    //
    //Future<List<ClassificationDto>> getClassificationByHcPartyId(String ids) async
    test('test getClassificationByHcPartyId', () async {
      // TODO
    });

    // Modify a classification Template
    //
    // Returns the modified classification Template.
    //
    //Future<ClassificationDto> modifyClassification(ClassificationDto classificationDto) async
    test('test modifyClassification', () async {
      // TODO
    });

    // Delegates a classification to a healthcare party
    //
    // It delegates a classification to a healthcare party (By current healthcare party). Returns the element with new delegations.
    //
    //Future<ClassificationDto> newClassificationDelegations(String classificationId, List<DelegationDto> delegationDto) async
    test('test newClassificationDelegations', () async {
      // TODO
    });

    // Update delegations in classification
    //
    // Keys must be delimited by coma
    //
    //Future<List<IcureStubDto>> setClassificationsDelegations(List<IcureStubDto> icureStubDto) async
    test('test setClassificationsDelegations', () async {
      // TODO
    });

  });
}
