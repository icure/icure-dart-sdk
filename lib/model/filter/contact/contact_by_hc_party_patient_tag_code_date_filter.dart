// @dart=2.12
part of icure_dart_sdk.api;

class ContactByHcPartyPatientTagCodeDateFilter extends AbstractFilterDto<ContactDto> {
  ContactByHcPartyPatientTagCodeDateFilter({this.desc, this.healthcarePartyId, this.patientSecretForeignKey, this.patientSecretForeignKeys,
    this.tagType, this.tagCode, this.codeType, this.codeCode, this.startServiceValueDate, this.endServiceValueDate});

  @override
  String? desc;
  String? healthcarePartyId;
  String? patientSecretForeignKey;
  List<String>? patientSecretForeignKeys;
  String? tagType;
  String? tagCode;
  String? codeType;
  String? codeCode;
  int? startServiceValueDate;
  int? endServiceValueDate;

}
