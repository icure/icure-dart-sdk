// @dart=2.12
part of icure_dart_sdk.api;

class ServiceByHcPartyTagCodeDateFilter extends AbstractFilterDto<ServiceDto> {
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
