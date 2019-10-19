import 'package:linq/linq.dart' as f;

extension LinqAggregateExtensions<E> on Iterable<E> {
  E aggregate(
    E Function(E a, E b) func,
  ) =>
      f.aggregate(this, func);

  TAccumulate aggregate2<TAccumulate>(
    TAccumulate seed,
    TAccumulate Function(E a, E b) func,
  ) =>
      f.aggregate2(this, seed, func);

  aggregate3<TAccumulate, TResult>(
    TAccumulate seed,
    TAccumulate Function(E a, E b) func,
    TResult Function(TAccumulate a) resultSelector,
  ) =>
      f.aggregate3(this, seed, func, resultSelector);
}
