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


/// tests for FormApi
void main() {
  final instance = FormApi();

  group('tests for FormApi', () {
    // Create a form with the current user
    //
    // Returns an instance of created form.
    //
    //Future<FormDto> createForm(FormDto formDto) async
    test('test createForm', () async {
      // TODO
    });

    // Create a form template with the current user
    //
    // Returns an instance of created form template.
    //
    //Future<FormTemplateDto> createFormTemplate(FormTemplateDto formTemplateDto) async
    test('test createFormTemplate', () async {
      // TODO
    });

    // Create a batch of forms
    //
    // Returns the created forms.
    //
    //Future<List<FormDto>> createForms(List<FormDto> formDto) async
    test('test createForms', () async {
      // TODO
    });

    // Delete a form template
    //
    //Future<DocIdentifier> deleteFormTemplate(String formTemplateId) async
    test('test deleteFormTemplate', () async {
      // TODO
    });

    // Delete forms.
    //
    // Response is a set containing the ID's of deleted forms.
    //
    //Future<List<DocIdentifier>> deleteForms(ListOfIdsDto listOfIdsDto) async
    test('test deleteForms', () async {
      // TODO
    });

    // Get a list of forms by parents ids
    //
    // Keys must be delimited by coma
    //
    //Future<List<FormDto>> getChildrenForms(String formId, String hcPartyId) async
    test('test getChildrenForms', () async {
      // TODO
    });

    // Gets a form
    //
    //Future<FormDto> getForm(String formId) async
    test('test getForm', () async {
      // TODO
    });

    // Gets the most recent form with the given logicalUuid
    //
    //Future<FormDto> getFormByLogicalUuid(String logicalUuid) async
    test('test getFormByLogicalUuid', () async {
      // TODO
    });

    // Gets the most recent form with the given uniqueId
    //
    //Future<FormDto> getFormByUniqueId(String uniqueId) async
    test('test getFormByUniqueId', () async {
      // TODO
    });

    // Gets a form template by guid
    //
    //Future<FormTemplateDto> getFormTemplate(String formTemplateId) async
    test('test getFormTemplate', () async {
      // TODO
    });

    // Gets all form templates for current user
    //
    //Future<List<FormTemplateDto>> getFormTemplates({ bool loadLayout }) async
    test('test getFormTemplates', () async {
      // TODO
    });

    // Gets a form template
    //
    //Future<List<FormTemplateDto>> getFormTemplatesByGuid(String formTemplateGuid, String specialityCode) async
    test('test getFormTemplatesByGuid', () async {
      // TODO
    });

    // Get a list of forms by ids
    //
    // Keys must be delimited by coma
    //
    //Future<List<FormDto>> getForms(ListOfIdsDto listOfIdsDto) async
    test('test getForms', () async {
      // TODO
    });

    // Gets all forms with given logicalUuid
    //
    //Future<List<FormDto>> getFormsByLogicalUuid(String logicalUuid) async
    test('test getFormsByLogicalUuid', () async {
      // TODO
    });

    // Gets all forms by uniqueId
    //
    //Future<List<FormDto>> getFormsByUniqueId(String uniqueId) async
    test('test getFormsByUniqueId', () async {
      // TODO
    });

    // Gets all form templates
    //
    //Future<List<FormTemplateDto>> listFormTemplatesBySpeciality(String specialityCode, { bool loadLayout }) async
    test('test listFormTemplatesBySpeciality', () async {
      // TODO
    });

    // List forms found By Healthcare Party and secret foreign keys.
    //
    // Keys must be delimited by coma
    //
    //Future<List<FormDto>> listFormsByHCPartyAndPatientForeignKeys(String hcPartyId, String secretFKeys, { String healthElementId, String planOfActionId, String formTemplateId }) async
    test('test listFormsByHCPartyAndPatientForeignKeys', () async {
      // TODO
    });

    // List form stubs found By Healthcare Party and secret foreign keys.
    //
    // Keys must be delimited by coma
    //
    //Future<List<IcureStubDto>> listFormsDelegationsStubsByHCPartyAndPatientForeignKeys(String hcPartyId, String secretFKeys) async
    test('test listFormsDelegationsStubsByHCPartyAndPatientForeignKeys', () async {
      // TODO
    });

    // Modify a form
    //
    // Returns the modified form.
    //
    //Future<FormDto> modifyForm(FormDto formDto) async
    test('test modifyForm', () async {
      // TODO
    });

    // Modify a batch of forms
    //
    // Returns the modified forms.
    //
    //Future<List<FormDto>> modifyForms(List<FormDto> formDto) async
    test('test modifyForms', () async {
      // TODO
    });

    // Delegates a form to a healthcare party
    //
    // It delegates a form to a healthcare party. Returns the form with the new delegations.
    //
    //Future<FormDto> newFormDelegations(String formId, List<DelegationDto> delegationDto) async
    test('test newFormDelegations', () async {
      // TODO
    });

    // Update delegations in form.
    //
    // Keys must be delimited by coma
    //
    //Future<List<IcureStubDto>> setFormsDelegations(List<IcureStubDto> icureStubDto) async
    test('test setFormsDelegations', () async {
      // TODO
    });

    // Update a form template's layout
    //
    //Future<String> setTemplateAttachmentMulti(String formTemplateId, String attachment) async
    test('test setTemplateAttachmentMulti', () async {
      // TODO
    });

    // Modify a form template with the current user
    //
    // Returns an instance of created form template.
    //
    //Future<FormTemplateDto> updateFormTemplate(String formTemplateId, FormTemplateDto formTemplateDto) async
    test('test updateFormTemplate', () async {
      // TODO
    });

  });
}
