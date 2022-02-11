// @dart=2.12
part of icure_dart_sdk.api;

class ContactByServiceIdsFilter extends AbstractFilterDto<ContactDto> {
  ContactByServiceIdsFilter({this.ids = const {}, this.desc});

  @override
  String? desc;
  Set<String> ids = {};
}
