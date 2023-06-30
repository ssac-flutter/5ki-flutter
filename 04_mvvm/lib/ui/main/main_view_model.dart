import 'package:flutter/material.dart';

class MainViewModel {
  // 상태 (변수)
  Color _color = Colors.white;

  Color get color => _color;

  String _buttonText = "Change color";

  String get buttonText => _buttonText;

  // 수정은 메서드 통해서
  void changeRedColor() {
    _color = Colors.red;
    _buttonText = '헬로';
  }

  void login() {

  }
}
