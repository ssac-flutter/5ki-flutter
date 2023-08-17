import 'package:flutter/material.dart';
import 'package:github_login/presentation/login_view_model.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<LoginViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Github 로그인'),
      ),
      body: Center(
        child: switch (viewModel.isLogin) {
          true => ElevatedButton(
              onPressed: () {
                viewModel.logout();
              },
              child: const Text('로그아웃'),
            ),
          false => ElevatedButton(
              onPressed: () {
                viewModel.login();
              },
              child: const Text('로그인'),
            ),
        },
      ),
    );
  }
}
