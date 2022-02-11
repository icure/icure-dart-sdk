// @dart=2.12
part of icure_dart_sdk.api;


class DeviceByIdsFilter extends AbstractFilterDto<DeviceDto> {
  @override String? desc;
  Set<String> ids = {};
}

