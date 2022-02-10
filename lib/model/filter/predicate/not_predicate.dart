// @dart=2.12
part of openapi.api;


class NotPredicate extends Predicate {
  NotPredicate(this.predicate);

  Predicate predicate;
}
