// @dart=2.12
part of icure_dart_sdk.api;


class ServiceByHcPartyFilter extends AbstractFilterDto<ServiceDto> {
  ServiceByHcPartyFilter({this.desc, this.hcpId});

  @override String? desc;
  String? hcpId;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString().let((type) {
      final regExp = new RegExp(r'([A-Za-z0-9]*)(<.>)?');
      return regExp.firstMatch(type)!.group(1);
    });
    if (desc != null) {
      json[r'desc'] = desc;
    }
    if (hcpId != null) {
      json[r'hcpId'] = hcpId;
    }

    return json;
  }


}
