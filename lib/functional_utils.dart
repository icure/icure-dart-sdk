// @dart=2.12
part of openapi.api;

extension ObjectExt<T> on T {
  R let<R>(R Function(T that) op) => op(this as T);
  T also(void Function(T that) op) {
    var self = this as T;
    op(self);
    return self;
  }
}

extension FutureExt<T> on Future<T> {
  Future<T> also(void Function(Future<T> that) op) {
    var self = this as Future<T>;
    op(self);
    return self;
  }
}
