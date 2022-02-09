extension MapExtension<E, F> on Map<E, F> {
  bool any(bool predicate(MapEntry<E, F> element)) {
    return this.entries.any((element) => predicate(element));
  }
}

extension ListExtension<E> on List<E> {
  E? firstOrNull() => this.isNotEmpty ? this.first : null;
}

extension SetExtension<E> on Set<E> {
  E? firstOrNull() => this.isNotEmpty ? this.first : null;
}
