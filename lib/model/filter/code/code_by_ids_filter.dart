// @dart=2.12
part of openapi.api;


class CodeByIdsFilter extends AbstractFilterDto<CodeDto> {
  @override String? desc;
  Set<String> ids = {};
}
