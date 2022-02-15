// @dart=2.12
part of icure_dart_sdk.api;

class FilterChain<O> {
  FilterChain(this.filter);

  AbstractFilterDto<O> filter;
  Predicate? predicate;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString();
    json[r'filter'] = filter;
    if (predicate != null) {
      json[r'predicate'] = predicate;
    }
    return json;
  }
}
