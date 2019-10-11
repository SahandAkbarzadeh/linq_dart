Iterable<TResult> selectMany<TSource, TResult>(
  Iterable<TSource> source,
  Iterable<TResult> Function(TSource a) selector,
) {
  assert(false, "not implemented");
}

Iterable<TResult> selectMany2<TSource, TResult>(
  Iterable<TSource> source,
  Iterable<TResult> Function(TSource a, int index) selector,
) {
  assert(false, "not implemented");
}
