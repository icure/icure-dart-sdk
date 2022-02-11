// @dart=2.12
part of icure_dart_sdk.api;

class UserByIdsFilter extends AbstractFilterDto<UserDto> {
  UserByIdsFilter({this.desc, this.ids = const {}});

  @override
  String? desc;
  Set<String> ids = {};
}
