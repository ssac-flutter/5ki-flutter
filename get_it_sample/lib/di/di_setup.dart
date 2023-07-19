import 'package:get_it/get_it.dart';
import 'package:get_it_sample/data/counter.dart';

final getIt = GetIt.instance;

Future<void> setup() async {

  // 싱글턴
  // getIt.registerSingleton<Counter>(Counter());

  // 매번 생성
  getIt.registerFactory<Counter>(() => Counter());
}