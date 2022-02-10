// @dart=2.12
part of openapi.api;


class ServiceByHcPartyFilter extends AbstractFilterDto<ServiceDto> {
  @override String? desc;
  String? hcpId;
}
