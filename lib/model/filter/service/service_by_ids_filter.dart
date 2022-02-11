// @dart=2.12
part of icure_dart_sdk.api;

class ServiceByIdsFilter extends AbstractFilterDto<ServiceDto> {
  ServiceByIdsFilter({this.desc, this.ids = const {}});

  @override
  String? desc;
  Set<String> ids = <String>{};
}
