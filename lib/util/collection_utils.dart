extension MapExtension<E, F> on Map<E, F> {
  bool any(bool predicate(MapEntry<E, F> element)) {
    return this.entries.any((element) => predicate(element));
  }
}

extension IterableExtension<E> on Iterable<E> {
  E? firstOrNull() => this.isNotEmpty ? this.first : null;
}