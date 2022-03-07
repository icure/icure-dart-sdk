// @dart=2.12
part of icure_dart_sdk.api;


class DeviceByIdsFilter extends AbstractFilterDto<DeviceDto> {
  DeviceByIdsFilter({this.desc, this.ids = const {}});

  @override String? desc;
  Set<String> ids = {};

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString().let((type) {
      final regExp = new RegExp(r'([A-Za-z0-9]*)(<.>)?');
      regExp.firstMatch(type);
    });
    if (desc != null) {
      json[r'desc'] = desc;
    }
    json[r'ids'] = ids.toList();

    return json;
  }

}

