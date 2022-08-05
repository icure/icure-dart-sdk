// @dart=2.12

part of icure_dart_sdk.api;

class MaintenanceTaskByIdsFilter extends AbstractFilterDto<MaintenanceTaskDto> {
  MaintenanceTaskByIdsFilter({this.desc, this.ids = const {}});

  @override
  String? desc;
  Set<String> ids;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString().let((type) {
      final regExp = new RegExp(r'([A-Za-z0-9]*)(<.>)?');
      return regExp.firstMatch(type)!.group(1);
    });
    if (desc != null) {
      json[r'desc'] = desc;
    }
    json[r'ids'] = ids.toList();
    return json;
  }
}
