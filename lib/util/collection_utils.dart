extension MapExtension<E, F> on Map<E, F> {
  bool any(bool predicate(MapEntry<E, F> element)) {
    return this.entries.any((element) => predicate(element));
  }
}

extension IterableExtension<E> on Iterable<E> {
  E? firstOrNull() => this.isNotEmpty ? this.first : null;
}


dynamic toJsonDeep(dynamic o) {
  if (o is num) {
    return o;
  } else if (o is String) {
    return o;
  } else if (o is bool) {
    return o;
  } else if (o is Iterable) {
    return (o as Iterable).map((it) => toJsonDeep(it)).toList();
  } else if (o is Map) {
    return (o as Map).map((k, v) => MapEntry(k, toJsonDeep(v)));
  } else {
    return toJsonDeep((o as dynamic).toJson());
  }
}
