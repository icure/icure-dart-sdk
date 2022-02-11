// @dart=2.12
part of icure_dart_sdk.api;

class NotPredicate extends Predicate {
  NotPredicate(this.predicate);

  Predicate predicate;
}
