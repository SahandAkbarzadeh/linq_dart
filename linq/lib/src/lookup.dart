import 'package:linq/src/interfaces.dart';
import 'package:linq/src/grouping.dart';

abstract class Lookup<TKey, TElement>
    extends Iterable<Grouping<TKey, TElement>> {}

Lookup<TKey, TSource> toLookup<TSource, TKey>(
  Iterable<TSource> source,
  TKey Function(TSource a) keySelector, {
  EqualityComparer<TKey> comparer = null,
}) {
  assert(false, "Not implemented");
}

Lookup<TKey, TElement> toLookup2<TSource, TKey, TElement>(
  Iterable<TSource> source,
  TKey Function(TSource a) keySelector,
  TElement Function(TSource a) elementSelector, {
  EqualityComparer<TKey> comparer = null,
}) {
  assert(false, "Not implemented");
}
