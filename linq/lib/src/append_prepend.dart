TSource append<TSource>(
  Iterable<TSource> source,
  TSource element,
) {
  assert(false, "Not implemented");
}

TSource prepend<TSource>(
  Iterable<TSource> source,
  TSource element,
) {
  assert(false, "Not implemented");
}

/**
 * Represents the insertion of one or more items before or after an [Itrator]
 * 
 *
*/
class _AppendPrependIterator<TSource> extends Iterator<TSource> {
  @override
  TSource get current => null;

  @override
  bool moveNext() {
    return null;
  }
}
