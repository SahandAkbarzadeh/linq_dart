TSource aggregate<TSource>(
  Iterable<TSource> source,
  TSource Function(TSource a, TSource b) func,
) {
  assert(false, "Not implemented");
}

TAccumulate aggregate2<TSource, TAccumulate>(
  Iterable<TSource> source,
  TAccumulate seed,
  TAccumulate Function(TSource a, TSource b) func,
) {
  assert(false, "Not implemented");
}

TResult aggregate3<TSource, TAccumulate, TResult>(
  Iterable<TSource> source,
  TAccumulate seed,
  TAccumulate Function(TSource a, TSource b) func,
  TResult Function(TAccumulate a) resultSelector,
) {
  assert(false, "Not implemented");
}
