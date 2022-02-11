// @dart=2.12

part of icure_dart_sdk.api;

class ContactByHcPartyFilter extends AbstractFilterDto<ContactDto> {
  ContactByHcPartyFilter({this.desc, this.hcpId});

  @override String? desc;
  String? hcpId;
}
