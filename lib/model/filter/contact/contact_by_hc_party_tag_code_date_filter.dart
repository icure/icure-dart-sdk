// @dart=2.12
part of icure_dart_sdk.api;

class ContactByHcPartyTagCodeDateFilter extends AbstractFilterDto<ContactDto> {
  @override
  String? desc;
  String? healthcarePartyId;
  String? tagType;
  String? tagCode;
  String? codeType;
  String? codeCode;
  int? startOfContactOpeningDate;
  int? endOfContactOpeningDate;
}
