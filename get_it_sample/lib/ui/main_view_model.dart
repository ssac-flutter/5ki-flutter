import 'package:flutter/material.dart';

class MainViewModel with ChangeNotifier {
  int count = 0;

  void increment() {
    count++;
    notifyListeners();
  }
}
