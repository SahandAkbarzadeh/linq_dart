import 'dart:collection' show HashSet;

import 'package:linq/src/interfaces.dart';

export 'dart:collection';

Map<TKey, TSource> toMap<TSource, TKey>(
  Iterable<TSource> source,
  TKey Function(TSource a) keySelector, {
  EqualityComparer<TKey> comparer = null,
}) {
  assert(false, "Not implemented");
}

Map<TKey, TElement> toMap2<TSource, TKey, TElement>(
  Iterable<TSource> source,
  TKey Function(TSource a) keySelector,
  TElement Function(TSource a) elementSelector, {
  EqualityComparer<TKey> comparer = null,
}) {
  assert(false, "Not implemented");
}

HashSet<TSource> toHashSet<TSource>(
  Iterable<TSource> source, {
  EqualityComparer<TSource> comparer = null,
}) {
  assert(false, "Not implemented");
}
