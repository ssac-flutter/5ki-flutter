import 'package:flutter/material.dart';
import 'package:github_login/domain/social_login.dart';

class LoginViewModel with ChangeNotifier {
  final SocialLogin _socialLogin;

  LoginViewModel(this._socialLogin);

  bool isLogin = false;

  Future<void> login() async {
    isLogin = await _socialLogin.login();
    notifyListeners();
  }

  Future<void> logout() async {
    isLogin = !(await _socialLogin.logout());
    notifyListeners();
  }
}
