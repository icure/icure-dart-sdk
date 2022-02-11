// @dart=2.12
part of icure_dart_sdk.api;

class FilterChain<O> {
  FilterChain(this.filter);

  AbstractFilterDto<O> filter;
  Predicate? predicate;
}
