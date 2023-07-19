import 'package:flutter/material.dart';
import 'package:get_it_sample/data/counter.dart';
import 'package:get_it_sample/di/di_setup.dart';

class MainViewModel with ChangeNotifier {
  final Counter counter = getIt<Counter>();

  int get count => counter.count;

  void increment() {
    counter.count++;
    notifyListeners();
  }
}
