// @dart=2.12
part of openapi.api;



class UserByIdsFilter extends AbstractFilterDto<UserDto> {
  @override String? desc;
  Set<String> ids = {};
}
