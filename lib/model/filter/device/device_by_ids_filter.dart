// @dart=2.12
part of icure_dart_sdk.api;


class DeviceByIdsFilter extends AbstractFilterDto<DeviceDto> {
  DeviceByIdsFilter({this.desc, this.ids = const {}});

  @override String? desc;
  Set<String> ids = {};
}

