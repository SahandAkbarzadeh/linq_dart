import 'package:linq/src/interfaces.dart';

abstract class OrderedIterable<TSource> extends Iterable<TSource> {}

OrderedIterable<TSource> orderBy<TSource, TKey>(
  Iterable<TSource> source,
  TKey Function(TSource a) keySelector, {
  Comparer<TSource> comparer,
}) {
  assert(false, "Not implemented");
}

OrderedIterable<TSource> orderByDescending<TSource, TKey>(
  Iterable<TSource> source,
  TKey Function(TSource a) keySelector, {
  Comparer<TSource> comparer,
}) {
  assert(false, "Not implemented");
}

OrderedIterable<TSource> thenBy<TSource, TKey>(
  Iterable<TSource> source,
  TKey Function(TSource a) keySelector, {
  Comparer<TSource> comparer,
}) {
  assert(false, "Not implemented");
}

OrderedIterable<TSource> thenByDescending<TSource, TKey>(
  Iterable<TSource> source,
  TKey Function(TSource a) keySelector, {
  Comparer<TSource> comparer,
}) {
  assert(false, "Not implemented");
}
