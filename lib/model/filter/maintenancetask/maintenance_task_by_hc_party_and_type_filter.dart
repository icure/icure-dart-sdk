// @dart=2.12

part of icure_dart_sdk.api;

class MaintenanceTaskByHcPartyAndTypeFilter extends AbstractFilterDto<MaintenanceTaskDto> {
  MaintenanceTaskByHcPartyAndTypeFilter({this.desc, this.healthcarePartyId, this.type});

  @override
  String? desc;
  String? healthcarePartyId;
  String? type;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString().let((type) {
      final regExp = new RegExp(r'([A-Za-z0-9]*)(<.>)?');
      return regExp.firstMatch(type)!.group(1);
    });
    if (desc != null) {
      json[r'desc'] = desc;
    }
    if (healthcarePartyId != null) {
      json[r'healthcarePartyId'] = healthcarePartyId;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    return json;
  }
}
