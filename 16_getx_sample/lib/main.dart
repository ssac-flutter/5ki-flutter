import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/domain/counter_repository.dart';
import 'package:getx_sample/presentation/main_screen.dart';

import 'data/counter.dart';
import 'presentation/main_view_model.dart';

void main() {
  final counter = Get.put(Counter());
  Get.put(CounterRepository(counter));
  Get.put(MainViewModel());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final viewModel = Get.find<MainViewModel>();
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Obx(() => MainScreen(
            onEvent: () {
              viewModel.increment();
            },
            count: viewModel.count.value,
          )),
    );
  }
}
