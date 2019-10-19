import 'package:linq/linq.dart' as f;

extension LinqAggregateExtensions<E> on Iterable<E> {
  bool any({
    bool Function(E a) predicate,
  }) =>
      f.any(this, predicate: predicate);

  bool all({
    bool Function(E a) predicate,
  }) =>
      f.all(this, predicate: predicate);
}
