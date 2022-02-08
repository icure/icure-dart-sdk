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


/// tests for EntityTemplateApi
void main() {
  final instance = EntityTemplateApi();

  group('tests for EntityTemplateApi', () {
    // Create a EntityTemplate
    //
    // Type, EntityTemplate and Version are required.
    //
    //Future<EntityTemplateDto> createEntityTemplate(EntityTemplateDto entityTemplateDto) async
    test('test createEntityTemplate', () async {
      // TODO
    });

    // Create a batch of entityTemplates
    //
    // Returns the modified entityTemplates.
    //
    //Future<List<EntityTemplateDto>> createEntityTemplates(List<EntityTemplateDto> entityTemplateDto) async
    test('test createEntityTemplates', () async {
      // TODO
    });

    // Delete entity templates
    //
    //Future<List<DocIdentifier>> deleteEntityTemplate(ListOfIdsDto listOfIdsDto) async
    test('test deleteEntityTemplate', () async {
      // TODO
    });

    // Finding entityTemplates by entityTemplate, type and version with pagination.
    //
    // Returns a list of entityTemplates matched with given input.
    //
    //Future<List<EntityTemplateDto>> findAllEntityTemplatesByKeyword(String type, String keyword, { bool includeEntities }) async
    test('test findAllEntityTemplatesByKeyword', () async {
      // TODO
    });

    // Get a entityTemplate
    //
    // Get a entityTemplate based on ID or (entityTemplate,type,version) as query strings. (entityTemplate,type,version) is unique.
    //
    //Future<EntityTemplateDto> getEntityTemplate(String entityTemplateId) async
    test('test getEntityTemplate', () async {
      // TODO
    });

    // Get a list of entityTemplates by ids
    //
    // Keys must be delimited by coma
    //
    //Future<List<EntityTemplateDto>> getEntityTemplates(ListOfIdsDto listOfIdsDto) async
    test('test getEntityTemplates', () async {
      // TODO
    });

    // Finding entityTemplates by entityTemplate, type and version with pagination.
    //
    // Returns a list of entityTemplates matched with given input.
    //
    //Future<List<EntityTemplateDto>> listAllEntityTemplatesBy(String type, { String searchString, bool includeEntities }) async
    test('test listAllEntityTemplatesBy', () async {
      // TODO
    });

    // Finding entityTemplates by userId, entityTemplate, type and version with pagination.
    //
    // Returns a list of entityTemplates matched with given input.
    //
    //Future<List<EntityTemplateDto>> listEntityTemplatesBy(String userId, String type, { String searchString, bool includeEntities }) async
    test('test listEntityTemplatesBy', () async {
      // TODO
    });

    // Finding entityTemplates by userId, type and keyword.
    //
    // Returns a list of entityTemplates matched with given input.
    //
    //Future<List<EntityTemplateDto>> listEntityTemplatesByKeyword(String userId, String type, String keyword, { bool includeEntities }) async
    test('test listEntityTemplatesByKeyword', () async {
      // TODO
    });

    // Modify a entityTemplate
    //
    // Modification of (type, entityTemplate, version) is not allowed.
    //
    //Future<EntityTemplateDto> modifyEntityTemplate(EntityTemplateDto entityTemplateDto) async
    test('test modifyEntityTemplate', () async {
      // TODO
    });

    // Modify a batch of entityTemplates
    //
    // Returns the modified entityTemplates.
    //
    //Future<List<EntityTemplateDto>> modifyEntityTemplates(List<EntityTemplateDto> entityTemplateDto) async
    test('test modifyEntityTemplates', () async {
      // TODO
    });

  });
}
