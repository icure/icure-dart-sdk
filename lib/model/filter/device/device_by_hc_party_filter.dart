// @dart=2.12
part of icure_dart_sdk.api;

class DeviceByHcPartyFilter extends AbstractFilterDto<DeviceDto> {
  DeviceByHcPartyFilter({this.desc, this.responsibleId});

  @override
  String? desc;
  String? responsibleId;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString();
    if (desc != null) {
      json[r'desc'] = desc;
    }
    if (responsibleId != null) {
      json[r'responsibleId'] = responsibleId;
    }
    return json;
  }


}
