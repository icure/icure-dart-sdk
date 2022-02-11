// @dart=2.12

part of icure_dart_sdk.api;


class IntersectionFilter<O> extends AbstractFilterDto<O> {
  @override String? desc;
  List<AbstractFilterDto<O>> filters = [];
}
