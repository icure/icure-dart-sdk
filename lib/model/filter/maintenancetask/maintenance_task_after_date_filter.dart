// @dart=2.12

part of icure_dart_sdk.api;

class MaintenanceTaskAfterDateFilter extends AbstractFilterDto<MaintenanceTaskDto> {
  MaintenanceTaskAfterDateFilter({this.desc, this.date});

  @override
  String? desc;
  int? date;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString().let((type) {
      final regExp = new RegExp(r'([A-Za-z0-9]*)(<.>)?');
      return regExp.firstMatch(type)!.group(1);
    });
    if (desc != null) {
      json[r'desc'] = desc;
    }
    if (date != null) {
      json[r'date'] = date;
    }
    return json;
  }
}