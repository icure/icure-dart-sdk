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
