// @dart=2.12

part of openapi.api;


class UnionFilter<O> extends AbstractFilterDto<O> {
  @override String? desc;
  List<AbstractFilterDto<O>>filters = [];
}
