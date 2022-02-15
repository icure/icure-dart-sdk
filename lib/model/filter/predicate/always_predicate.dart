// @dart=2.12
part of icure_dart_sdk.api;

class AlwaysPredicate extends Predicate {
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString();

    return json;
  }

}
