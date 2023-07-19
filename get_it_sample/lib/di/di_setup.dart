import 'package:get_it/get_it.dart';
import 'package:get_it_sample/data/counter.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Counter>(Counter());
}