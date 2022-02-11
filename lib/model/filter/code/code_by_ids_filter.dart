// @dart=2.12
part of icure_dart_sdk.api;


class CodeByIdsFilter extends AbstractFilterDto<CodeDto> {
  @override String? desc;
  Set<String> ids = {};
}
