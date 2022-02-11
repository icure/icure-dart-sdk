// @dart=2.12

part of icure_dart_sdk.api;

class ComplementFilter<O> extends AbstractFilterDto<O> {
  @override
  String? desc;
  AbstractFilterDto<O>? superSet;
  AbstractFilterDto<O>? subSet;
}
