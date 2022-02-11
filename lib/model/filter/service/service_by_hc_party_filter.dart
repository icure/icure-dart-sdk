// @dart=2.12
part of icure_dart_sdk.api;


class ServiceByHcPartyFilter extends AbstractFilterDto<ServiceDto> {
  ServiceByHcPartyFilter({this.desc, this.hcpId});

  @override String? desc;
  String? hcpId;
}
