// @dart=2.12
part of icure_dart_sdk.api;

class HealthElementByHcPartyFilter extends AbstractFilterDto<HealthElementDto> {
  HealthElementByHcPartyFilter({
    this.desc, this.hcpId
  });

  @override
  String? desc;
  String? hcpId;
}
