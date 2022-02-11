// @dart=2.12
part of icure_dart_sdk.api;

class ServiceByHcPartyTagCodeDateFilter extends AbstractFilterDto<ServiceDto> {
  ServiceByHcPartyTagCodeDateFilter({
    this.desc,
    this.healthcarePartyId,
    this.patientSecretForeignKey,
    this.tagType,
    this.tagCode,
    this.codeType,
    this.codeCode,
    this.startValueDate,
    this.endValueDate
  });

  @override
  String? desc;
  String? healthcarePartyId;
  String? patientSecretForeignKey;
  String? tagType;
  String? tagCode;
  String? codeType;
  String? codeCode;
  int? startValueDate;
  int? endValueDate;
}
