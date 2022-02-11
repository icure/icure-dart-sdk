// @dart=2.12

part of icure_dart_sdk.api;

class UnionFilter<O> extends AbstractFilterDto<O> {
  UnionFilter({this.desc, this.filters = const []});

  @override
  String? desc;
  List<AbstractFilterDto<O>> filters = [];
}
