import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:github_login/domain/social_login.dart';

class NaverLogin implements SocialLogin {
  @override
  Future<bool> login() async {
    try {
      await FlutterNaverLogin.logIn();
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> logout() async {
    try {
      await FlutterNaverLogin.logOutAndDeleteToken();
      return true;
    } catch (e) {
      return false;
    }
  }
}
