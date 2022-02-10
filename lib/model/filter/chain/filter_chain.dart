// @dart=2.12
part of openapi.api;

class FilterChain<O> {
  FilterChain(this.filter);

  AbstractFilterDto<O> filter;
  Predicate? predicate;
}
