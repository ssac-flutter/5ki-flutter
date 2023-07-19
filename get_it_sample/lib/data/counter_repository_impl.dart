import 'package:get_it_sample/data/counter.dart';
import 'package:get_it_sample/data/counter_repository.dart';

class CounterRepositoryImpl implements CounterRepository {
  final Counter counter;

  CounterRepositoryImpl(this.counter);

  @override
  Counter getCounter() {
    return counter;
  }
}
