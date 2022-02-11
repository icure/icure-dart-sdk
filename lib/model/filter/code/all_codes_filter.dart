// @dart=2.12

part of icure_dart_sdk.api;

class AllCodesFilter extends AbstractFilterDto<CodeDto> {
  AllCodesFilter({this.desc});

  @override
  String? desc;
}
