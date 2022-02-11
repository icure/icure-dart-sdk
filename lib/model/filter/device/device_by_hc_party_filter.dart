// @dart=2.12
part of icure_dart_sdk.api;

class DeviceByHcPartyFilter extends AbstractFilterDto<DeviceDto> {
  DeviceByHcPartyFilter({this.desc, this.responsibleId});

  @override
  String? desc;
  String? responsibleId;
}
