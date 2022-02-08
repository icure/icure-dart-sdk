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


/// tests for ClassificationTemplateApi
void main() {
  final instance = ClassificationTemplateApi();

  group('tests for ClassificationTemplateApi', () {
    // Create a classification Template with the current user
    //
    // Returns an instance of created classification Template.
    //
    //Future<ClassificationTemplateDto> createClassificationTemplate(ClassificationTemplateDto classificationTemplateDto) async
    test('test createClassificationTemplate', () async {
      // TODO
    });

    // Delete classification Templates.
    //
    // Response is a set containing the ID's of deleted classification Templates.
    //
    //Future<List<DocIdentifier>> deleteClassificationTemplates(ListOfIdsDto listOfIdsDto) async
    test('test deleteClassificationTemplates', () async {
      // TODO
    });

    // List all classification templates with pagination
    //
    // Returns a list of classification templates.
    //
    //Future<PaginatedListClassificationTemplateDto> findClassificationTemplatesBy({ String startKey, String startDocumentId, int limit }) async
    test('test findClassificationTemplatesBy', () async {
      // TODO
    });

    // Get a classification Template
    //
    //Future<ClassificationTemplateDto> getClassificationTemplate(String classificationTemplateId) async
    test('test getClassificationTemplate', () async {
      // TODO
    });

    // Get a list of classifications Templates
    //
    // Ids are seperated by a coma
    //
    //Future<List<ClassificationTemplateDto>> getClassificationTemplateByIds(String ids) async
    test('test getClassificationTemplateByIds', () async {
      // TODO
    });

    // List classification Templates found By Healthcare Party and secret foreign keyelementIds.
    //
    // Keys hast to delimited by coma
    //
    //Future<List<ClassificationTemplateDto>> listClassificationTemplatesByHCPartyPatientForeignKeys(String hcPartyId, String secretFKeys) async
    test('test listClassificationTemplatesByHCPartyPatientForeignKeys', () async {
      // TODO
    });

    // Modify a classification Template
    //
    // Returns the modified classification Template.
    //
    //Future<ClassificationTemplateDto> modifyClassificationTemplate(ClassificationTemplateDto classificationTemplateDto) async
    test('test modifyClassificationTemplate', () async {
      // TODO
    });

    // Delegates a classification Template to a healthcare party
    //
    // It delegates a classification Template to a healthcare party (By current healthcare party). Returns the element with new delegations.
    //
    //Future<ClassificationTemplateDto> newClassificationTemplateDelegations(String classificationTemplateId, List<DelegationDto> delegationDto) async
    test('test newClassificationTemplateDelegations', () async {
      // TODO
    });

  });
}
