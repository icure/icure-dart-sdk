// @dart=2.12
part of icure_dart_sdk.api;

class ServiceByIdsFilter extends AbstractFilterDto<ServiceDto> {
  ServiceByIdsFilter({this.desc, this.ids = const {}});

  @override
  String? desc;
  Set<String> ids = <String>{};

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString();
    if (desc != null) {
      json[r'desc'] = desc;
    }
    json[r'ids'] = ids.toList();

    return json;
  }

}
