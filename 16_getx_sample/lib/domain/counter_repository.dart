import 'package:getx_sample/data/counter.dart';

class CounterRepository {
  final Counter _counter;

  CounterRepository(this._counter);

  void increment() => _counter.increment();

  int getCount() => _counter.count;
}
