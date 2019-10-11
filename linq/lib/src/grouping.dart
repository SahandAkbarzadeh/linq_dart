import 'package:linq/src/interfaces.dart';

abstract class Grouping<TKey, TElement> extends Iterable<TElement> {}

Iterable<Grouping<TKey, TSource>> groupBy<TSource, TKey>(
  Iterable<TSource> source,
  TKey Function(TSource a) keySelector, {
  EqualityComparer<TSource> comparer = null,
}) {
  assert(false, "not implemented");
}

Iterable<Grouping<TKey, TElement>> groupBy2<TSource, TKey, TElement>(
  Iterable<TSource> source,
  TKey Function(TSource a) keySelector,
  TElement Function(TSource a) elementSelector, {
  EqualityComparer<TSource> comparer = null,
}) {
  assert(false, "not implemented");
}

Iterable<TResult> groupBy3<TSource, TKey, TResult, TElement>(
  Iterable<TSource> source,
  TKey Function(TSource a) keySelector,
  TResult Function(TSource a) resultSelector, {
  TResult Function(TSource a) elementSelector,
  EqualityComparer<TSource> comparer = null,
}) {
  assert(false, "not implemented");
}
