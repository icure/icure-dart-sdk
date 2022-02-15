// @dart=2.12
part of icure_dart_sdk.api;

class AndPredicate extends Predicate {
  List<Predicate> predicates = [];

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString();
    json[r'predicates'] = predicates;

    return json;
  }

}
