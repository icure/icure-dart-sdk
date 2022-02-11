// @dart=2.12

part of icure_dart_sdk.api;

class AllUsersFilter extends AbstractFilterDto<UserDto> {
  AllUsersFilter({this.desc});

  @override
  String? desc;
}
