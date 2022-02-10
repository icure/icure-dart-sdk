// @dart=2.12

part of openapi.api;


class ComplementFilter<O> extends AbstractFilterDto<O> {
  @override String? desc;
  AbstractFilterDto<O>? superSet;
  AbstractFilterDto<O>? subSet;
}
