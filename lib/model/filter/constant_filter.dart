// @dart=2.12

part of icure_dart_sdk.api;

class ConstantFilter<O> extends AbstractFilterDto<O> {
  @override
  String? desc;
  Set<String> constant = {};
}
