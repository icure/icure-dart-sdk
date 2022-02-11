// @dart=2.12

part of icure_dart_sdk.api;

class HealthElementByHcPartyTagCodeFilter extends AbstractFilterDto<HealthElementDto> {
  @override
  String? desc;
  String? healthCarePartyId;
  String? codeType;
  String? codeNumber;
  String? tagType;
  String? tagCode;
  int? status;
}
