import 'package:get_it_sample/data/counter.dart';
import 'package:get_it_sample/data/counter_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CounterRepository)
class CounterRepositoryImpl implements CounterRepository {
  final Counter counter;

  CounterRepositoryImpl(this.counter);

  @override
  Counter getCounter() {
    return counter;
  }
}
