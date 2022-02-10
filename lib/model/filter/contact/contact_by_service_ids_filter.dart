// @dart=2.12
part of openapi.api;

class ContactByServiceIdsFilter extends AbstractFilterDto<ContactDto> {
  ContactByServiceIdsFilter({required this.ids, this.desc});

  @override
  String? desc;
  Set<String> ids = {};
}
