// @dart=2.12
part of openapi.api;


class ContactByHcPartyPatientTagCodeDateFilter extends AbstractFilterDto<ContactDto> {
  @override String? desc;
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
