// @dart=2.12
part of icure_dart_sdk.api;

class ContactByServiceIdsFilter extends AbstractFilterDto<ContactDto> {
  ContactByServiceIdsFilter({required this.ids, this.desc});

  @override
  String? desc;
  Set<String> ids = {};
}
