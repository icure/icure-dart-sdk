// @dart=2.12

part of openapi.api;

class ConstantFilter<O> extends AbstractFilterDto<O> {
  @override
  String? desc;
  Set<String> constant = {};
}
