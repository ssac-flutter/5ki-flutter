import 'package:flutter/material.dart';
import 'package:get_it_sample/data/counter.dart';

class MainViewModel with ChangeNotifier {
  final Counter counter;

  MainViewModel(this.counter);

  int get count => counter.count;

  void increment() {
    counter.count++;
    notifyListeners();
  }
}
