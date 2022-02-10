// @dart=2.12
part of openapi.api;

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
