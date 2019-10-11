import 'package:linq/src/interfaces.dart';

Iterable<TResult> groupJoin<TOuter, TInner, TKey, TResult>(
  Iterable<TOuter> outer,
  Iterable<TInner> inner,
  TKey Function(TOuter a) outerKeySelector,
  TKey Function(TInner a) innerKeySelector,
  TResult Function(TInner a) resultSelector, {
  EqualityComparer<TKey> comparer = null,
}) {
  assert(false, "not implemented");
}
